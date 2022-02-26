package ru.yandex.dimas224.bootloader;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication(scanBasePackages = "ru.yandex.dimas224")
@EnableTransactionManagement
@EnableJpaRepositories("ru.yandex.dimas224.repo")
@EntityScan("ru.yandex.dimas224.entity")
public class FirstProjectApplication {

  public static void main(String[] args) {
    SpringApplication.run(FirstProjectApplication.class, args);
  }

  /**
   * Проблема рекурсивной зависимости: если поместить это в SecurityConfiguration, при
   * инстанировании UserService возникнет проблема: SecurityConfiguration неявно использует
   * UserService, которому требуется PasswordEncoder для регистрации.
   *
   * @return PasswordEncoder для пароля пользователя
   */
  @Bean
  public PasswordEncoder passwordEncoderBean() {
    return new BCryptPasswordEncoder();
  }
}
