package ru.yandex.dimas224.unit.controller;

import ru.yandex.dimas224.UsersUtils;
import ru.yandex.dimas224.bootloader.FirstProjectApplication;
import org.flywaydb.core.Flyway;
import org.hamcrest.core.Is;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultMatcher;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest(classes = FirstProjectApplication.class)
@ActiveProfiles("test")
@AutoConfigureMockMvc
public class UserControllerTest {
  private final MockMvc mvc;
  private final UsersUtils utils;

  @Autowired
  public UserControllerTest(
      Flyway flyway,
      MockMvc mockMvc,
      @Value("${jwt.header}") String authHeader) {
    this.mvc = mockMvc;
    this.utils = new UsersUtils(flyway, mockMvc, authHeader);
  }

  @Test
  public void checkUserActions() throws Exception {
    utils.cleanAndMigrate();
    String token = utils.getAuthToken("user", "1234");
    asFirstUserCheck(token);
  }

  @Test
  public void checkAdminActions() throws Exception {
    utils.cleanAndMigrate();
    String token = utils.getAuthToken("admin", "1234");
    asAdminCheck(token, 2, 1000);
  }

  @Test
  public void checkUserCreation() throws Exception {
    utils.cleanAndMigrate();

    userCreation("{\"login\":\"logsadisad\"", status().isBadRequest());

    int userId = 1001;
    userCreation(
        "{\"login\":\"aaa\", \"password\":\"mypass\","
            + "\"firstName\":\"MyName\", \"lastName\":\"MyLastName\"}",
        status().isCreated(),
        jsonPath("$.login", Is.is("aaa")),
        jsonPath("$.id", Is.is(userId)),
        jsonPath("$.firstName", Is.is("MyName")),
        jsonPath("$.lastName", Is.is("MyLastName")));

    String token = utils.getAuthToken("aaa", "mypass");

    utils.getAllCheck(token, status().isForbidden());
    utils.getBookingsCheck(token, 1, "false", status().isForbidden());
    utils.getBookingsCheck(
        token,
        userId,
        "true",
        status().isOk(),
        jsonPath("$.length()", Is.is(0)));

    utils.changeRoleCheck(token, 1, "ADMIN", status().isForbidden());

    utils.changeRoleCheck(utils.getAuthToken("admin", "1234"), userId, "ADMIN");
    asAdminCheck(utils.getAuthToken("aaa", "mypass"), userId, userId);

    utils.cleanAndMigrate();
  }

  private void userCreation(String content, ResultMatcher... expectations) throws Exception {
    mvc.perform(
            post("/users")
                .content(content)
                .contentType(MediaType.APPLICATION_JSON))
        .andExpectAll(expectations);
  }

  private void asFirstUserCheck(String token) throws Exception {
    utils.getAllCheck(token, status().isForbidden());

    utils.getBookingsCheck(token, 2, "false", status().isForbidden());
    utils.getBookingsCheck(token, 3, "false", status().isForbidden());
    utils.getBookingsCheck(
        token,
        1,
        "true",
        status().isOk(),
        jsonPath("$.length()", Is.is(1)));

    utils.changeRoleCheck(token, 1, "ADMIN", status().isForbidden());
    utils.changeRoleCheck(token, 2, "ADMIN", status().isForbidden());
  }

  private void asAdminCheck(String token, int myId, int nUsers) throws Exception {
    utils.getAllCheck(
        token,
        status().isOk(),
        jsonPath("$.length()", Is.is(nUsers)),
        jsonPath("[0].login", Is.is("user")),
        jsonPath("[1].firstName", Is.is("Admin")));

    utils.getBookingsCheck(
        token,
        1,
        "true",
        status().isOk(),
        jsonPath("$.length()", Is.is(1)));

    utils.changeRoleCheck(token, 1, "ADMIN", status().isNoContent());
    utils.changeRoleCheck(token, myId, "ADMIN", status().isForbidden());
  }
}
