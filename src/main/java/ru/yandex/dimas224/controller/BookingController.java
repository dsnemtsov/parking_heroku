package ru.yandex.dimas224.controller;

import ru.yandex.dimas224.entity.Booking;
import ru.yandex.dimas224.entity.Spot;
import ru.yandex.dimas224.model.BookingModel;
import ru.yandex.dimas224.service.booking.BookingService;
import ru.yandex.dimas224.util.jackson.JsonArg;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BookingController {
  private final BookingService bookingService;

  public BookingController(BookingService bookingService) {
    this.bookingService = bookingService;
    ObjectMapper objectMapper = new ObjectMapper();
    JavaTimeModule module = new JavaTimeModule();
    objectMapper.registerModule(module);
  }

  @PostMapping("/users/{user_id}/bookings")
  public ResponseEntity<Booking> create(
          @Valid @RequestBody BookingModel bookingModel, @PathVariable("user_id") int userId) {
    return ResponseEntity.status(HttpStatus.CREATED)
        .body(bookingService.create(bookingModel, userId));
  }

  @DeleteMapping("/users/{user_id}/bookings/{booking_id}")
  public ResponseEntity<?> delete(
      @PathVariable("user_id") int userId, @PathVariable("booking_id") int bookingId) {
    bookingService.delete(userId, bookingId);
    return ResponseEntity.noContent().build();
  }

  @GetMapping("/bookings")
  public ResponseEntity<List<Spot>> findFreeSpots(
      @RequestParam String begin, @RequestParam String end) {
    return ResponseEntity.ok().body(bookingService.findFreeSpots(toInstant(begin), toInstant(end)));
  }

  private Instant toInstant(String time) {
    return LocalDateTime.parse(time, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"))
        .toInstant(ZoneOffset.UTC);
  }

  @PreAuthorize("hasRole('ADMIN')")
  @GetMapping("/bookings/all")
  public ResponseEntity<List<Booking>> getBookings() {
    return ResponseEntity.ok().body(bookingService.findAllBookings());
  }

  @PostMapping("/users/{user_id}/bookings/{booking_id}/extend")
  public ResponseEntity<Booking> extendBooking(
      @JsonArg("time") Integer time,
      @PathVariable("user_id") int userId,
      @PathVariable("booking_id") int bookingId) {
    return ResponseEntity.status(HttpStatus.CREATED).body(bookingService.extend(time, userId, bookingId));
  }
}
