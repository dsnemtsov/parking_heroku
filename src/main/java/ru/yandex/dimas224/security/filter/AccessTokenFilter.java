package ru.yandex.dimas224.security.filter;

import ru.yandex.dimas224.exception.AccessTokenException;
import ru.yandex.dimas224.security.token.AccessTokenProvider;
import ru.yandex.dimas224.util.GlobalError;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.Optional;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.GenericFilterBean;

@Component
@Slf4j
public class AccessTokenFilter extends GenericFilterBean {

  private final AccessTokenProvider tokenProvider;

  @Autowired
  public AccessTokenFilter(AccessTokenProvider provider) {
    tokenProvider = provider;
  }

  @Override
  public void doFilter(
      ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
      throws IOException, ServletException {
    Optional<String> token = tokenProvider.resolveToken((HttpServletRequest) servletRequest);
    try {
      if (token.isPresent() && tokenProvider.validateToken(token.get())) {
        Authentication auth = tokenProvider.getAuthentication(token.get());
        SecurityContextHolder.getContext().setAuthentication(auth);
      }
      filterChain.doFilter(servletRequest, servletResponse);
    } catch (AccessTokenException exception) {
      SecurityContextHolder.clearContext();
      addError((HttpServletResponse) servletResponse, exception);
    }
  }

  private void addError(HttpServletResponse response, AccessTokenException exception) {
    response.setStatus(exception.getHttpStatus().value());
    response.setContentType(MediaType.APPLICATION_JSON_VALUE);
    try {
      new ObjectMapper()
          .writeValue(
              response.getOutputStream(),
              new GlobalError(exception.getMessage()));
    } catch (Exception e) {
      log.error("Error during AccessTokenFilter.addError: " + e.getMessage());
    }
  }
}
