package ru.yandex.dimas224.repo;

import ru.yandex.dimas224.entity.Booking;
import java.time.Instant;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface BookingRepo extends CrudRepository<Booking, Integer> {
  @Query(
      "select count(b) "
          + "from Booking b "
          + "where ((b.spotId = :spotId) or (b.userId = :userId)) "
          + "and ((:begin <= b.begin and :end >= b.end) "
          + "or (:begin > b.begin and :begin < b.end) "
          + "or (:end > b.begin and :end < b.end) "
          + "or (:begin > b.begin and :end < b.end)) ")
  int findBookingsInThisTime(Integer userId, Integer spotId, Instant begin, Instant end);

  @Query(
      "select distinct b.spotId "
          + "from Booking b "
          + "where (:begin <= b.begin and :end >= b.end) "
          + "or (:begin > b.begin and :begin < b.end) "
          + "or (:end > b.begin and :end < b.end) "
          + "or (:begin > b.begin and :end < b.end)")
  List<Integer> findOccupiedSpotsIndexes(Instant begin, Instant end);

  int countBookingsByEndAfterAndUserId(Instant time, int userId);

  List<Booking> findAllByEndAfter(Instant time);

  Optional<Booking> findByUserIdAndId(int userId, int id);

  Iterable<Booking> findAllByEndBeforeAndUserId(Instant time, int id);

  Iterable<Booking> findAllByEndAfterAndUserId(Instant time, int id);

  int deleteAllByVehicleIdAndBeginAfter(int vehicleId, Instant time);

  int deleteAllBySpotIdAndBeginAfter(int spotId, Instant time);
}
