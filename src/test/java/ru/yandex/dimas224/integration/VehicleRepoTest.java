package ru.yandex.dimas224.integration;

import ru.yandex.dimas224.bootloader.FirstProjectApplication;
import ru.yandex.dimas224.repo.VehicleRepo;
import ru.yandex.dimas224.util.VehicleStatus;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import static org.assertj.core.api.Assertions.assertThat;

@ActiveProfiles("test")
@SpringBootTest(classes = FirstProjectApplication.class)
class VehicleRepoTest {

  @Autowired
  private VehicleRepo vehicleRepo;

  @Test
  void shouldFindByNumberAndStatusNot() {
    assertThat(vehicleRepo.findByNumberAndStatusNot("1_NEW", VehicleStatus.DELETED)).isPresent();
    assertThat(vehicleRepo.findByNumberAndStatusNot("1_USER_APPROVED", VehicleStatus.DELETED)).isPresent();
    assertThat(vehicleRepo.findByNumberAndStatusNot("2_USER_APPROVED", VehicleStatus.DELETED)).isPresent();
    assertThat(vehicleRepo.findByNumberAndStatusNot("1_DISAPPROVED", VehicleStatus.DELETED)).isPresent();
    assertThat(vehicleRepo.findByNumberAndStatusNot("2_DELETED", VehicleStatus.DELETED)).isNotPresent();
  }

  @Test
  void shouldFindByUserIdAndStatusNot() {
    assertThat(vehicleRepo.findByUserIdAndStatusNot(1, VehicleStatus.NEW))
            .isNotEmpty()
            .hasSize(5);
    assertThat(vehicleRepo.findByUserIdAndStatusNot(2, VehicleStatus.APPROVED))
            .isNotEmpty()
            .hasSize(2);
    assertThat(vehicleRepo.findByUserIdAndStatusNot(1, VehicleStatus.DISAPPROVED))
            .isNotEmpty()
            .hasSize(4);
    assertThat(vehicleRepo.findByUserIdAndStatusNot(2, VehicleStatus.DELETED))
            .isNotEmpty()
            .hasSize(1);
  }

  @Test
  void shouldFindByStatus() {
    assertThat(vehicleRepo.findByStatus(VehicleStatus.NEW))
            .isNotEmpty()
            .hasSize(259);
    assertThat(vehicleRepo.findByStatus(VehicleStatus.APPROVED))
            .isNotEmpty()
            .hasSize(244);
    assertThat(vehicleRepo.findByStatus(VehicleStatus.DISAPPROVED))
            .isNotEmpty()
            .hasSize(252);
    assertThat(vehicleRepo.findByStatus(VehicleStatus.DELETED))
            .isNotEmpty()
            .hasSize(250);
  }

  @Test
  void shouldFindByStatusNot() {
    assertThat(vehicleRepo.findByStatusNot(VehicleStatus.NEW))
            .isNotEmpty()
            .hasSize(746);
    assertThat(vehicleRepo.findByStatusNot(VehicleStatus.APPROVED))
            .isNotEmpty()
            .hasSize(761);
    assertThat(vehicleRepo.findByStatusNot(VehicleStatus.DISAPPROVED))
            .isNotEmpty()
            .hasSize(753);
    assertThat(vehicleRepo.findByStatusNot(VehicleStatus.DELETED))
            .isNotEmpty()
            .hasSize(755);
  }
}
