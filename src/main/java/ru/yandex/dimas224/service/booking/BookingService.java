package ru.yandex.dimas224.service.booking;

import ru.yandex.dimas224.entity.Booking;
import ru.yandex.dimas224.entity.Spot;
import ru.yandex.dimas224.exception.ExceededNumberOfBookingsException;
import ru.yandex.dimas224.exception.InvalidBookingTimeException;
import ru.yandex.dimas224.exception.NotActiveSpotException;
import ru.yandex.dimas224.exception.NotApprovedVehicleException;
import ru.yandex.dimas224.exception.NotExistBookingException;
import ru.yandex.dimas224.exception.SpotOccupiedException;
import ru.yandex.dimas224.model.BookingModel;
import ru.yandex.dimas224.repo.BookingRepo;
import ru.yandex.dimas224.service.SpotService;
import ru.yandex.dimas224.service.VehicleService;
import ru.yandex.dimas224.util.VehicleStatus;
import java.time.Duration;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.List;
import javax.validation.constraints.Positive;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;
// import org.springframework.transaction.annotation.Isolation;
// import org.springframework.transaction.annotation.Transactional;

@Service
@Validated
public class BookingService {
  private final VehicleService vehicleService;
  private final SpotService spotService;
  private final BookingRepo bookingRepo;

  @Value("${booking.min-time}")
  private int minTime;

  @Value("${booking.max-time}")
  private int maxTime;

  @Value("${booking.max-active-size}")
  private int maxActiveSize;

  public BookingService(
      VehicleService vehicleService, SpotService spotService, BookingRepo bookingRepo) {
    this.vehicleService = vehicleService;
    this.spotService = spotService;
    this.bookingRepo = bookingRepo;
  }

  // @Transactional(isolation = Isolation.REPEATABLE_READ)
  public Booking create(BookingModel bookingModel, int userId) {
    if (!validateBookingTime(bookingModel.getBegin(), bookingModel.getEnd())) {
      throw new InvalidBookingTimeException("Invalid booking time");
    }
    vehicleService
        .findByIdAndStatus(bookingModel.getVehicleId(), VehicleStatus.APPROVED)
        .orElseThrow(() -> new NotApprovedVehicleException("Vehicle's status is not approved"));
    spotService
        .findByIdAndActive(bookingModel.getSpotId(), true)
        .orElseThrow(() -> new NotActiveSpotException("Not active spot"));
    if (bookingRepo.countBookingsByEndAfterAndUserId(Instant.now(), userId) == maxActiveSize) {
      throw new ExceededNumberOfBookingsException("Number of bookings exceeded");
    }
    if (bookingRepo.findBookingsInThisTime(
            userId, bookingModel.getSpotId(), bookingModel.getBegin(), bookingModel.getEnd())
        != 0) {
      throw new SpotOccupiedException(
          "This spot is occupied or you have another booking in this time");
    }
    Booking booking = new Booking();
    booking.setSpotId(bookingModel.getSpotId());
    booking.setVehicleId(bookingModel.getVehicleId());
    booking.setUserId(userId);
    booking.setBegin(bookingModel.getBegin());
    booking.setEnd(bookingModel.getEnd());
    return bookingRepo.save(booking);
  }

  // @Transactional(isolation = Isolation.REPEATABLE_READ)
  public Booking extend(
      @Positive(message = "Must be positive") Integer time, int userId, int bookingId) {
    Booking booking =
        bookingRepo
            .findByUserIdAndId(userId, bookingId)
            .orElseThrow(() -> new NotExistBookingException("Booking does not exist"));
    BookingModel bookingModel =
        new BookingModel(
            booking.getSpotId(),
            booking.getVehicleId(),
            booking.getEnd(),
            booking.getEnd().plus(time, ChronoUnit.MINUTES));
    return create(bookingModel, userId);
  }

  public void delete(int userId, int bookingId) {
    Booking booking =
        bookingRepo
            .findByUserIdAndId(userId, bookingId)
            .orElseThrow(() -> new NotExistBookingException("This booking does not exist"));
    bookingRepo.delete(booking);
  }

  public List<Spot> findFreeSpots(Instant begin, Instant end) {
    if (!validateBookingTime(begin, end)) {
      throw new InvalidBookingTimeException("Invalid booking time");
    }
    List<Integer> occupiedSpotsIndexes = bookingRepo.findOccupiedSpotsIndexes(begin, end);
    return occupiedSpotsIndexes.isEmpty()
        ? spotService.findByActive(true)
        : spotService.findByIdNotInAndActive(occupiedSpotsIndexes, true);
  }

  public List<Booking> findAllBookings() {
    return bookingRepo.findAllByEndAfter(Instant.now());
  }

  private boolean validateBookingTime(Instant begin, Instant end) {
    if (begin.compareTo(end) >= 0 || begin.compareTo(Instant.now()) < 0) {
      return false;
    }
    long durationInMinutes = Duration.between(begin, end).toMinutes();
    return durationInMinutes % minTime == 0 && durationInMinutes <= maxTime;
  }
}
