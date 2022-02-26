package ru.yandex.dimas224.unit.controller;

import ru.yandex.dimas224.controller.BookingController;
import ru.yandex.dimas224.entity.Booking;
import ru.yandex.dimas224.model.BookingModel;
import ru.yandex.dimas224.service.booking.BookingService;
import org.junit.jupiter.api.Test;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.notNull;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.time.Instant;

public class BookingControllerTest {
  private final BookingService service = mock(BookingService.class);
  private final BookingController controller = new BookingController(service);

  @Test
  void shouldCreate() {
    when(service.create(notNull(), anyInt())).thenReturn(new Booking());

    ResponseEntity<?> response = controller.create(new BookingModel(), 0);

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.CREATED);
    assertThat(response.getBody()).isNotNull();
  }

  @Test
  void shouldDelete() {
    ResponseEntity<?> response = controller.delete(1, 1);

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.NO_CONTENT);
    verify(service).delete(1, 1);
  }

  @Test
  void shouldFindFreeSpots() {
    String begin = "2032-01-10 16:00";
    String end = "2032-01-10 17:00";
    ResponseEntity<?> response = controller.findFreeSpots(begin, end);

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.OK);
    assertThat(response.getBody()).isNotNull();
    verify(service).findFreeSpots(Instant.parse("2032-01-10T16:00:00Z"), Instant.parse("2032-01-10T17:00:00Z"));
  }

  @Test
  void shouldGetBookings() {
    ResponseEntity<?> response = controller.getBookings();

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.OK);
    assertThat(response.getBody()).isNotNull();
    verify(service).findAllBookings();
  }

  @Test
  void shouldExtendBooking() {
    when(service.extend(notNull(), anyInt(), anyInt())).thenReturn(new Booking());

    ResponseEntity<?> response = controller.extendBooking(0, 1, 1);

    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.CREATED);
    assertThat(response.getBody()).isNotNull();
  }
}
