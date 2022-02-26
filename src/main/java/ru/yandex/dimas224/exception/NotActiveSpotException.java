package ru.yandex.dimas224.exception;

import org.springframework.http.HttpStatus;

public class NotActiveSpotException extends GlobalException {
  public NotActiveSpotException(String message) {
    super(HttpStatus.BAD_REQUEST, message);
  }
}
