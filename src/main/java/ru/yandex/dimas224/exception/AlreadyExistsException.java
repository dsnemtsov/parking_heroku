package ru.yandex.dimas224.exception;

import org.springframework.http.HttpStatus;

public class AlreadyExistsException extends GlobalException {
  public AlreadyExistsException(String message) {
    super(HttpStatus.BAD_REQUEST, message);
  }
}
