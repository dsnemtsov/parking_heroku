package ru.yandex.dimas224.e2e;

import ru.yandex.dimas224.UsersUtils;
import ru.yandex.dimas224.bootloader.FirstProjectApplication;
import ru.yandex.dimas224.entity.Vehicle;
import ru.yandex.dimas224.util.VehicleStatus;
import com.google.gson.Gson;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import org.flywaydb.core.Flyway;
import org.hamcrest.core.Is;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultMatcher;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.fail;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.patch;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

// ETE - End-To-End
@SpringBootTest(classes = FirstProjectApplication.class)
@ActiveProfiles("test")
@AutoConfigureMockMvc
public class EteTest {
  private final MockMvc mockMvc;
  private final String authHeader;
  private final UsersUtils utils;

  @Autowired
  public EteTest(
      MockMvc mockMvc,
      Flyway flyway,
      @Value("${jwt.header}") String authHeader) {
    this.mockMvc = mockMvc;
    this.authHeader = authHeader;
    this.utils = new UsersUtils(flyway, mockMvc, authHeader);
  }

  @BeforeEach
  @AfterEach
  public void cleanAndMigrate() {
    utils.cleanAndMigrate();
  }

  /*
   * 1. Создание нового пользователя
   * 2. Вход под данными нового пользователя
   * 3. Добавление нового транспорта
   * 4. Одобрение данного средства
   * 5. Добавление брони
   * 6. Выход
   */
  @Test
  void newUserTestActions() throws Exception {
    // Регистрация
    String login = "NewLogin";
    String password = "VeryStrongPassword";
    int userId = register(login, password, "MyFirstName", "MyFirstName");
    if (userId == -1) {
      fail("user id cannot be negative");
    }

    // Авторизация при помощи данных нового пользователя
    String token = utils.getAuthToken(login, password);
    checkVehiclesLength(token, userId, 0);

    checkBookingsLength(token, false, userId, 0);
    checkBookingsLength(token, true, userId, 0);

    // Добавление нового транспортного средства
    addVehicle(token, userId, "a111aa111", status().isCreated());
    checkVehiclesLength(token, userId, 1);
    List<Vehicle> vehicles = getVehicles(token, userId);
    assertEquals(vehicles.size(), 1);
    assertEquals(vehicles.get(0).getStatus(), VehicleStatus.NEW);

    // Обновление статуса транспорта
    changeVehicleRoleCheck(
        utils.getAuthToken("admin", "1234"),
        vehicles.get(0).getId(),
        VehicleStatus.APPROVED,
        status().isNoContent());

    utils.getVehiclesCheck(
        token,
        userId,
        status().isOk(),
        jsonPath("$.length()", Is.is(1)),
        jsonPath("[0].status", Is.is(VehicleStatus.APPROVED.toString())));

    // Создание новой брони
    String begin = "2025-10-11 08:00";
    String end = "2025-10-11 20:00";
    getFreeSpotsOnPeriodCheck(
        token,
        begin,
        end,
        status().isOk(),
        jsonPath("$.length()", Is.is(496)),
        jsonPath("[0].id", Is.is(1)));

    createBookingCheck(
        token,
        userId,
        1,
        vehicles.get(0).getId(),
        begin,
        end,
        status().isCreated());

    checkBookingsLength(token, true, userId, 1);
    utils.getBookingsCheck(
        token,
        userId,
        "true",
        status().isOk(),
        jsonPath("[0].userId", Is.is(userId)),
        jsonPath("[0].spotId", Is.is(1)),
        jsonPath("[0].begin", Is.is(begin)),
        jsonPath("[0].end", Is.is(end)),
        jsonPath("[0].vehicleId", Is.is(vehicles.get(0).getId())));

    // Выход
    utils.logout(token);
  }

  /*
   * 1. Авторизация
   * 2. Добавление новой брони
   * 3. Удаление транспорта, связанного с бронью
   * 4. Выход
   * 5. Проверка выхода
   */
  @Test
  void vehicleDeletionCheck() throws Exception {
    String userToken = utils.getAuthToken("user", "1234");
    checkVehiclesLength(userToken, 1, 6);
    String adminToken = utils.getAuthToken("admin", "1234");
    changeVehicleRoleCheck(
        adminToken, 2, VehicleStatus.APPROVED, status().isNoContent());

    checkBookingsLength(userToken, true, 1, 1);

    String begin = "2025-12-12 18:30";
    String end = "2025-12-13 04:30";
    getFreeSpotsOnPeriodCheck(
        userToken,
        begin,
        end,
        status().isOk(),
        jsonPath("$.length()", Is.is(496)));

    createBookingCheck(userToken, 1, 1, 2, begin, end, status().isCreated());

    getFreeSpotsOnPeriodCheck(
        userToken,
        begin,
        end,
        status().isOk(),
        jsonPath("$.length()", Is.is(495)));

    checkBookingsLength(userToken, true, 1, 2);
    // FIXME: deletion by user?
    changeVehicleRoleCheck(
        adminToken, 2, VehicleStatus.DELETED, status().isNoContent());
    checkBookingsLength(userToken, true, 1, 1);

    utils.logout(adminToken, status().isOk());
  }

