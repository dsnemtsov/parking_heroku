package ru.yandex.dimas224.exception;

import org.springframework.http.HttpStatus;

public class ForbiddenException extends GlobalException {
  public ForbiddenException(String message) {
    super(HttpStatus.FORBIDDEN, message);
  }
}
