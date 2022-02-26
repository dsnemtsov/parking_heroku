package ru.yandex.dimas224.exception;

import org.springframework.http.HttpStatus;

public class InvalidBookingTimeException extends GlobalException {
  public InvalidBookingTimeException(String message) {
    super(HttpStatus.BAD_REQUEST, message);
  }
}
