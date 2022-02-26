package ru.yandex.dimas224.controller;

import ru.yandex.dimas224.entity.Spot;
import ru.yandex.dimas224.service.SpotService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/spots")
public class SpotController {
  private final SpotService spotService;

  public SpotController(SpotService spotService) {
    this.spotService = spotService;
  }

  @GetMapping
  public ResponseEntity<List<Spot>> findMany() {
    return ResponseEntity.ok(spotService.findMany());
  }

  @PreAuthorize("hasRole('ADMIN')")
  @PostMapping
  public ResponseEntity create(@Valid @RequestBody Spot spot) {
    return ResponseEntity.status(HttpStatus.CREATED).body(spotService.create(spot));
  }

  @PreAuthorize("hasRole('ADMIN')")
  @DeleteMapping("/{id}")
  public ResponseEntity delete(@PathVariable Integer id) {
    spotService.delete(id);
    return ResponseEntity.noContent().build();
  }
}
