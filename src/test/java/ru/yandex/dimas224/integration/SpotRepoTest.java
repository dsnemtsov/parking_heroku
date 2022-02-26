package ru.yandex.dimas224.integration;

import ru.yandex.dimas224.bootloader.FirstProjectApplication;
import ru.yandex.dimas224.repo.SpotRepo;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import static org.assertj.core.api.Assertions.assertThat;

@ActiveProfiles("test")
@SpringBootTest(classes = FirstProjectApplication.class)
class SpotRepoTest {

  @Autowired
  private SpotRepo spotRepo;

  @Test
  void shouldFindByActiveAndNumber() {
    assertThat(spotRepo.findByActiveAndNumber(true, "1A")).isPresent();
    assertThat(spotRepo.findByActiveAndNumber(true, "3A")).isPresent();
    assertThat(spotRepo.findByActiveAndNumber(false, "2A")).isPresent();
    assertThat(spotRepo.findByActiveAndNumber(false, "1A")).isNotPresent();
  }

  @Test
  void shouldFindByActive() {
    assertThat(spotRepo.findByActive(true))
            .hasSize(496)
            .anySatisfy(spot -> {
              assertThat(spot.getNumber()).isEqualTo("1A");
              assertThat(spot.isActive()).isTrue();
            });
    assertThat(spotRepo.findByActive(false))
            .hasSize(508)
            .anySatisfy(spot -> {
              assertThat(spot.getNumber()).isEqualTo("2A");
              assertThat(spot.isActive()).isFalse();
            });
  }
}
