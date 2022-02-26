package ru.yandex.dimas224.service;

import ru.yandex.dimas224.entity.Booking;
import ru.yandex.dimas224.entity.User;
import ru.yandex.dimas224.exception.AlreadyExistsException;
import ru.yandex.dimas224.exception.ForbiddenException;
import ru.yandex.dimas224.exception.NotFoundException;
import ru.yandex.dimas224.model.UserModel;
import ru.yandex.dimas224.repo.UserRepo;
import ru.yandex.dimas224.service.booking.UtilityBookingService;
import ru.yandex.dimas224.util.Role;
import javax.validation.constraints.NotNull;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {
  private final UserRepo userRepo;
  private final PasswordEncoder encoder;
  private final UtilityBookingService utilityBookingService;

  public UserService(UserRepo userRepo, PasswordEncoder encoder, UtilityBookingService utilityBookingService) {
    this.userRepo = userRepo;
    this.encoder = encoder;
    this.utilityBookingService = utilityBookingService;
  }

  private User of(UserModel userModel) {
    return new User(
        userModel.getLogin(),
        encoder.encode(userModel.getPassword()),
        userModel.getFirstName(),
        userModel.getLastName());
  }

  /**
   * Создает пользователя на основе переданной модели
   *
   * @param user данные пользователя
   * @return возвращает настроенный объект
   */
  public User create(@NotNull(message = "must be not null") UserModel user) {
    userRepo
        .findByLogin(user.getLogin())
        .ifPresent(
            value -> {
              throw new AlreadyExistsException("User with this login already exists!");
            });
    return userRepo.save(of(user));
  }

  public User findByLogin(@NotNull(message = "must be not null") String login) {
    return userRepo.findByLogin(login).orElseThrow(() -> new UsernameNotFoundException(login));
  }

  public Iterable<User> findAll() {
    return userRepo.findAll();
  }

  /**
   * Извлекает данные о бронированиях конкретного пользователя.
   *
   * @param userId id требуемого пользователя
   * @param isActive если передан true - возвращает активные записи, в противном случае возвращает
   *     данные по истекшим бронирования
   * @return бронирования пользователя
   */
  public Iterable<Booking> findAllBookingsById(int userId, boolean isActive) {
    userRepo.findById(userId).orElseThrow(() -> new NotFoundException("User not found"));
    if (isActive) {
      return utilityBookingService.findAllActiveByUserId(userId);
    } else {
      return utilityBookingService.findAllExpiredByUserId(userId);
    }
  }

  /**
   * Изменяет роль указанного пользователя. Проверяет, что текущий авторизованный пользователь и
   * пользователь, данные которого требуется изменить - это разные пользователи
   *
   * @param id id требуемого пользователя
   * @param newRole новая роль пользователя
   * @param login логин текущего авторизованного пользователя (от чьего имени происходит изменения)
   */
  public void changeUserRole(int id, Role newRole, String login) {
    User user = userRepo.findById(id).orElseThrow(() -> new NotFoundException("User not found"));
    if (user.getLogin().equals(login)) {
      throw new ForbiddenException("Cannot change own role");
    }
    user.setRole(newRole);

    userRepo.save(user);
  }
}
