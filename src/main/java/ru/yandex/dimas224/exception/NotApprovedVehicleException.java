package ru.yandex.dimas224.exception;

import org.springframework.http.HttpStatus;

public class NotApprovedVehicleException extends GlobalException {
  public NotApprovedVehicleException(String message) {
    super(HttpStatus.BAD_REQUEST, message);
  }
}
