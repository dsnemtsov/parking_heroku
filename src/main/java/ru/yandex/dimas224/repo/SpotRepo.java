package ru.yandex.dimas224.repo;

import ru.yandex.dimas224.entity.Spot;
import java.util.List;
import java.util.Optional;
import javax.persistence.QueryHint;
import org.springframework.data.jpa.repository.QueryHints;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import static org.hibernate.jpa.QueryHints.HINT_CACHEABLE;

@Repository
public interface SpotRepo extends CrudRepository<Spot, Integer> {
  Optional<Spot> findByActiveAndNumber(boolean isActive, String number);

  @QueryHints(@QueryHint(name = HINT_CACHEABLE, value = "true"))
  List<Spot> findByActive(boolean isActive);

  Optional<Spot> findByIdAndActive(int id, boolean isActive);

  List<Spot> findByIdNotInAndActive(List<Integer> spotsId, boolean isActive);
}
