package ru.yandex.dimas224.repo;

import ru.yandex.dimas224.entity.User;
import java.util.Optional;
import javax.persistence.QueryHint;
import org.springframework.data.jpa.repository.QueryHints;
import org.springframework.data.repository.CrudRepository;
import static org.hibernate.jpa.QueryHints.HINT_CACHEABLE;

public interface UserRepo extends CrudRepository<User, Integer> {
  Optional<User> findByLogin(String login);

  @QueryHints(@QueryHint(name = HINT_CACHEABLE, value = "true"))
  Iterable<User> findAll();
}
