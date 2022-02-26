package ru.yandex.dimas224.bootloader;

import ru.yandex.dimas224.security.AccessConfigure;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
  private final AccessConfigure configure;
  private final String cookieName;
  private final String authTokenName;
  private final String restClientOrigin;

  @Autowired
  public SecurityConfiguration(
      AccessConfigure configure,
      @Value("${jwt.cookie}") String cookie,
      @Value("${jwt.header}") String authTokenName,
      @Value("${rest.client.origin}") String restClientOrigin) {
    this.configure = configure;
    this.cookieName = cookie;
    this.authTokenName = authTokenName;
    this.restClientOrigin = restClientOrigin;
  }

  public void configure(WebSecurity web) {
    // web.ignoring().antMatchers("/**"); // Disables spring security
  }

  // FIXME: invalidate auth token after logout
  public void configure(HttpSecurity http) throws Exception {
    http.csrf()
        .disable()
        .cors()
        .configurationSource(getCorsConfigurationSource())
        .and()
        .httpBasic()
        .disable()
        .sessionManagement()
        .sessionCreationPolicy(SessionCreationPolicy.STATELESS) // RESTful service must be stateless
        .and()
        .authorizeRequests()
        .antMatchers(
            "/",
            "/spots",
            "/login",
            "/sec/auth/login",
            "/**/auth.js",
            "/**/awesome.css",
            "/**/app.js")
        .permitAll()
        .antMatchers(HttpMethod.POST, "/users")
        .permitAll()
        .anyRequest()
        .authenticated()
        .and()
        .formLogin()
        .loginPage("/login")
        .permitAll()
        .and()
        .logout()
        .logoutRequestMatcher(new AntPathRequestMatcher("/logout", "GET"))
        .logoutSuccessUrl("/")
        .deleteCookies(cookieName)
        .and()
        .apply(configure);
  }

  @Bean
  @Override
  public AuthenticationManager authenticationManagerBean() throws Exception {
    return super.authenticationManagerBean();
  }

  private CorsConfigurationSource getCorsConfigurationSource() {
    return request -> {
      CorsConfiguration configuration = new CorsConfiguration();
      configuration.addAllowedHeader(authTokenName);
      configuration.addAllowedHeader("Content-Type");
      configuration.addAllowedHeader("Content");

      configuration.addAllowedMethod("*");

      configuration.addAllowedOrigin(restClientOrigin);

      configuration.addExposedHeader(authTokenName);
      return configuration;
    };
  }
}
