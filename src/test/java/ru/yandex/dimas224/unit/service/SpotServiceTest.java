package ru.yandex.dimas224.unit.service;

import ru.yandex.dimas224.entity.Spot;
import ru.yandex.dimas224.exception.AlreadyExistsException;
import ru.yandex.dimas224.exception.NotFoundException;
import ru.yandex.dimas224.exception.SpotAlreadyDeletedException;
import ru.yandex.dimas224.repo.SpotRepo;
import ru.yandex.dimas224.service.SpotService;
import ru.yandex.dimas224.service.booking.UtilityBookingService;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.springframework.http.HttpStatus;
import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatExceptionOfType;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class SpotServiceTest {

  private final SpotRepo repo = mock(SpotRepo.class);
  private final UtilityBookingService utilityBookingService = mock(UtilityBookingService.class);
  private final SpotService service = new SpotService(repo, utilityBookingService);

  @Test
  void shouldFindMany() {
    List<Spot> spots = service.findMany();

    assertThat(spots).isNotNull();
    verify(repo).findByActive(true);
  }

  @Test
  void shouldCreate() {
    Spot spot = new Spot();
    spot.setNumber("1");
    when(repo.findByActiveAndNumber(true, spot.getNumber())).thenReturn(Optional.empty());

    service.create(spot);

    verify(repo).save(spot);
    assertThat(spot.isActive()).isTrue();
  }

  @Test
  void shouldNotCreate() {
    Spot spot = new Spot();
    when(repo.findByActiveAndNumber(eq(true), any())).thenReturn(Optional.of(new Spot()));

    assertThatExceptionOfType(AlreadyExistsException.class)
            .isThrownBy(() -> service.create(spot))
            .withMessage("Spot already exists")
            .matches(e -> e.getHttpStatus() == HttpStatus.BAD_REQUEST);
  }

  @Test
  void shouldDelete() {
    Spot spot = new Spot(1, "number", true);
    when(repo.findById(1)).thenReturn(Optional.of(spot));
    when(repo.save(any())).thenReturn(spot);
    when(utilityBookingService.closeBookingsBySpotId(anyInt())).thenReturn(1);
    service.delete(1);

    verify(repo).findById(1);
    verify(repo).save(spot);
    assertThat(spot.isActive()).isFalse();
  }

  @Test
  void shouldNotDeleteIfNotFound() {
    when(repo.findById(1)).thenReturn(Optional.empty());

    assertThatExceptionOfType(NotFoundException.class)
            .isThrownBy(() -> service.delete(1))
            .withMessage("Spot not found")
            .matches(e -> e.getHttpStatus() == HttpStatus.NOT_FOUND);
  }

  @Test
  void shouldNotDeleteIfAlreadyDeleted() {
    when(repo.findById(1)).thenReturn(Optional.of(new Spot(1, "", false)));

    assertThatExceptionOfType(SpotAlreadyDeletedException.class)
            .isThrownBy(() -> service.delete(1))
            .withMessage("Spot already deleted")
            .matches(e -> e.getHttpStatus() == HttpStatus.BAD_REQUEST);
  }
}
