package ru.yandex.dimas224.controller;

import ru.yandex.dimas224.entity.User;
import ru.yandex.dimas224.model.UserModel;
import ru.yandex.dimas224.service.UserService;
import ru.yandex.dimas224.util.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/users")
public class UserController {
  private final UserService userService;

  @Autowired
  public UserController(UserService userService) {
    this.userService = userService;
  }

  /**
   * Создает нового пользователя с переданными данными: login, password, firstName, lastName.
   *
   * @param user модель данных
   * @return Http return codes: 201 - пользователь успешно создан; 400 - пользователь уже создан или
   *     переданы некорректные данные
   */
  @PostMapping
  public ResponseEntity<?> create(@Validated @RequestBody UserModel user) {
    return ResponseEntity.status(HttpStatus.CREATED).body(userService.create(user));
  }

  /**
   * Извлекает список всех пользователей
   *
   * @return Http return codes: 200 - данные были извлечены корректно 403 - доступ запрещен
   */
  @PreAuthorize("hasRole('ADMIN')")
  @GetMapping
  public ResponseEntity<Iterable<User>> getAll() {
    return ResponseEntity.ok(userService.findAll());
  }

  /**
   * Извлекает данные о бронированиях пользователя с указанным id.
   *
   * @param userId id требуемого пользователя
   * @param isActive true - выводятся данные об активных бронированиях, false - об истекших
   * @return http return codes: 200 - данные были успешно извлечены 400 - некорректный запрос 404 -
   *     пользователя с переданным id не существует
   */
  @GetMapping("/{user_id}/bookings")
  public ResponseEntity<?> getUserBookings(
      @PathVariable("user_id") int userId, @RequestParam boolean isActive) {
    return ResponseEntity.ok(this.userService.findAllBookingsById(userId, isActive));
  }

  /**
   * Изменяет данные указанного пользователя (в данный момент - только роль). Изменять роль может
   * только администратор. Администратор не может изменить собственную роль.
   *
   * @param userId id пользователя, данные которого требуется изменить
   * @param role новая роль (USER, ADMIN)
   * @param authentication используется для получения данных о текущем пользователе
   * @return http return codes: 204 - данные были успешно изменены 403 - пользователь не имеет права
   *     изменять данные 404 - пользователь с указанным id не существует
   */
  @PreAuthorize("hasRole('ADMIN')")
  @PatchMapping("/{user_id}")
  public ResponseEntity<?> changeUserRole(
          @PathVariable("user_id") int userId, @RequestBody Role role, Authentication authentication) {
    userService.changeUserRole(userId, role, (String) authentication.getPrincipal());
    return ResponseEntity.noContent().build();
  }
}
