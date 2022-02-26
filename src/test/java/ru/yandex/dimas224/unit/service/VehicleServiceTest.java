package ru.yandex.dimas224.unit.service;

import ru.yandex.dimas224.entity.User;
import ru.yandex.dimas224.entity.Vehicle;
import ru.yandex.dimas224.exception.AlreadyExistsException;
import ru.yandex.dimas224.exception.NotFoundException;
import ru.yandex.dimas224.repo.UserRepo;
import ru.yandex.dimas224.repo.VehicleRepo;
import ru.yandex.dimas224.service.VehicleService;
import ru.yandex.dimas224.service.booking.UtilityBookingService;
import ru.yandex.dimas224.util.VehicleStatus;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatExceptionOfType;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class VehicleServiceTest {

  private final VehicleRepo vehicleRepo = mock(VehicleRepo.class);
  private final UserRepo userRepo = mock(UserRepo.class);
  private final UtilityBookingService utilityBookingService = mock(UtilityBookingService.class);
  private final VehicleService service = new VehicleService(vehicleRepo, userRepo, utilityBookingService);

  @Test
  void shouldCreate() {
    when(vehicleRepo.findByNumberAndStatusNot(any(), eq(VehicleStatus.DELETED))).thenReturn(Optional.empty());
    when(userRepo.findById(anyInt())).thenReturn(Optional.of(new User()));

    service.create("", 1);

    ArgumentCaptor<Vehicle> captor = ArgumentCaptor.forClass(Vehicle.class);
    verify(vehicleRepo).save(captor.capture());
    assertThat(captor.getValue().getStatus()).isEqualTo(VehicleStatus.NEW);
    assertThat(captor.getValue().getUserId()).isPositive();
  }

  @Test
  void shouldNotCreateIfUserNotFound() {
    when(vehicleRepo.findByNumberAndStatusNot(any(), eq(VehicleStatus.DELETED))).thenReturn(Optional.empty());
    when(userRepo.findById(anyInt())).thenReturn(Optional.empty());

    assertThatExceptionOfType(UsernameNotFoundException.class)
            .isThrownBy(() -> service.create("", 1))
            .withMessage("With user id 1");
  }

  @Test
  void shouldNotCreateIfVehicleAlreadyExist() {
    when(vehicleRepo.findByNumberAndStatusNot(any(), eq(VehicleStatus.DELETED))).thenReturn(Optional.of(new Vehicle()));

    assertThatExceptionOfType(AlreadyExistsException.class)
            .isThrownBy(() -> service.create("", 1))
            .withMessage("Vehicle already exists")
            .matches(e -> e.getHttpStatus() == HttpStatus.BAD_REQUEST);
  }

  @Test
  void shouldFindByUserId() {
    List<Vehicle> vehicles = service.findByUserId(1);

    assertThat(vehicles).isNotNull();
    verify(vehicleRepo).findByUserIdAndStatusNot(1, VehicleStatus.DELETED);
  }

  @Test
  void shouldFindByStatusNew() {
    List<Vehicle> vehicles = service.findByStatus(true);

    assertThat(vehicles).isNotNull();
    verify(vehicleRepo).findByStatus(VehicleStatus.NEW);
  }

  @Test
  void shouldFindByStatusNotDeleted() {
    List<Vehicle> vehicles = service.findByStatus(false);

    assertThat(vehicles).isNotNull();
    verify(vehicleRepo).findByStatusNot(VehicleStatus.DELETED);
  }

  @Test
  void shouldChangeStatus() {
    Vehicle dbVehicle = new Vehicle();
    when(vehicleRepo.findById(anyInt())).thenReturn(Optional.of(dbVehicle));

    service.changeStatus(VehicleStatus.APPROVED, 1);

    verify(vehicleRepo).findById(1);
    verify(vehicleRepo).save(dbVehicle);
    assertThat(dbVehicle.getStatus()).isEqualTo(VehicleStatus.APPROVED);
  }

  @Test
  void shouldNotChangeStatus() {
    when(vehicleRepo.findById(anyInt())).thenReturn(Optional.empty());

    assertThatExceptionOfType(NotFoundException.class)
            .isThrownBy(() -> service.changeStatus(VehicleStatus.APPROVED, 1))
            .withMessage("Vehicle not found");
  }
}