  @Test
  void useOfNewVehicleCheck() throws Exception {
    // registration
    String username = "newone";
    String password = "mystrongpass";
    int userId = register(username, password, "Name", "LastName");
    assertNotEquals(-1, userId);

    // Authorization
    String userToken = utils.getAuthToken(username, password);
    String adminToken = utils.getAuthToken("admin", "1234");

    // adding new vehicle and approve it
    checkBookingsLength(userToken, true, userId, 0);
    checkBookingsLength(userToken, false, userId, 0);
    checkVehiclesLength(userToken, userId, 0);

    addVehicle(
        userToken,
        userId,
        "number",
        status().isCreated(),
        jsonPath("$.status", Is.is("NEW")));
    Vehicle newVehicle = getVehicles(userToken, userId).get(0);
    checkVehiclesLength(userToken, userId, 1);
    changeVehicleRoleCheck(
        adminToken,
        newVehicle.getId(),
        VehicleStatus.APPROVED,
        status().isNoContent());

    // create new booking
    String begin = "2025-01-01 08:00";
    String end = "2025-01-01 16:00";
    getFreeSpotsOnPeriodCheck(userToken, end, begin, status().isBadRequest());
    getFreeSpotsOnPeriodCheck(
        userToken,
        begin,
        end,
        status().isOk(),
        jsonPath("$.length()", Is.is(496)));
    createBookingCheck(
        userToken,
        userId - 1,
        1,
        newVehicle.getId(),
        begin,
        end,
        status().isForbidden());
    createBookingCheck(
        userToken,
        userId,
        1,
        newVehicle.getId(),
        begin,
        end,
        status().isCreated());
    checkBookingsLength(userToken, true, userId, 1);

    // delete associated spot
    deleteSpotCheck(userToken, 1, status().isForbidden());
    deleteSpotCheck(adminToken, 1, status().isNoContent());
    checkBookingsLength(userToken, true, userId, 0);
    checkBookingsLength(userToken, false, userId, 0);
  }

  private void addVehicle(String token, int userId, String number, ResultMatcher... expectations)
      throws Exception {
    mockMvc
        .perform(
            post(String.format("/users/%d/vehicles", userId))
                .header(authHeader, token)
                .contentType(MediaType.APPLICATION_JSON)
                .content(String.format("{\"number\":\"%s\"}", number)))
        .andExpectAll(expectations);
  }

  private void checkBookingsLength(String token, boolean flag, int userId, int expected)
      throws Exception {
    utils.getBookingsCheck(
        token,
        userId,
        String.valueOf(flag),
        status().isOk(),
        jsonPath("$.length()", Is.is(expected)));
  }

  private void checkVehiclesLength(String token, int userId, int expected) throws Exception {
    utils.getVehiclesCheck(
        token,
        userId,
        status().isOk(),
        jsonPath("$.length()", Is.is(expected)));
  }

  private List<Vehicle> getVehicles(String token, int userId) throws Exception {
    String body =
        mockMvc
            .perform(
                get(String.format("/users/%d/vehicles", userId))
                    .header(authHeader, token))
            .andExpect(status().isOk())
            .andReturn()
            .getResponse()
            .getContentAsString()
            .replace("]", "")
            .replace("[", "");

    Gson gson = new Gson();
    return Arrays.stream(body.split("(?<=}),\\s*"))
        .map(str -> gson.fromJson(str, Vehicle.class))
        .collect(Collectors.toList());
  }

  private void changeVehicleRoleCheck(
      String token, int vehicleId, VehicleStatus status, ResultMatcher... expectations)
      throws Exception {
    mockMvc
        .perform(
            patch(String.format("/vehicles/%d", vehicleId))
                .header(authHeader, token)
                .contentType(MediaType.APPLICATION_JSON)
                .content(String.format("{\"status\":%d}", status.ordinal())))
        .andExpectAll(expectations);
  }

  private void createBookingCheck(
      String token,
      int userId,
      int spotId,
      int vehicleId,
      String begin,
      String end,
      ResultMatcher... expectations)
      throws Exception {
    mockMvc
        .perform(
            post(String.format("/users/%d/bookings", userId))
                .header(authHeader, token)
                .contentType(MediaType.APPLICATION_JSON)
                .content(
                    String.format(
                        "{\"userId\":\"%d\",\"vehicleId\":\"%d\",\"spotId\":\"%d\",\"begin\":\"%s\",\"end\":\"%s\"}",
                        userId, vehicleId, spotId, begin, end)))
        .andExpectAll(expectations);
  }

  private int register(String username, String password, String firstName, String lastName)
      throws Exception {
    Optional<String> id =
        Arrays.stream(
                mockMvc
                    .perform(
                        post("/users")
                            .contentType(MediaType.APPLICATION_JSON)
                            .content(
                                String.format(
                                    "{\"login\":\"%s\",\"password\":\"%s\",\"firstName\":\"%s\",\"lastName\":\"%s\"}",
                                    username, password, firstName, lastName)))
                    .andExpect(status().isCreated())
                    .andExpect(jsonPath("$.id").isNumber())
                    .andReturn()
                    .getResponse()
                    .getContentAsString()
                    .replaceAll("[{}\"]", "")
                    .split(","))
            .filter(s -> s.startsWith("id"))
            .findFirst();
    if (id.isPresent()) {
      return Integer.parseInt(id.get().split(":")[1]);
    } else {
      fail("Id must be present");
    }
    return -1; // stub
  }

  private void getFreeSpotsOnPeriodCheck(
      String token, String begin, String end, ResultMatcher... expectations) throws Exception {
    mockMvc
        .perform(
            get(String.format("/bookings?begin=%s&end=%s", begin, end))
                .header(authHeader, token))
        .andExpectAll(expectations);
  }

  private void deleteSpotCheck(String token, int spotId, ResultMatcher... expectations)
      throws Exception {
    mockMvc
        .perform(
            delete(String.format("/spots/%d",  spotId))
                .header(authHeader, token))
        .andExpectAll(expectations);
  }
}
