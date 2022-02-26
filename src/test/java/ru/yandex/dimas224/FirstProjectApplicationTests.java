package ru.yandex.dimas224;

import ru.yandex.dimas224.bootloader.FirstProjectApplication;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;

@SpringBootTest(classes = FirstProjectApplication.class)
class FirstProjectApplicationTests {

  @Autowired
  private ApplicationContext ctx;

  @Test
  void contextLoads() {}
}
