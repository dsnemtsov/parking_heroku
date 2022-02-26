package ru.yandex.dimas224.cache;

import ru.yandex.dimas224.bootloader.FirstProjectApplication;
import ru.yandex.dimas224.repo.SpotRepo;
import ru.yandex.dimas224.repo.UserRepo;
import ru.yandex.dimas224.repo.VehicleRepo;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.TestPropertySource;
import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest(classes = FirstProjectApplication.class)
@ActiveProfiles("test")
@Disabled
@TestPropertySource(properties = {
        "spring.jpa.properties.hibernate.use_second_level_cache=false",
        "spring.jpa.properties.hibernate.cache.use_query_cache=false"
})
public class CacheDisabledTest {
  private static final String FILENAME = "noncached";
  private static FileWriter writer;
  private final Utils utils;

  @BeforeAll
  public static void createFileWriter() throws IOException {
    File file = new File(FILENAME);
    if (file.exists()) {
      assertThat(file.delete()).isTrue();
    }

    assertThat(file.createNewFile()).isTrue();
    assertThat(file.setWritable(true)).isTrue();
    writer = new FileWriter(FILENAME);
  }

  @AfterAll
  public static void close() throws IOException {
    writer.close();
  }


  @Autowired
  public CacheDisabledTest(
          final SpotRepo spotRepo, final VehicleRepo vehicleRepo, final UserRepo userRepo) {
    this.utils = new Utils(spotRepo, vehicleRepo, userRepo, writer);
  }

  @Test
  public void spotRepoFindByActiveTrueTest() throws Exception {
    utils.spotRepoFindByActiveTrueTest();
  }

  @Test
  public void spotRepoFindByActiveFalseTest() throws Exception {
    utils.spotRepoFindByActiveFalseTest();
  }

  @Test
  public void spotRepoFindByIdTest() throws Exception {
    utils.spotRepoFindByIdTest();
  }

  @Test
  public void userRepoFindAllTest() throws Exception {
    utils.userRepoFindAllTest();
  }

  @Test
  public void userRepoFindByIdTest() throws Exception {
    utils.userRepoFindByIdTest();
  }

  @Test
  public void vehicleRepoFindByStatusTest() throws Exception {
    utils.vehicleRepoFindByStatusTest();
  }

  @Test
  public void vehicleRepoFindByStatusNotTest() throws Exception {
    utils.vehicleRepoFindByStatusNotTest();
  }

  @Test
  public void vehicleRepoFindByIdTest() throws Exception {
    utils.vehicleRepoFindByIdTest();
  }
}
