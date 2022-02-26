package ru.yandex.dimas224.security.token.extract;

import ru.yandex.dimas224.util.AuthRequestData;
import java.util.Optional;
import javax.servlet.http.HttpServletRequest;

public interface AuthRequestDataExtractor {
  Optional<AuthRequestData> extract(HttpServletRequest request);
}
