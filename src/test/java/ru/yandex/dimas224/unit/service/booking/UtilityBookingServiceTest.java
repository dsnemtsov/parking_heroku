package ru.yandex.dimas224.unit.service.booking;

import ru.yandex.dimas224.entity.Booking;
import ru.yandex.dimas224.repo.BookingRepo;
import ru.yandex.dimas224.service.booking.UtilityBookingService;
import java.util.Arrays;
import java.util.List;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertIterableEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

public class UtilityBookingServiceTest {
  private final BookingRepo bookingRepo = mock(BookingRepo.class);

  private final UtilityBookingService service = new UtilityBookingService(bookingRepo);

  @Test
  void shouldFindAllExpiredByUserId() {
    List<Booking> list = Arrays.asList(new Booking(), new Booking(), new Booking());

    when(bookingRepo.findAllByEndBeforeAndUserId(any(), anyInt())).thenReturn(list);

    Iterable<Booking> received = service.findAllExpiredByUserId(1);
    assertIterableEquals(list, received);
  }

  @Test
  void shouldFindAllActiveByUserId() {
    List<Booking> list = Arrays.asList(new Booking(), new Booking(), new Booking());

    when(bookingRepo.findAllByEndAfterAndUserId(any(), anyInt()))
            .thenReturn(list);

    Iterable<Booking> received = service.findAllActiveByUserId(1);
    assertIterableEquals(list, received);
  }
}
