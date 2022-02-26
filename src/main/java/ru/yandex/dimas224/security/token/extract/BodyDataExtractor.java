package ru.yandex.dimas224.security.token.extract;

import ru.yandex.dimas224.util.AuthRequestData;
import java.util.Arrays;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletRequest;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;

@Component
public class BodyDataExtractor implements AuthRequestDataExtractor {
  @Override
  public Optional<AuthRequestData> extract(HttpServletRequest request) {
    String contentType = request.getHeader(HttpHeaders.CONTENT_TYPE);
    if (!(contentType != null
        && contentType.startsWith(MediaType.APPLICATION_FORM_URLENCODED.toString()))) {
      return Optional.empty();
    }

    try {
      Map<String, String> data =
          request
              .getReader()
              .lines()
              .flatMap(value -> Arrays.stream(value.split("&")))
              .map(value -> value.split("="))
              .collect(Collectors.toMap(value -> value[0], value -> value[1]));
      if (data.containsKey("username") && data.containsKey("password")) {
        return Optional.of(new AuthRequestData(data.get("username"), data.get("password")));
      }
    } catch (Exception e) {
      return Optional.empty();
    }
    return Optional.empty();
  }
}
