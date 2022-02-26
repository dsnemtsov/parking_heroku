package ru.yandex.dimas224.security.filter;

import ru.yandex.dimas224.entity.User;
import ru.yandex.dimas224.service.UserService;
import ru.yandex.dimas224.util.Role;
import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.GenericFilterBean;

/**
 * Пользователь может извлечь данные
 * только о себе, администраторы могут запросить данные о любом пользователе.
 */

@Component
public class PermissionsFilter extends GenericFilterBean {
  private final UserService userService;

  public PermissionsFilter(UserService userService) {
    this.userService = userService;
  }

  @Override
  public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
          throws IOException, ServletException {

    HttpServletRequest req = (HttpServletRequest) servletRequest;
    String uri = req.getRequestURI();

    if (uri.contains("/users/")) {
      int userId = getUserId(uri);
      if (userId != -1) {
        User user = userService
                .findByLogin((String) SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        if (!(user.getId() == userId || user.getRole().equals(Role.ADMIN))) {
          ((HttpServletResponse) servletResponse)
                  .sendError(HttpServletResponse.SC_FORBIDDEN, "Only user himself and admin can do it");
          return;
        }
      }
    }
    filterChain.doFilter(servletRequest, servletResponse);
  }

  public int getUserId(String uri) {
    String[] split = uri.split("/");
    try {
      return Integer.parseInt(split[2]);
    } catch (Exception e) {
      return -1;
    }
  }
}
