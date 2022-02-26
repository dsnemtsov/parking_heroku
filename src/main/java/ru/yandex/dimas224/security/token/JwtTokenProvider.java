package ru.yandex.dimas224.security.token;

import ru.yandex.dimas224.exception.AccessTokenException;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Base64;
import java.util.Date;
import java.util.Optional;
import javax.annotation.PostConstruct;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

@Component
public class JwtTokenProvider implements AccessTokenProvider {
  private final long expirationTime;
  private String secret;
  private final String cookieName;
  private final String tokenHeader;
  private final UserDetailsService detailsService;

  /**
   * @param expirationTime token expiration time
   * @param secret secret key for signing (token creation)
   * @param cookie access token http cookie name
   * @param detailsService user service for user loading
   */
  @Autowired
  JwtTokenProvider(
      @Value("${jwt.expiration-time}") long expirationTime,
      @Value("${jwt.secret}") String secret,
      @Value("${jwt.cookie}") String cookie,
      @Value("${jwt.header}") String header,
      UserDetailsService detailsService) {
    this.expirationTime = expirationTime;
    this.secret = secret;
    this.detailsService = detailsService;
    this.cookieName = cookie;
    tokenHeader = header;
  }

  @PostConstruct
  protected void init() {
    secret = Base64.getEncoder().encodeToString(secret.getBytes(StandardCharsets.UTF_8));
  }

  /**
   * Creates token using user information
   *
   * @param username logged user username
   * @param role logged user role
   * @return access token
   */
  @Override
  public String createToken(String username, String role) {
    Claims claims = Jwts.claims().setSubject(username);
    claims.put("role", role);
    Date now = new Date();
    Date validity = new Date(now.getTime() + expirationTime * 1000L);
    return Jwts.builder()
        .setClaims(claims)
        .setIssuedAt(now)
        .setExpiration(validity)
        .signWith(SignatureAlgorithm.HS256, secret)
        .compact();
  }

  /**
   * Validates given access token
   *
   * @param token access token
   * @return true is token valid, otherwise false
   */
  @Override
  public boolean validateToken(String token) {
    try {
      Jws<Claims> jws = Jwts.parser().setSigningKey(secret).parseClaimsJws(token);
      return !jws.getBody().getExpiration().before(new Date());
    } catch (JwtException | IllegalArgumentException exception) {
      throw new AccessTokenException("Expired or invalid token", exception, HttpStatus.UNAUTHORIZED);
    }
  }

  /**
   * Return current logged user authentication
   *
   * @param token access token
   * @return user authentication
   * @throws org.springframework.security.core.userdetails.UsernameNotFoundException if user with
   *     extracted name does not exist
   */
  @Override
  public Authentication getAuthentication(String token) {
    UserDetails details = detailsService.loadUserByUsername(getUsername(token));
    return new UsernamePasswordAuthenticationToken(
        details.getUsername(), details.getPassword(), details.getAuthorities());
  }

  /**
   * Extract username from token
   *
   * @param token access token
   * @return username
   */
  private String getUsername(String token) {
    return Jwts.parser().setSigningKey(secret).parseClaimsJws(token).getBody().getSubject();
  }

  /**
   * Extracts token from request
   *
   * @param request Current http request
   * @return access token
   */
  @Override
  public Optional<String> resolveToken(HttpServletRequest request) {
    Optional<String> cookie = getTokenFromCookie(request);
    if (!cookie.isPresent()) {
      return Optional.ofNullable(request.getHeader(tokenHeader));
    }
    return cookie;
  }

  private Optional<String> getTokenFromCookie(HttpServletRequest request) {
    Cookie[] cookies = request.getCookies();
    if (cookies == null) {
      return Optional.empty();
    }
    return Arrays.stream(cookies)
        .filter(value -> value.getName().equals(cookieName))
        .map(Cookie::getValue)
        .findFirst();
  }

  @Override
  public long getExpirationTime() {
    return expirationTime;
  }
}
