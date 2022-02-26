package ru.yandex.dimas224.exception;

import org.springframework.http.HttpStatus;

public class SpotAlreadyDeletedException extends GlobalException {
  public SpotAlreadyDeletedException(String message) {
    super(HttpStatus.BAD_REQUEST, message);
  }
}
