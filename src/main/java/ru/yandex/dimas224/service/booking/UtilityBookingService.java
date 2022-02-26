package ru.yandex.dimas224.service.booking;

import ru.yandex.dimas224.entity.Booking;
import ru.yandex.dimas224.repo.BookingRepo;
import java.time.Instant;
import org.springframework.stereotype.Service;

@Service
public class UtilityBookingService {
  private final BookingRepo bookingRepo;

  public UtilityBookingService(BookingRepo bookingRepo) {
    this.bookingRepo = bookingRepo;
  }

  public Iterable<Booking> findAllExpiredByUserId(int userId) {
    return bookingRepo.findAllByEndBeforeAndUserId(Instant.now(), userId);
  }

  public Iterable<Booking> findAllActiveByUserId(int userId) {
    return bookingRepo.findAllByEndAfterAndUserId(Instant.now(), userId);
  }

  public int closeBookingsByVehicleId(int vehicleId) {
    return bookingRepo.deleteAllByVehicleIdAndBeginAfter(vehicleId, Instant.now());
  }

  public int closeBookingsBySpotId(int spotId) {
    return bookingRepo.deleteAllBySpotIdAndBeginAfter(spotId, Instant.now());
  }
}
