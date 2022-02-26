package ru.yandex.dimas224.security;

import ru.yandex.dimas224.security.filter.AccessTokenFilter;
import ru.yandex.dimas224.security.filter.PermissionsFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.SecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.DefaultSecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.stereotype.Component;

@Component
public class AccessConfigure
    extends SecurityConfigurerAdapter<DefaultSecurityFilterChain, HttpSecurity> {
  private final AccessTokenFilter accessTokenFilter;
  private final PermissionsFilter permissionsFilter;

  @Autowired
  public AccessConfigure(AccessTokenFilter accessTokenFilter, PermissionsFilter permissionsFilter) {
    this.accessTokenFilter = accessTokenFilter;
    this.permissionsFilter = permissionsFilter;
  }

  @Override
  public void configure(HttpSecurity http) {
    http.addFilterBefore(accessTokenFilter, UsernamePasswordAuthenticationFilter.class)
            .addFilterAfter(permissionsFilter, UsernamePasswordAuthenticationFilter.class);
  }
}
