package ru.yandex.dimas224.util.jackson;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.jayway.jsonpath.JsonPath;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletRequest;
import lombok.NonNull;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

public class JsonPathArgumentResolver implements HandlerMethodArgumentResolver {

  private static final String JSONBODYATTRIBUTE = "JSON_REQUEST_BODY";

  // ImmutableMap supposed to be here (JDK11)
  // Contains all primitive types as keys and their wrappers as values
  private static final Map<Class<?>, Class<?>> PRIMITIVES_WRAP = new HashMap<>();

  static {
    PRIMITIVES_WRAP.put(int.class, Integer.class);
    PRIMITIVES_WRAP.put(byte.class, Byte.class);
    PRIMITIVES_WRAP.put(char.class, Character.class);
    PRIMITIVES_WRAP.put(double.class, Double.class);
    PRIMITIVES_WRAP.put(float.class, Float.class);
    PRIMITIVES_WRAP.put(long.class, Long.class);
    PRIMITIVES_WRAP.put(short.class, Short.class);
    PRIMITIVES_WRAP.put(boolean.class, Boolean.class);
    PRIMITIVES_WRAP.put(void.class, Void.class);
  }

  @Override
  public boolean supportsParameter(MethodParameter parameter) {
    return parameter.hasParameterAnnotation(JsonArg.class);
  }

  @Override
  public Object resolveArgument(
      @NonNull MethodParameter parameter,
      ModelAndViewContainer mavContainer,
      @NonNull NativeWebRequest webRequest,
      WebDataBinderFactory binderFactory)
      throws Exception {
    final String body = getRequestBody(webRequest);
    final Object value =
        JsonPath.read(
            body, getValueName(parameter.getParameterAnnotation(JsonArg.class), parameter));
    final Class<?> clazz = parameter.getParameterType();
    try {
      return tryToInstantiate(clazz, value);
    } catch (Exception exception) {
      return value;
    }
  }

  // Extracts body from given request
  private String getRequestBody(final NativeWebRequest webRequest) {
    final HttpServletRequest servletRequest = webRequest.getNativeRequest(HttpServletRequest.class);
    final String jsonBody = (String) servletRequest.getAttribute(JSONBODYATTRIBUTE);
    if (jsonBody == null) {
      try {
        final String body =
            new BufferedReader(new InputStreamReader(servletRequest.getInputStream()))
                .lines()
                .collect(Collectors.joining("\n"));
        servletRequest.setAttribute(JSONBODYATTRIBUTE, body);
        return body;
      } catch (IOException e) {
        throw new RuntimeException(e);
      }
    }
    return jsonBody;
  }

  // Extracts parameter name: extracts value from JsonArg, if value is present;
  // otherwise returns parameter name
  private String getValueName(final JsonArg arg, final MethodParameter parameter) {
    if (arg == null) {
      return parameter.getParameterName();
    }

    String argValue = arg.value();
    if (argValue.isEmpty()) {
      return parameter.getParameterName();
    } else {
      return argValue;
    }
  }

  // Extracts all JsonCreator methods
  private List<Method> findAnnotatedMethods(
      final Class<?> type, final Class<? extends Annotation> annotation) {
    final List<Method> methods = new ArrayList<>();
    Class<?> clazz = type;
    while (clazz != Object.class) {
      for (final Method method : clazz.getDeclaredMethods()) {
        if (method.isAnnotationPresent(annotation)) {
          methods.add(method);
        }
      }
      clazz = clazz.getSuperclass();
    }
    return methods;
  }

  // Resolves JsonCreator methods
  private Optional<Method> resolveCreators(final List<Method> creators, Object argument) {
    if (creators.size() == 0) {
      return Optional.empty();
    }

    for (Method method : creators) {
      Parameter[] parameters = method.getParameters();
      if (parameters.length == 1) {
        Class<?> parameterClass = parameters[0].getType();
        try {
          parameterClass.cast(argument);
          return Optional.of(method);
        } catch (Exception exception) {
          if (parameterClass.isPrimitive()) {
            if (argument.getClass().isAssignableFrom(PRIMITIVES_WRAP.get(parameterClass))) {
              return Optional.of(method);
            }
          }
        }
      }
    }

    return Optional.empty();
  }

  // Checks that creator enabled
  private boolean creatorCanBeUsed(JsonCreator annotation) {
    return annotation.mode() != JsonCreator.Mode.DISABLED;
  }

  // Tries to create new instance using JsonCreator
  private Optional<Object> tryToUseCreators(Class<?> clazz, Object value)
      throws InvocationTargetException, IllegalAccessException {
    Optional<Method> creator =
        resolveCreators(findAnnotatedMethods(clazz, JsonCreator.class), value);
    if (creator.isPresent()) {
      Method method = creator.get();
      if (creatorCanBeUsed(method.getAnnotation(JsonCreator.class))) {
        return Optional.of(method.invoke(null, new Object[]{value}));
      }
    }
    return Optional.empty();
  }

  // Tries to create new instance using constructor, Enum.valueOf or value itself
  private Object tryToInstantiate(Class<?> clazz, Object value)
      throws NoSuchMethodException, InvocationTargetException, InstantiationException,
          IllegalAccessException {
    Optional<?> result = tryToUseCreators(clazz, value);
    if (result.isPresent()) {
      return result.get();
    }

    if (clazz.isInstance(value)) {
      return value;
    } else if (clazz.isEnum()) {
      return Enum.valueOf((Class<Enum>) clazz, (String) value);
    } else {
      return clazz.getConstructor(value.getClass()).newInstance(value);
    }
  }
}
