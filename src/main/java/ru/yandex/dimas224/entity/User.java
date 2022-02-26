package ru.yandex.dimas224.entity;

import ru.yandex.dimas224.util.Role;
import com.fasterxml.jackson.annotation.JsonIgnore;
import javax.persistence.Cacheable;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "users")
@Setter
@Getter
@NoArgsConstructor
@Cacheable
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class User {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;

  private String login;

  @JsonIgnore
  private String password;

  private String firstName;

  private String lastName;

  @Enumerated(EnumType.STRING)
  private Role role;

  // private String email; Optional, for future

  public User(String login, String password, String firstName, String lastName) {
    this.login = login;
    this.password = password;
    this.firstName = firstName;
    this.lastName = lastName;
    this.role = Role.USER;
  }
}
