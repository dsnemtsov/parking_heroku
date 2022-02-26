package ru.yandex.dimas224.repo;

import ru.yandex.dimas224.entity.Vehicle;
import ru.yandex.dimas224.util.VehicleStatus;
import java.util.List;
import java.util.Optional;
import javax.persistence.QueryHint;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.QueryHints;
import static org.hibernate.jpa.QueryHints.HINT_CACHEABLE;

public interface VehicleRepo extends JpaRepository<Vehicle, Integer> {
  Optional<Vehicle> findByNumberAndStatusNot(String number, VehicleStatus status);

  @QueryHints(@QueryHint(name = HINT_CACHEABLE, value = "true"))
  List<Vehicle> findByStatus(VehicleStatus status);

  @QueryHints(@QueryHint(name = HINT_CACHEABLE, value = "true"))
  List<Vehicle> findByStatusNot(VehicleStatus status);

  List<Vehicle> findByUserIdAndStatusNot(Integer userId, VehicleStatus status);

  Optional<Vehicle> findByIdAndStatus(Integer id, VehicleStatus status);
}
