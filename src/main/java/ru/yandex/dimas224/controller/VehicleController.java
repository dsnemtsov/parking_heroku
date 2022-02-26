package ru.yandex.dimas224.controller;

import ru.yandex.dimas224.entity.Vehicle;
import ru.yandex.dimas224.service.VehicleService;
import ru.yandex.dimas224.util.VehicleStatus;
import ru.yandex.dimas224.util.jackson.JsonArg;
import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class VehicleController {
  private final VehicleService vehicleService;

  public VehicleController(VehicleService vehicleService) {
    this.vehicleService = vehicleService;
  }

  @PreAuthorize("hasAnyRole('USER', 'ADMIN')")
  @PostMapping("/users/{userId}/vehicles")
  public ResponseEntity<Object> create(
          @JsonArg String number, @PathVariable Integer userId) {
    return ResponseEntity.status(HttpStatus.CREATED).body(vehicleService.create(number, userId));
  }

  @PreAuthorize("hasAnyRole('USER', 'ADMIN')")
  @GetMapping("/users/{userId}/vehicles")
  public ResponseEntity<List<Vehicle>> findByUserId(@PathVariable Integer userId) {
    return ResponseEntity.ok(vehicleService.findByUserId(userId));
  }

  @PreAuthorize("hasRole('ADMIN')")
  @GetMapping("/vehicles")
  public ResponseEntity<List<Vehicle>> findByStatus(@RequestParam boolean isNew) {
    return ResponseEntity.ok(vehicleService.findByStatus(isNew));
  }

  @PreAuthorize("hasRole('ADMIN')")
  @PatchMapping("/vehicles/{vehicleId}")
  public ResponseEntity<Object> changeStatus(
      @JsonArg VehicleStatus status, @PathVariable Integer vehicleId) {
    vehicleService.changeStatus(status, vehicleId);
    return ResponseEntity.noContent().build();
  }
}
