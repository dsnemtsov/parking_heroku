package ru.yandex.dimas224.service;

import ru.yandex.dimas224.entity.Spot;
import ru.yandex.dimas224.exception.AlreadyExistsException;
import ru.yandex.dimas224.exception.NotFoundException;
import ru.yandex.dimas224.exception.SpotAlreadyDeletedException;
import ru.yandex.dimas224.repo.SpotRepo;
import ru.yandex.dimas224.service.booking.UtilityBookingService;
import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class SpotService {
  private final SpotRepo spotRepo;
  private final UtilityBookingService utilityBookingService;

  public SpotService(SpotRepo spotRepo, UtilityBookingService utilityBookingService) {
    this.spotRepo = spotRepo;
    this.utilityBookingService = utilityBookingService;
  }

  public Spot create(Spot spot) {
    if (!spotRepo.findByActiveAndNumber(true, spot.getNumber()).isPresent()) {
      spot.setActive(true);
      spotRepo.save(spot);
      return spot;
    }

    throw new AlreadyExistsException("Spot already exists");
  }

  public List<Spot> findMany() {
    return spotRepo.findByActive(true);
  }

  @Transactional
  public void delete(Integer id) {
    Spot spot = spotRepo.findById(id).orElseThrow(() -> new  NotFoundException("Spot not found"));

    if (spot.isActive()) {
      spot.setActive(false);
      utilityBookingService.closeBookingsBySpotId(spotRepo.save(spot).getId());
      return;
    }

    throw new SpotAlreadyDeletedException("Spot already deleted");
  }

  public Optional<Spot> findByIdAndActive(Integer id, boolean isActive) {
    return spotRepo.findByIdAndActive(id, isActive);
  }

  public List<Spot> findByActive(boolean isActive) {
    return spotRepo.findByActive(isActive);
  }

  public List<Spot> findByIdNotInAndActive(List<Integer> spotsId, boolean isActive) {
    return spotRepo.findByIdNotInAndActive(spotsId, isActive);
  }
}
