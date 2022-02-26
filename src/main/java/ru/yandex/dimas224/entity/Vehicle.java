package ru.yandex.dimas224.entity;

import ru.yandex.dimas224.util.VehicleStatus;
import javax.persistence.Cacheable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "vehicles")
@Setter
@Getter
@NoArgsConstructor
@Cacheable
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class Vehicle {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;

  private String number;

  /**
   * 0 - NEW - default
   * 1 - APPROVED - approved by admin
   * 2 - DISAPPROVED - disapproved by admin
   * 3 - DELETED - deleted
   */
  @Enumerated(EnumType.ORDINAL)
  private VehicleStatus status;

  @Column(name = "user_id")
  private int userId;

  public Vehicle(String number, VehicleStatus status, int userId) {
    this.number = number;
    this.status = status;
    this.userId = userId;
  }
}
