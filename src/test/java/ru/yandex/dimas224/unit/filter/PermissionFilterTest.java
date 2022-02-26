package ru.yandex.dimas224.unit.filter;

import ru.yandex.dimas224.entity.User;
import ru.yandex.dimas224.security.filter.PermissionsFilter;
import ru.yandex.dimas224.service.UserService;
import ru.yandex.dimas224.util.Role;
import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class PermissionFilterTest {
  private final UserService userService = mock(UserService.class);
  private final PermissionsFilter filter = new PermissionsFilter(userService);


  private final HttpServletRequest request = mock(HttpServletRequest.class);
  private final HttpServletResponse response = mock(HttpServletResponse.class);
  private final FilterChain filterChain = mock(FilterChain.class);

  @AfterEach
  void tearDown() {
    SecurityContextHolder.getContext().setAuthentication(null);
  }

  @Test
  void shouldGetUserId() {
    assertThat(filter.getUserId("/users/3/vehicles")).isEqualTo(3);
    assertThat(filter.getUserId("/users/3/vehicles/4")).isEqualTo(3);
    assertThat(filter.getUserId("/users/2")).isEqualTo(2);
    assertThat(filter.getUserId("/users/")).isEqualTo(-1);
  }

  @Test
  void shouldBeSuccessForAdmin() throws ServletException, IOException {
    User user = new User();
    user.setId(3);
    user.setRole(Role.ADMIN);

    when(request.getRequestURI()).thenReturn("/users/2/vehicles");
    SecurityContextHolder.getContext().setAuthentication(new UsernamePasswordAuthenticationToken("admin", null));
    when(userService
            .findByLogin((String) SecurityContextHolder.getContext().getAuthentication().getPrincipal()))
            .thenReturn(user);

    filter.doFilter(request, response, filterChain);

    verify(filterChain).doFilter(request, response);

  }

  @Test
  void shouldBeSuccessForUser() throws ServletException, IOException {
    User user = new User();
    user.setId(3);
    user.setRole(Role.USER);

    when(request.getRequestURI()).thenReturn("/users/3/vehicles");
    SecurityContextHolder.getContext().setAuthentication(new UsernamePasswordAuthenticationToken("admin", null));
    when(userService
            .findByLogin((String) SecurityContextHolder.getContext().getAuthentication().getPrincipal()))
            .thenReturn(user);

    filter.doFilter(request, response, filterChain);

    verify(filterChain).doFilter(request, response);
  }

  @Test
  void shouldNotBeSuccessForUser() throws ServletException, IOException {
    User user = new User();
    user.setId(3);
    user.setRole(Role.USER);

    when(request.getRequestURI()).thenReturn("/users/2/vehicles");
    SecurityContextHolder.getContext().setAuthentication(new UsernamePasswordAuthenticationToken("admin", null));
    when(userService
            .findByLogin((String) SecurityContextHolder.getContext().getAuthentication().getPrincipal()))
            .thenReturn(user);

    filter.doFilter(request, response, filterChain);

    verify(response).sendError(HttpServletResponse.SC_FORBIDDEN, "Only user himself and admin can do it");
    verify(filterChain, never()).doFilter(request, response);
  }
}
