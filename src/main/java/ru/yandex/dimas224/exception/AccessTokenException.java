package ru.yandex.dimas224.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.AuthenticationException;

public class AccessTokenException extends AuthenticationException {
  @Getter
  private final HttpStatus httpStatus;

  public AccessTokenException(String msg, Throwable cause, HttpStatus httpStatus) {
    super(msg, cause);
    this.httpStatus = httpStatus;
  }
}
