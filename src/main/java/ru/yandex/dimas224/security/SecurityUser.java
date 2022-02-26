package ru.yandex.dimas224.security;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.validation.annotation.Validated;

@Validated
@ToString
@EqualsAndHashCode
@Builder
public class SecurityUser implements UserDetails {
  static final long serialVersionUID = 1L; // UserDetails implements Serializable
  private String username;
  private String password; // password will be encoded as it is contained in the DB
  @Getter private String firstName;
  @Getter private String lastName;
  @Getter private int id;
  private List<GrantedAuthority> authorities;

  public SecurityUser(
      @NotBlank(message = "must be not blank") String username,
      @NotNull(message = "must be not mull") String password,
      @NotNull(message = "must be not null") String firstName,
      @NotNull(message = "must be not null") String lastName,
      int id,
      @NotNull(message = "must be not null") Collection<? extends GrantedAuthority> authorities) {
    this.username = username;
    this.password = password;
    this.firstName = firstName;
    this.lastName = lastName;
    this.id = id;
    this.authorities = new ArrayList<>(authorities);
  }

  @Override
  public Collection<? extends GrantedAuthority> getAuthorities() {
    return authorities;
  }

  @JsonIgnore
  @Override
  public String getPassword() {
    return password;
  }

  @Override
  public String getUsername() {
    return username;
  }

  @JsonIgnore
  @Override
  public boolean isAccountNonExpired() {
    return true;
  }

  @JsonIgnore
  @Override
  public boolean isAccountNonLocked() {
    return true;
  }

  @JsonIgnore
  @Override
  public boolean isCredentialsNonExpired() {
    return true;
  }

  @JsonIgnore
  @Override
  public boolean isEnabled() {
    return true;
  }
}
