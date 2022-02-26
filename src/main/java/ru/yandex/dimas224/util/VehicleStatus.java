package ru.yandex.dimas224.util;

import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * Статус зарегистированного транспортного средства.
 * NEW - только добавлен и не просмотрен администратором
 * APPROVED - одобрен администратором
 * DISAPPROVED - не одобрен администратором
 * DELETED - удален (пользователем или администратором)
 */
public enum VehicleStatus {
  NEW,
  APPROVED,
  DISAPPROVED,
  DELETED;

  @JsonCreator
  public static VehicleStatus of(int status) {
    VehicleStatus[] values = VehicleStatus.values();
    if (status < 0 || status >= values.length) {
      throw new EnumConstantNotPresentException(VehicleStatus.class, String.format("For status: %d", status));
    }
    return values[status];
  }
}
