package ru.yandex.dimas224.security.token;

import java.util.Optional;
import javax.servlet.http.HttpServletRequest;
import org.springframework.security.core.Authentication;

public interface AccessTokenProvider {
  /**
   * Creates token using user information
   *
   * @param username logged user username
   * @param role logged user role
   * @return access token
   */
  String createToken(String username, String role);

  /**
   * Validates given access token
   *
   * @param token access token
   * @return true is token valid, otherwise false
   */
  boolean validateToken(String token);

  /**
   * Return current logged user authentication
   *
   * @param token access token
   * @return user authentication
   */
  Authentication getAuthentication(String token);

  /**
   * Extracts token from request
   *
   * @param request Current http request
   * @return access token
   */
  Optional<String> resolveToken(HttpServletRequest request);

  /**
   * Returns token expiration time
   *
   * @return token expiration time
   */
  long getExpirationTime();
}
