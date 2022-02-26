package ru.yandex.dimas224.unit.service.booking;

import ru.yandex.dimas224.entity.Booking;
import ru.yandex.dimas224.entity.Spot;
import ru.yandex.dimas224.entity.Vehicle;
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
import ru.yandex.dimas224.service.booking.BookingService;
import ru.yandex.dimas224.util.VehicleStatus;
import java.time.Instant;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.mockito.ArgumentCaptor;
import org.springframework.http.HttpStatus;
import org.springframework.test.util.ReflectionTestUtils;
import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatExceptionOfType;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

public class BookingServiceTest {
  private final VehicleService vehicleService = mock(VehicleService.class);
  private final SpotService spotService = mock(SpotService.class);
  private final BookingRepo bookingRepo = mock(BookingRepo.class);

  private final BookingService service = new BookingService(vehicleService, spotService, bookingRepo);

  @BeforeEach
  void init() {
    ReflectionTestUtils.setField(service, "maxActiveSize", 5);
    ReflectionTestUtils.setField(service, "minTime",  30);
    ReflectionTestUtils.setField(service, "maxTime", 720);
  }

  //create booking
  @ParameterizedTest()
  @MethodSource("invalidDatesProvider")
  void shouldThrowInvalidBookingTimeException(Instant begin, Instant end) {
    BookingModel bookingModel = new BookingModel(1, 1, begin, end);
    assertThatExceptionOfType(InvalidBookingTimeException.class)
            .isThrownBy(() -> service.create(bookingModel, 1))
            .withMessage("Invalid booking time")
            .matches(e -> e.getHttpStatus() == HttpStatus.BAD_REQUEST);
  }

  @Test
  void shouldThrowNotApprovedVehicleException() {
    BookingModel bookingModel = getBookingModelWithCorrectTimestamps();
    when(vehicleService.findByIdAndStatus(bookingModel.getSpotId(), VehicleStatus.APPROVED))
            .thenReturn(Optional.empty());
    assertThatExceptionOfType(NotApprovedVehicleException.class)
            .isThrownBy(() -> service.create(bookingModel, 1))
            .withMessage("Vehicle's status is not approved")
            .matches(e -> e.getHttpStatus() == HttpStatus.BAD_REQUEST);
  }

  @Test
  void shouldThrowNotActiveSpotException() {
    BookingModel bookingModel = getBookingModelWithCorrectTimestamps();

    getVehicleStatusCheck(bookingModel);

    when(spotService.findByIdAndActive(bookingModel.getSpotId(), true))
            .thenReturn(Optional.empty());
    assertThatExceptionOfType(NotActiveSpotException.class)
            .isThrownBy(() -> service.create(bookingModel, 1))
            .withMessage("Not active spot")
            .matches(e -> e.getHttpStatus() == HttpStatus.BAD_REQUEST);
  }

  @Test
  void shouldThrowExceededNumberOfBookingsException() {
    BookingModel bookingModel = getBookingModelWithCorrectTimestamps();

    getVehicleStatusCheck(bookingModel);
    getSpotIsActiveCheck(bookingModel);

    when(bookingRepo.countBookingsByEndAfterAndUserId(any(), anyInt())).thenReturn(5);
    assertThatExceptionOfType(ExceededNumberOfBookingsException.class)
            .isThrownBy(() -> service.create(bookingModel, 1))
            .withMessage("Number of bookings exceeded")
            .matches(e -> e.getHttpStatus() == HttpStatus.BAD_REQUEST);
  }

  @Test
  void shouldThrowSpotOccupiedException() {
    BookingModel bookingModel = getBookingModelWithCorrectTimestamps();

    getVehicleStatusCheck(bookingModel);
    getSpotIsActiveCheck(bookingModel);
    getCountNumberBookingCheck();

    when(bookingRepo.findBookingsInThisTime(bookingModel.getSpotId(),
            1,
            bookingModel.getBegin(),
            bookingModel.getEnd()))
            .thenReturn(1);
    assertThatExceptionOfType(SpotOccupiedException.class)
            .isThrownBy(() -> service.create(bookingModel, 1))
            .withMessage("This spot is occupied or you have another booking in this time")
            .matches(e -> e.getHttpStatus() == HttpStatus.BAD_REQUEST);
  }

  @Test
  void shouldCreate() {
    BookingModel bookingModel = getBookingModelWithCorrectTimestamps();

    getSpotIsActiveCheck(bookingModel);
    getVehicleStatusCheck(bookingModel);
    getCountNumberBookingCheck();
    getSpotOccupiedCheck(bookingModel);

    int userId = 1;
    service.create(bookingModel, userId);

    ArgumentCaptor<Booking> captor = ArgumentCaptor.forClass(Booking.class);
    verify(bookingRepo).save(captor.capture());
    assertThat(captor.getValue().getUserId()).isEqualTo(userId);
    assertThat(captor.getValue().getSpotId()).isEqualTo(bookingModel.getSpotId());
    assertThat(captor.getValue().getVehicleId()).isEqualTo(bookingModel.getVehicleId());
    assertThat(captor.getValue().getBegin()).isEqualTo(bookingModel.getBegin());
    assertThat(captor.getValue().getEnd()).isEqualTo(bookingModel.getEnd());
  }

