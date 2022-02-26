package ru.yandex.dimas224.unit.controller;

import ru.yandex.dimas224.controller.VehicleController;
import ru.yandex.dimas224.entity.Vehicle;
import ru.yandex.dimas224.service.VehicleService;
import ru.yandex.dimas224.util.VehicleStatus;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.notNull;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

public class VehicleControllerTest {
  private final VehicleService service = mock(VehicleService.class);
  private final VehicleController controller = new VehicleController(service);

  @Test
  void shouldCreate() {
    when(service.create(notNull(), anyInt())).thenReturn(new Vehicle());

    ResponseEntity response = controller.create("", 0);

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.CREATED);
    assertThat(response.getBody()).isNotNull();
  }

  @Test
  void shouldFindByUserId() {
    ResponseEntity<List<Vehicle>> response = controller.findByUserId(1);

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.OK);
    assertThat(response.getBody()).isNotNull();
    verify(service).findByUserId(1);
  }

  @Test
  void shouldFindByNew() {
    ResponseEntity<List<Vehicle>> response = controller.findByStatus(true);

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.OK);
    assertThat(response.getBody()).isNotNull();
    verify(service).findByStatus(true);
  }

  @Test
  void shouldFindByNotNew() {
    ResponseEntity<List<Vehicle>> response = controller.findByStatus(false);

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.OK);
    assertThat(response.getBody()).isNotNull();
    verify(service).findByStatus(false);
  }

  @Test
  void shouldChangeStatus() {
    ResponseEntity response = controller.changeStatus(VehicleStatus.NEW, 0);

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.NO_CONTENT);
    verify(service).changeStatus(notNull(), anyInt());
  }
}
