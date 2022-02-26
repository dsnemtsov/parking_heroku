package ru.yandex.dimas224.security;

import ru.yandex.dimas224.entity.User;
import ru.yandex.dimas224.service.UserService;
import java.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
  private final UserService service;

  @Autowired
  UserDetailsServiceImpl(UserService service) {
    this.service = service;
  }

  @Override
  @Transactional(readOnly = true)
  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    User user = service.findByLogin(username);

    return SecurityUser.builder()
        .username(username)
        .password(user.getPassword())
        .authorities(Arrays.asList(new SimpleGrantedAuthority("ROLE_" + user.getRole().name())))
        .id(user.getId())
        .firstName(user.getFirstName())
        .lastName(user.getLastName())
        .build();
  }
}
