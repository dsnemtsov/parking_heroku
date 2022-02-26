package ru.yandex.dimas224.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.time.Instant;
import javax.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class BookingModel {
  private int spotId;
  private int vehicleId;

  @NotNull(message = "must be not null")
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "UTC")
  private Instant begin;

  @NotNull(message = "must be not null")
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "UTC")
  private Instant end;
}