  //expend booking
  @Test
  void shouldThrowNotExistBookingException() {
    when(bookingRepo.findByUserIdAndId(anyInt(), anyInt()))
            .thenReturn(Optional.empty());
    assertThatExceptionOfType(NotExistBookingException.class)
            .isThrownBy(() -> service.extend(0, anyInt(), anyInt()))
            .withMessage("Booking does not exist")
            .matches(e -> e.getHttpStatus() == HttpStatus.BAD_REQUEST);
  }

  @Test
  void shouldExtend() {
    BookingModel bookingModel = getBookingModelWithCorrectTimestamps();
    Booking booking = getValidBooking();
    when(bookingRepo.findByUserIdAndId(1, 1))
            .thenReturn(Optional.of(booking));

    getVehicleStatusCheck(bookingModel);
    getSpotIsActiveCheck(bookingModel);
    getCountNumberBookingCheck();
    getSpotOccupiedCheck(bookingModel);

    service.extend(30, 1, 1);

    ArgumentCaptor<Booking> captor = ArgumentCaptor.forClass(Booking.class);
    verify(bookingRepo).save(captor.capture());
    assertThat(captor.getValue().getUserId()).isEqualTo(1);
    assertThat(captor.getValue().getSpotId()).isEqualTo(bookingModel.getSpotId());
    assertThat(captor.getValue().getVehicleId()).isEqualTo(bookingModel.getVehicleId());
    assertThat(captor.getValue().getBegin()).isEqualTo("2032-01-10T17:00:00Z");
    assertThat(captor.getValue().getEnd()).isEqualTo("2032-01-10T17:30:00Z");
  }

  //delete booking
  @Test
  void shouldDelete() {
    Booking booking = getValidBooking();
    when(bookingRepo.findByUserIdAndId(anyInt(), anyInt()))
            .thenReturn(Optional.of(booking));
    service.delete(booking.getUserId(), booking.getId());
    verify(bookingRepo, times(1)).delete(booking);
  }

  //find free spots
  @Test
  void shouldFindFreeSpots() {
    Instant begin = Instant.parse("2032-01-10T16:00:00Z");
    Instant end = Instant.parse("2032-01-10T17:00:00Z");
    Spot spot1 = new Spot();
    Spot spot2 = new Spot();
    Spot spot3 = new Spot();
    spot1.setId(1);
    spot2.setId(2);
    spot3.setId(3);
    List<Spot> expected = Arrays.asList(spot1, spot2, spot3);

    when(bookingRepo.findOccupiedSpotsIndexes(begin, end))
            .thenReturn(Arrays.asList(1, 2, 3));
    when(spotService.findByIdNotInAndActive(any(), eq(true)))
            .thenReturn(expected);

    List<Spot> received = service.findFreeSpots(begin, end);

    assertThat(received).hasSize(3);
    verify(spotService).findByIdNotInAndActive(any(), eq(true));
  }

  // find all bookings group by spotId
  @Test
  void shouldFindAllBookingsGroupBySpotId() {
    Booking booking = getValidBooking();
    List<Booking> bookings = Arrays.asList(booking);

    when(bookingRepo.findAllByEndAfter(any())).thenReturn(bookings);

   List<Booking> received = service.findAllBookings();

    assertThat(received).isEqualTo(bookings);
  }

  private void getVehicleStatusCheck(BookingModel bookingModel) {
    when(vehicleService.findByIdAndStatus(bookingModel.getSpotId(), VehicleStatus.APPROVED))
            .thenReturn(Optional.of(new Vehicle()));
  }

  private void getSpotIsActiveCheck(BookingModel bookingModel) {
    when(spotService.findByIdAndActive(bookingModel.getSpotId(), true))
            .thenReturn(Optional.of(new Spot()));
  }

  private void getCountNumberBookingCheck() {
    when(bookingRepo.countBookingsByEndAfterAndUserId(any(), anyInt()))
            .thenReturn(1);
  }

  private void getSpotOccupiedCheck(BookingModel bookingModel) {
    when(bookingRepo.findBookingsInThisTime(eq(bookingModel.getSpotId()), eq(1), any(), any()))
            .thenReturn(0);
  }

  private BookingModel getBookingModelWithCorrectTimestamps() {
    Instant begin = Instant.parse("2032-01-10T16:00:00Z");
    Instant end = Instant.parse("2032-01-10T17:00:00Z");
    return new BookingModel(1, 1, begin, end);
  }

  private Booking getValidBooking() {
    Instant begin = Instant.parse("2032-01-10T16:00:00Z");
    Instant end = Instant.parse("2032-01-10T17:00:00Z");
    return new Booking(1, 1, 1, 1, begin, end);
  }

  private static Stream<Arguments> invalidDatesProvider() {
    return Stream.of(
            Arguments.of(Instant.parse("2020-01-10T16:00:00Z"), Instant.parse("2020-01-10T17:00:00Z")),
            Arguments.of(Instant.parse("2032-01-10T16:00:00Z"), Instant.parse("2032-01-10T16:00:00Z")),
            Arguments.of(Instant.parse("2032-01-10T16:00:00Z"), Instant.parse("2032-01-10T15:00:00Z")),
            Arguments.of(Instant.parse("2032-01-10T16:00:00Z"), Instant.parse("2032-01-10T15:00:00Z")),
            Arguments.of(Instant.parse("2032-01-10T16:00:00Z"), Instant.parse("2032-01-10T16:25:00Z")),
            Arguments.of(Instant.parse("2032-01-10T04:00:00Z"), Instant.parse("2032-01-10T17:00:00Z"))
    );
  }
}
