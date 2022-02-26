package ru.yandex.dimas224.exception;

import ru.yandex.dimas224.util.GlobalError;
import java.util.HashMap;
import java.util.Map;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.AuthenticationException;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@ControllerAdvice
@RestControllerAdvice
public class GlobalExceptionHandler {
  @ResponseStatus(HttpStatus.BAD_REQUEST)
  @ExceptionHandler(MethodArgumentNotValidException.class)
  public Map<String, String> handleMethodArgumentsValidationExceptions(
      MethodArgumentNotValidException ex) {
    Map<String, String> errors = new HashMap<>();
    ex.getBindingResult()
        .getAllErrors()
        .forEach(
            (error) -> {
              String fieldName = ((FieldError) error).getField();
              String errorMessage = error.getDefaultMessage();
              errors.put("error", fieldName + ": " + errorMessage);
            });
    return errors;
  }

  @ExceptionHandler(GlobalException.class)
  public ResponseEntity<GlobalError> handleGlobalException(GlobalException exception) {
    return handleException(exception, exception.getHttpStatus());
  }

  @ExceptionHandler(ConstraintViolationException.class)
  public ResponseEntity<GlobalError> handleConstraintViolationException(
      ConstraintViolationException exception) {
    if (exception.getConstraintViolations().isEmpty()) {
      return ResponseEntity.badRequest().body(new GlobalError("Server error"));
    } else {
      ConstraintViolation<?> violation = exception.getConstraintViolations().iterator().next();
      String fieldName = violation.getPropertyPath().toString().split("[.]")[1];
      return ResponseEntity.badRequest()
          .body(new GlobalError(fieldName + ": " + violation.getMessage()));
    }
  }

  @ExceptionHandler(AccessTokenException.class)
  public ResponseEntity<GlobalError> handleAccessTokenException(AccessTokenException exception) {
    return handleException(exception, exception.getHttpStatus());
  }

  @ExceptionHandler(AuthenticationException.class)
  public ResponseEntity<GlobalError> handleAuthenticationException(
      AuthenticationException exception) {
    return handleException(exception, HttpStatus.FORBIDDEN);
  }

  private ResponseEntity<GlobalError> handleException(Exception exception, HttpStatus errorStatus) {
    Throwable cause = exception.getCause();
    if (cause == null) {
      return ResponseEntity.status(errorStatus)
          .contentType(MediaType.APPLICATION_JSON)
          .body(new GlobalError(exception.getMessage()));
    } else {
      return ResponseEntity.status(errorStatus)
          .contentType(MediaType.APPLICATION_JSON)
          .body(new GlobalError(exception.getMessage() + cause.getMessage()));
    }
  }
}
