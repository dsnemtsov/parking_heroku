package ru.yandex.dimas224.exception;

import org.springframework.http.HttpStatus;

public class ExceededNumberOfBookingsException extends GlobalException {
  public ExceededNumberOfBookingsException(String message) {
    super(HttpStatus.BAD_REQUEST, message);
  }
}
