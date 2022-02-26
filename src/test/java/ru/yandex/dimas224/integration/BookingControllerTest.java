package ru.yandex.dimas224.integration;

import ru.yandex.dimas224.UsersUtils;
import ru.yandex.dimas224.bootloader.FirstProjectApplication;
import java.util.stream.Stream;
import org.flywaydb.core.Flyway;
import org.hamcrest.core.Is;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@ActiveProfiles("test")
@SpringBootTest(classes = FirstProjectApplication.class)
@AutoConfigureMockMvc()
public class BookingControllerTest {
  private final MockMvc mockMvc;
  private final UsersUtils utils;

  @Autowired
  public BookingControllerTest(
          Flyway flyway,
          MockMvc mockMvc,
          @Value("${jwt.header}") String authHeader) {
    this.mockMvc = mockMvc;
    this.utils = new UsersUtils(flyway, mockMvc, authHeader);
  }

  @BeforeEach
  @AfterEach
  public void cleanAndMigrate() {
    utils.cleanAndMigrate();
  }

  @ParameterizedTest
  @MethodSource("invalidDatesProvider")
  void shouldNotCreateDueToInvalidTime(String begin, String end) throws Exception {
    mockMvc.perform(post("/users/1/bookings")
                    .header(utils.getAuthHeader(),
                            utils.getAuthToken("user", "1234"))
                    .content(getBookingModel(1, 3, begin, end))
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isBadRequest())
            .andExpect(jsonPath("$.error", Is.is("Invalid booking time")))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));
  }

  @Test
  void shouldNotCreateDueToVehicleStatusNotApproved() throws Exception {
    String begin = "2032-01-01 09:30";
    String end = "2032-01-01 10:00";

    mockMvc.perform(post("/users/1/bookings")
                    .header(utils.getAuthHeader(),
                            utils.getAuthToken("user", "1234"))
                    .content(getBookingModel(1, 2, begin, end))
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isBadRequest())
            .andExpect(jsonPath("$.error", Is.is("Vehicle's status is not approved")))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));
  }

  @Test
  void shouldNotCreateDueToNotActiveSpot() throws Exception {
    String begin = "2032-01-01 09:30";
    String end = "2032-01-01 10:00";

    mockMvc.perform(post("/users/1/bookings")
                    .header(utils.getAuthHeader(),
                            utils.getAuthToken("user", "1234"))
                    .content(getBookingModel(5, 3, begin, end))
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isBadRequest())
            .andExpect(jsonPath("$.error", Is.is("Not active spot")))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));
  }

  @Test
  void shouldNotCreateDueToNumberBookingsExceeded() throws Exception {
    String begin = "2032-01-01 14:00";
    String end = "2032-01-01 15:00";

    createBooking(1, 1, 3, "2032-01-01 10:00", "2032-01-01 11:00");
    createBooking(1, 1, 3, "2032-01-01 11:00", "2032-01-01 12:00");
    createBooking(1, 1, 3, "2032-01-01 12:00", "2032-01-01 13:00");
    createBooking(1, 1, 3, "2032-01-01 13:00", "2032-01-01 14:00");

    mockMvc.perform(post("/users/1/bookings")
                    .header(utils.getAuthHeader(),
                            utils.getAuthToken("user", "1234"))
                    .content(getBookingModel(1, 3, begin, end))
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isBadRequest())
            .andExpect(jsonPath("$.error", Is.is("Number of bookings exceeded")))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));
  }

  @ParameterizedTest
  @MethodSource("datesProvider")
  void shouldNotCreateDueToSpotOccupiedByAnotherUser(String begin, String end) throws Exception {
    mockMvc.perform(post("/users/1/bookings")
                    .header(utils.getAuthHeader(),
                            utils.getAuthToken("user", "1234"))
                    .content(getBookingModel(1, 3, begin, end))
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isBadRequest())
            .andExpect(jsonPath("$.error", Is.is(
                    "This spot is occupied or you have another booking in this time")))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));
  }

  @ParameterizedTest
  @MethodSource("datesProvider")
  void shouldNotCreateDueToUserHasBookingInThisOnAnotherSpot(String begin, String end) throws Exception {
    mockMvc.perform(post("/users/2/bookings")
                    .header(utils.getAuthHeader(),
                            utils.getAuthToken("admin", "1234"))
                    .content(getBookingModel(2, 4, begin, end))
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isBadRequest())
            .andExpect(jsonPath("$.error", Is.is(
                    "This spot is occupied or you have another booking in this time")))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));
  }

  @Test
  void shouldCreate() throws Exception {
    String begin = "2032-01-01 09:30";
    String end = "2032-01-01 10:00";

    mockMvc.perform(post("/users/1/bookings")
                  .header(utils.getAuthHeader(),
                          utils.getAuthToken("user", "1234"))
                  .content(getBookingModel(1, 3, begin, end))
                  .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isCreated())
            .andExpect(jsonPath("$.length()", Is.is(6)))
            .andExpect(jsonPath("$.begin", Is.is("2032-01-01 09:30")))
            .andExpect(jsonPath("$.end", Is.is("2032-01-01 10:00")))
            .andExpect(jsonPath("$.userId", Is.is(1)))
            .andExpect(jsonPath("$.id", Is.is(367)))
            .andExpect(jsonPath("$.spotId", Is.is(1)))
            .andExpect(jsonPath("$.vehicleId", Is.is(3)))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));
  }

  @Test
  void shouldNotDeleteDueToBookingNotExists() throws Exception {
    mockMvc.perform(delete("/users/1/bookings/10")
                    .header(utils.getAuthHeader(),
                            utils.getAuthToken("user", "1234"))
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isBadRequest())
            .andExpect(jsonPath("$.error", Is.is("This booking does not exist")))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));
  }

  @Test
  void shouldDelete() throws Exception {
    createBooking(1, 1, 3, "2032-02-01 13:00", "2032-02-01 14:00");

    mockMvc.perform(delete("/users/1/bookings/367")
                    .header(utils.getAuthHeader(),
                            utils.getAuthToken("user", "1234"))
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isNoContent());
  }

  @Test
  void shouldFindFreeSpots() throws Exception {
    String begin = "2032-01-01 08:30";
    String end = "2032-01-01 10:00";

    mockMvc.perform(get(String.format("/bookings?begin=%s&end=%s", begin, end))
                    .header(utils.getAuthHeader(),
                            utils.getAuthToken("user", "1234"))
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(jsonPath("$.length()", Is.is(495)))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));
  }

  @Test
  void shouldGetBookings() throws Exception {
    mockMvc.perform(get("/bookings/all")
                    .header(utils.getAuthHeader(),
                            utils.getAuthToken("admin", "1234"))
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(jsonPath("$.length()", Is.is(91)))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));
  }

  @Test
  void shouldExtend() throws Exception {
    mockMvc.perform(post("/users/1/bookings/5/extend")
                    .header(utils.getAuthHeader(),
                            utils.getAuthToken("user", "1234"))
                    .content(getValidBookingModelExtend())
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isCreated())
            .andExpect(jsonPath("$.length()", Is.is(6)))
            .andExpect(jsonPath("$.begin", Is.is("2032-01-01 09:30")))
            .andExpect(jsonPath("$.end", Is.is("2032-01-01 10:00")))
            .andExpect(jsonPath("$.userId", Is.is(1)))
            .andExpect(jsonPath("$.id", Is.is(367)))
            .andExpect(jsonPath("$.spotId", Is.is(2)))
            .andExpect(jsonPath("$.vehicleId", Is.is(3)))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));
  }

  private void createBooking(int userId, int spotId, int vehicleId, String begin, String end) throws Exception {
    mockMvc.perform(post( String.format("/users/%d/bookings/", userId))
            .header(utils.getAuthHeader(),
                    utils.getAuthToken("user", "1234"))
            .content(getBookingModel(spotId, vehicleId, begin, end))
            .contentType(MediaType.APPLICATION_JSON));
  }

  private String getBookingModel(int spotId, int vehicleId, String begin, String end) {
    return String.format("{\"spotId\": %d, \"vehicleId\": %d, \"begin\": \"%s\", \"end\": \"%s\"}",
            spotId, vehicleId, begin, end);
  }

  private String getValidBookingModelExtend() {
    return  "{\"time\": 30}";
  }

  private static Stream<Arguments> datesProvider() {
    return Stream.of(
            Arguments.of("2032-01-10 05:15", "2032-01-10 05:45"),
            Arguments.of("2032-01-10 05:00", "2032-01-10 06:30"),
            Arguments.of("2032-01-10 05:00", "2032-01-10 07:00"),
            Arguments.of("2032-01-10 05:30", "2032-01-10 06:30"),
            Arguments.of("2032-01-10 05:45", "2032-01-10 06:15"),
            Arguments.of("2032-01-10 06:00", "2032-01-10 07:00"),
            Arguments.of("2032-01-10 05:30", "2032-01-10 07:00")
    );
  }

  private static Stream<Arguments> invalidDatesProvider() {
    return Stream.of(
            Arguments.of("2020-01-10 16:00", "2020-01-10 17:00"),
            Arguments.of("2032-01-10 16:00", "2032-01-10 16:00"),
            Arguments.of("2032-01-10 16:00", "2032-01-10 15:00"),
            Arguments.of("2032-01-10 16:00", "2032-01-10 15:00"),
            Arguments.of("2032-01-10 16:00", "2032-01-10 16:25"),
            Arguments.of("2032-01-10 04:00", "2032-01-10 17:00")
    );
  }
}
