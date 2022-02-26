package ru.yandex.dimas224.service;

import ru.yandex.dimas224.entity.Vehicle;
import ru.yandex.dimas224.exception.AlreadyExistsException;
import ru.yandex.dimas224.exception.NotFoundException;
import ru.yandex.dimas224.repo.UserRepo;
import ru.yandex.dimas224.repo.VehicleRepo;
import ru.yandex.dimas224.service.booking.UtilityBookingService;
import ru.yandex.dimas224.util.VehicleStatus;
import java.util.List;
import java.util.Optional;
import javax.validation.constraints.NotBlank;
import org.hibernate.validator.constraints.Length;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

@Service
@Validated
public class VehicleService {
  private final VehicleRepo vehicleRepo;

  private final UserRepo userRepo;
  private final UtilityBookingService utilityBookingService;

  private static final int MAX_NUMBER_LENGTH = 15;

  public VehicleService(
      VehicleRepo vehicleRepo, UserRepo userRepo, UtilityBookingService utilityBookingService) {
    this.vehicleRepo = vehicleRepo;
    this.userRepo = userRepo;
    this.utilityBookingService = utilityBookingService;
  }

  public Vehicle create(
      @NotBlank(message = "must be not blank")
          @Length(
              min = 3,
              max = MAX_NUMBER_LENGTH,
              message = "The '${validatedValue}' must be between {min} and {max}")
          String number,
      Integer userId) {
    if (!vehicleRepo.findByNumberAndStatusNot(number, VehicleStatus.DELETED).isPresent()) {
      userRepo
          .findById(userId)
          .orElseThrow(
              () -> new UsernameNotFoundException(String.format("With user id %d", userId)));

      Vehicle vehicle = new Vehicle();
      vehicle.setNumber(number);
      vehicle.setStatus(VehicleStatus.NEW);
      vehicle.setUserId(userId);
      vehicleRepo.save(vehicle);
      return vehicle;
    }

    throw new AlreadyExistsException("Vehicle already exists");
  }

  public List<Vehicle> findByUserId(Integer userId) {
    return vehicleRepo.findByUserIdAndStatusNot(userId, VehicleStatus.DELETED);
  }

  public List<Vehicle> findByStatus(boolean isNew) {

    return isNew
        ? vehicleRepo.findByStatus(VehicleStatus.NEW)
        : vehicleRepo.findByStatusNot(VehicleStatus.DELETED);
  }

  @Transactional
  public void changeStatus(VehicleStatus status, Integer vehicleId) {
    Vehicle dbVehicle =
        vehicleRepo
            .findById(vehicleId)
            .orElseThrow(() -> new NotFoundException("Vehicle not found"));

    dbVehicle.setStatus(status);

    dbVehicle = vehicleRepo.save(dbVehicle);
    if (!status.equals(VehicleStatus.APPROVED)) {
      utilityBookingService.closeBookingsByVehicleId(dbVehicle.getId());
    }
  }

  public Optional<Vehicle> findByIdAndStatus(int id, VehicleStatus status) {
    return vehicleRepo.findByIdAndStatus(id, status);
  }
}
