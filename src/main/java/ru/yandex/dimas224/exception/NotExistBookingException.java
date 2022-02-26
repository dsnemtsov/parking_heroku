package ru.yandex.dimas224.exception;

import org.springframework.http.HttpStatus;

public class NotExistBookingException extends GlobalException {
  public NotExistBookingException(String message) {
    super(HttpStatus.BAD_REQUEST, message);
  }
}
