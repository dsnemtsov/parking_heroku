package ru.yandex.dimas224.util;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AuthRequestData {
  private String username;
  private String password;
}
