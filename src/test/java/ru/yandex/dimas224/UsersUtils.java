package ru.yandex.dimas224;

import lombok.AllArgsConstructor;
import lombok.Getter;
import org.flywaydb.core.Flyway;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultMatcher;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.patch;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.header;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@Getter
@AllArgsConstructor
public class UsersUtils {
  private final Flyway flyway;
  private final MockMvc mockMvc;
  private final String authHeader;

  public String getAuthToken(String username, String password) throws Exception {
    return mockMvc
        .perform(
            post("/sec/auth/login")
                .content(String.format("username=%s&password=%s", username, password))
                .contentType(MediaType.APPLICATION_FORM_URLENCODED))
        .andExpect(status().isOk())
        .andExpect(header().exists(authHeader))
        .andReturn()
        .getResponse()
        .getHeader(authHeader);
  }

  public void cleanAndMigrate() {
    flyway.clean();
    flyway.migrate();
  }

  public void getVehiclesCheck(String token, int userId, ResultMatcher... expectations)
      throws Exception {
    getCheck(String.format("/users/%d/vehicles", userId), token, expectations);
  }

  public void getBookingsCheck(String token, int userId, String flag, ResultMatcher... expectations)
      throws Exception {
    getCheck(String.format("/users/%d/bookings?isActive=%s", userId, flag), token, expectations);
  }

  public void getAllCheck(String token, ResultMatcher... expectations) throws Exception {
    getCheck("/users/", token, expectations);
  }

  private void getCheck(String url, String token, ResultMatcher... expectations) throws Exception {
    mockMvc
        .perform(get(url).header(authHeader, token))
        .andExpectAll(expectations);
  }

  public void changeRoleCheck(
      String token, int userId, String role, ResultMatcher... expectations)
      throws Exception {
    mockMvc
        .perform(
            patch(String.format("/users/%d", userId))
                .content(String.format("{\"role\":\"%s\"}", role))
                .contentType(MediaType.APPLICATION_JSON)
                .header(authHeader, token))
        .andExpectAll(expectations);
  }

  public void logout(String token, ResultMatcher... expectations) throws Exception {
    mockMvc
        .perform(
            post("/sec/auth/logout")
                .header(authHeader, token))
        .andExpectAll(expectations);
  }
}
