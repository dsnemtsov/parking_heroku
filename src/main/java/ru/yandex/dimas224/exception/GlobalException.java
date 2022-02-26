package ru.yandex.dimas224.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public abstract class GlobalException extends RuntimeException {
  private final HttpStatus httpStatus;

  public GlobalException(HttpStatus httpStatus) {
    this.httpStatus = httpStatus;
  }

  public GlobalException(HttpStatus httpStatus, String message) {
    super(message);
    this.httpStatus = httpStatus;
  }

  public GlobalException(HttpStatus httpStatus, String message, Throwable cause) {
    super(message, cause);
    this.httpStatus = httpStatus;
  }
}
