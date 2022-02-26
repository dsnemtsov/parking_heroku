package ru.yandex.dimas224.util;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Данный класс описывает роль, связанную с конкретным пользователем.
 * Роль является набором прав пользователя.
 */
public enum Role {
  USER,
  ADMIN;

  @JsonCreator
  public static Role of(@JsonProperty("role") String role) {
    return Role.valueOf(role);
  }
}
