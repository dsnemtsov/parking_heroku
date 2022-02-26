package ru.yandex.dimas224.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import javax.persistence.Cacheable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.validator.constraints.Length;

@Entity
@Table(name = "spots")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Cacheable
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class Spot {

  private static final int MAX_NUMBER_LENGTH = 15;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;

  @NotBlank(message = "must be not blank")
  @Length(min = 1, max = MAX_NUMBER_LENGTH, message = "The '${validatedValue}' length must be between {min} and {max}")
  private String number;

  @JsonIgnore
  private boolean active;

}
