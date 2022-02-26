package ru.yandex.dimas224.unit.service;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.assertj.core.api.AssertionsForClassTypes.fail;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import ru.yandex.dimas224.bootloader.FirstProjectApplication;
import ru.yandex.dimas224.entity.User;
import ru.yandex.dimas224.exception.GlobalException;
import ru.yandex.dimas224.model.UserModel;
import ru.yandex.dimas224.repo.UserRepo;
import ru.yandex.dimas224.service.UserService;
import ru.yandex.dimas224.service.booking.UtilityBookingService;
import ru.yandex.dimas224.util.Role;
import java.util.Collection;
import java.util.Optional;
import org.assertj.core.util.Arrays;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;

@SpringBootTest(classes = FirstProjectApplication.class)
public class UserServiceMockTest {
  private final UserRepo userRepo;
  private final UtilityBookingService bookingService;
  private final UserService userService;
  private final String login;
  private final String password;
  private final String firstName;
  private final String lastName;
  private final User user;

  @Autowired
  public UserServiceMockTest(PasswordEncoder encoder) {
    userRepo = mock(UserRepo.class);
    bookingService = mock(UtilityBookingService.class);
    userService = new UserService(userRepo, encoder, bookingService);
    login = "login";
    password = "encoded";
    firstName = "Name";
    lastName = "LastName";
    user = new User(login, password, firstName, lastName);
  }

  @Test
  public void shouldCreate() {
    when(userRepo.findByLogin(eq(login))).thenReturn(Optional.empty());
    when(userRepo.save(any())).thenReturn(user);

    userService.create(new UserModel(login, password, firstName, lastName));

    verify(userRepo).findByLogin(login);
    verify(userRepo).save(any());
  }

  @Test
  public void shouldFindByLogin() {
    when(userRepo.findByLogin(eq(login))).thenReturn(Optional.of(user));
    assertThat(userService.findByLogin(login)).isEqualTo(user);
    verify(userRepo).findByLogin(login);
  }

  @Test
  public void shouldFindAll() {
    when(userRepo.findAll()).thenReturn((Iterable) Arrays.asList(new User[]{user, user, user}));
    assertThat(userService.findAll()).matches(iterable -> ((Collection<User>) iterable).size() == 3);
    verify(userRepo).findAll();
  }

  @Test
  public void shouldFindBookingById() {
    when(userRepo.findById(anyInt())).thenReturn(Optional.of(user));
    when(bookingService.findAllActiveByUserId(anyInt())).thenReturn(null);
    assertThat(userService.findAllBookingsById(anyInt(), true)).isEqualTo(null);
    verify(bookingService).findAllActiveByUserId(anyInt());

    when(bookingService.findAllExpiredByUserId(anyInt())).thenReturn(null);
    assertThat(userService.findAllBookingsById(anyInt(), false)).isEqualTo(null);
    verify(bookingService).findAllExpiredByUserId(anyInt());
  }

  @Test
  public void shouldChangeUserRole() {
    when(userRepo.findById(anyInt())).thenReturn(Optional.of(user));
    when(userRepo.save(eq(user))).thenReturn(user);

    userService.changeUserRole(1, Role.ADMIN, "another");

    verify(userRepo).findById(anyInt());
    verify(userRepo).save(any());
  }

  @Test
  public void shouldFailOnChangeUserRole() {
    when(userRepo.findById(anyInt())).thenReturn(Optional.empty());
    try {
      userService.changeUserRole(1, Role.ADMIN, login);
    } catch (GlobalException exception) {
      verify(userRepo).findById(anyInt());
      verify(userRepo, never()).save(any());
      return;
    }
    fail("Must throw");
  }

  @Test
  public void shouldFailOnCreate() {
    when(userRepo.findByLogin(eq(login))).thenReturn(Optional.of(user));
    try {
      userService.create(new UserModel(login, password, firstName, lastName));
    } catch (GlobalException exception) {
      verify(userRepo).findByLogin(eq(login));
      verify(userRepo, never()).save(any());
      return;
    }
    fail("Must throw");
  }
}
