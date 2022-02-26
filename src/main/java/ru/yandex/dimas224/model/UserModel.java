package ru.yandex.dimas224.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserModel {
  @NotBlank(message = "must be not blank") private String login;
  @NotBlank(message = "must be not blank") private String password;
  @NotNull(message = "must be not null") private String firstName;
  @NotNull(message = "must be not null") private String lastName;
}
