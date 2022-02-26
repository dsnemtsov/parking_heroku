package ru.yandex.dimas224.controller;

import ru.yandex.dimas224.exception.AccessTokenException;
import ru.yandex.dimas224.security.SecurityUser;
import ru.yandex.dimas224.security.token.AccessTokenProvider;
import ru.yandex.dimas224.security.token.extract.AuthRequestDataExtractor;
import ru.yandex.dimas224.util.AuthRequestData;
import ru.yandex.dimas224.util.GlobalError;
import java.util.Optional;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sec/auth")
public class AuthController {
  private final AuthenticationManager manager;
  private final AccessTokenProvider provider;
  private final String cookieName;
  private final String tokenHeader;
  private final AuthRequestDataExtractor extractor;

  @Autowired
  public AuthController(
      AuthenticationManager manager,
      AccessTokenProvider provider,
      @Value("${jwt.cookie}") String cookie,
      @Value("${jwt.header}") String header,
      AuthRequestDataExtractor extractor) {
    this.manager = manager;
    this.provider = provider;
    this.cookieName = cookie;
    this.tokenHeader = header;
    this.extractor = extractor;
  }

  @PostMapping("/logout")
  public void logout(HttpServletRequest request, HttpServletResponse response) {
    SecurityContextLogoutHandler handler = new SecurityContextLogoutHandler();
    handler.logout(request, response, null);
  }

  @PostMapping("/login")
  public ResponseEntity<?> authenticate(HttpServletRequest req, HttpServletResponse response) {
    Optional<AuthRequestData> data = extractor.extract(req);
    if (!data.isPresent()) {
      return ResponseEntity.badRequest().body(new GlobalError("Enter authorization data"));
    }

    Authentication auth =
        manager.authenticate(
            new UsernamePasswordAuthenticationToken(
                data.get().getUsername(), data.get().getPassword()));

    String token = createToken(auth);
    applyToken(response, token);

    return ResponseEntity.ok(auth.getPrincipal());
  }

  private String createToken(Authentication auth) {
    return provider.createToken(
        ((SecurityUser) auth.getPrincipal()).getUsername(),
        auth.getAuthorities().stream()
            .filter(grantedAuthority -> grantedAuthority.toString().startsWith("ROLE_"))
            .findFirst()
            .orElseThrow(
                () -> new AccessTokenException("Have no permission", null, HttpStatus.FORBIDDEN))
            .toString());
  }

  private void applyToken(HttpServletResponse response, String token) {
    Cookie cookie = new Cookie(cookieName, token);
    cookie.setSecure(true);
    cookie.setHttpOnly(true);
    cookie.setPath("/");
    cookie.setMaxAge((int) provider.getExpirationTime());
    response.addCookie(cookie);
    response.addHeader(tokenHeader, token);
  }
}
