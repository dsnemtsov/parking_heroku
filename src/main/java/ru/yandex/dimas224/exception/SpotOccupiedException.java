package ru.yandex.dimas224.exception;

import org.springframework.http.HttpStatus;

public class SpotOccupiedException extends GlobalException {
  public SpotOccupiedException(String message) {
    super(HttpStatus.BAD_REQUEST, message);
  }
}
