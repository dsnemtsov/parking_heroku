package ru.yandex.dimas224.integration;

import ru.yandex.dimas224.bootloader.FirstProjectApplication;
import ru.yandex.dimas224.repo.BookingRepo;
import java.time.Instant;
import java.util.stream.Stream;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import static org.assertj.core.api.Assertions.assertThat;

@ActiveProfiles("test")
@SpringBootTest(classes = FirstProjectApplication.class)
public class BookingRepoTest {

  @Autowired
  private BookingRepo bookingRepo;

  @ParameterizedTest
  @MethodSource("datesProvider")
  void shouldFindBookingsInThisTime(int userId, int spotId, Instant begin, Instant end, int expected) {
    assertThat(bookingRepo.findBookingsInThisTime(userId, spotId, begin, end)).isEqualTo(expected);
  }

  @ParameterizedTest
  @MethodSource("datesProviderForOccupiedSpotIndexes")
  void shouldFindOccupiedSpotsIndexes(Instant begin, Instant end, int expected) {
    assertThat(bookingRepo.findOccupiedSpotsIndexes(begin, end)).hasSize(expected);
  }

  @Test
  void shouldCountBookingsByEndAfterAndUserId() {
    assertThat(bookingRepo.countBookingsByEndAfterAndUserId(Instant.now(), 2)).isEqualTo(2);
    assertThat(bookingRepo.countBookingsByEndAfterAndUserId(Instant.now(), 1)).isEqualTo(1);
  }

  @Test
  void shouldFindAllByEndAfter() {
    assertThat(bookingRepo.findAllByEndAfter(Instant.now()))
            .isNotEmpty()
            .hasSize(91);
  }

  @Test
  void shouldFindByUserIdAndId() {
    assertThat(bookingRepo.findByUserIdAndId(1, 5)).isPresent();
    assertThat(bookingRepo.findByUserIdAndId(2, 1)).isPresent();
    assertThat(bookingRepo.findByUserIdAndId(2, 2)).isPresent();
    assertThat(bookingRepo.findByUserIdAndId(1, 2)).isNotPresent();
    assertThat(bookingRepo.findByUserIdAndId(1, 10)).isNotPresent();
  }

  @Test
  void shouldFindAllByEndBeforeAndUserId() {
    assertThat(bookingRepo.findAllByEndBeforeAndUserId(Instant.now(), 1))
            .isNotEmpty()
            .hasSize(3);
      assertThat(bookingRepo.findAllByEndBeforeAndUserId(Instant.now(), 2))
              .isNotEmpty()
              .hasSize(2);
      assertThat(bookingRepo.findAllByEndBeforeAndUserId(Instant.now(), 3))
              .isEmpty();
  }

  @Test
  void shouldFindAllByEndAfterAndUserId() {
    assertThat(bookingRepo.findAllByEndAfterAndUserId(Instant.now(), 1))
            .isNotEmpty()
            .hasSize(1);
      assertThat(bookingRepo.findAllByEndAfterAndUserId(Instant.now(), 2))
              .isNotEmpty()
              .hasSize(2);
  }

  private static Stream<Arguments> datesProviderForOccupiedSpotIndexes() {
    return Stream.of(
            Arguments.of(Instant.parse("2032-01-01T08:30:00Z"), Instant.parse("2032-01-01T09:30:00Z"), 1),
            Arguments.of(Instant.parse("2032-01-10T05:30:00Z"), Instant.parse("2032-01-10T06:30:00Z"), 1),
            Arguments.of(Instant.parse("2032-01-10T07:30:00Z"), Instant.parse("2032-01-10T08:00:00Z"), 1),
            Arguments.of(Instant.parse("2032-01-10T05:30:00Z"), Instant.parse("2032-01-10T08:00:00Z"), 2),
            Arguments.of(Instant.parse("2032-02-10T07:30:00Z"), Instant.parse("2032-02-10T08:00:00Z"), 0)
    );
  }

  private static Stream<Arguments> datesProvider() {
    return Stream.of(
            Arguments.of(1, 2, Instant.parse("2032-01-01T08:30:00Z"), Instant.parse("2032-01-01T09:30:00Z"), 1),
            Arguments.of(1, 2, Instant.parse("2032-01-01T07:30:00Z"), Instant.parse("2032-01-01T08:30:00Z"), 0),
            Arguments.of(1, 2, Instant.parse("2032-01-01T09:30:00Z"), Instant.parse("2032-01-01T10:30:00Z"), 0),
            Arguments.of(2, 1, Instant.parse("2032-01-10T05:30:00Z"), Instant.parse("2032-01-10T06:30:00Z"), 1),
            Arguments.of(2, 1, Instant.parse("2032-01-10T04:30:00Z"), Instant.parse("2032-01-10T05:30:00Z"), 0),
            Arguments.of(2, 1, Instant.parse("2032-01-10T06:30:00Z"), Instant.parse("2032-01-10T07:30:00Z"), 0),
            Arguments.of(2, 2, Instant.parse("2032-01-10T07:30:00Z"), Instant.parse("2032-01-10T08:00:00Z"), 1),
            Arguments.of(2, 2, Instant.parse("2032-01-10T06:30:00Z"), Instant.parse("2032-01-10T07:30:00Z"), 0),
            Arguments.of(2, 2, Instant.parse("2032-01-10T08:00:00Z"), Instant.parse("2032-01-10T09:00:00Z"), 0),
            Arguments.of(2, 3, Instant.parse("2032-01-10T07:30:00Z"), Instant.parse("2032-01-10T09:00:00Z"), 1)
    );
  }
}
