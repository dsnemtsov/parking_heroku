package ru.yandex.dimas224.unit.controller;

import ru.yandex.dimas224.controller.SpotController;
import ru.yandex.dimas224.entity.Spot;
import ru.yandex.dimas224.service.SpotService;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.notNull;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class SpotControllerTest {

  private final SpotService service = mock(SpotService.class);
  private final SpotController controller = new SpotController(service);

  @Test
  void shouldFindMany() {
    ResponseEntity<List<Spot>> response = controller.findMany();

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.OK);
    assertThat(response.getBody()).isNotNull();
    verify(service).findMany();
  }

  @Test
  void shouldCreate() {
    when(service.create(notNull())).thenReturn(new Spot());

    ResponseEntity<?> response = controller.create(new Spot());

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.CREATED);
    assertThat(response.getBody()).isNotNull();
  }

  @Test
  void shouldDelete() {
    ResponseEntity<?> response = controller.delete(1);

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.NO_CONTENT);
    verify(service).delete(1);
  }
}
