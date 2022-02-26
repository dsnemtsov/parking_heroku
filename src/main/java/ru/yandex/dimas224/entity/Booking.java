package ru.yandex.dimas224.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.time.Instant;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "bookings")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Booking {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;

  @Column(nullable = false, name = "spot_id")
  private int spotId;

  @Column(nullable = false, name = "vehicle_id")
  private int vehicleId;

  @Column(nullable = false, name = "user_id")
  private int userId;

  @Column(nullable = false)
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "UTC")
  private Instant begin;

  @Column(name = "_end", nullable = false)
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "UTC")
  private Instant end;
}
