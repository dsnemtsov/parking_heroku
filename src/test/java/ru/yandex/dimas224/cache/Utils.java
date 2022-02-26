package ru.yandex.dimas224.cache;

import ru.yandex.dimas224.repo.SpotRepo;
import ru.yandex.dimas224.repo.UserRepo;
import ru.yandex.dimas224.repo.VehicleRepo;
import ru.yandex.dimas224.util.VehicleStatus;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class Utils {
  private static final int ITERATIONS_NUMBER = 1000;
  // filename if L2 cache enabled: cached
  // filename if L2 cache disabled: noncached
  // cache properties: use_second_level_cache and use_query_cache
  private FileWriter writer;

  private final SpotRepo spotRepo;
  private final UserRepo userRepo;
  private final VehicleRepo vehicleRepo;

  public Utils(
          final SpotRepo spotRepo, final VehicleRepo vehicleRepo, final UserRepo userRepo, final FileWriter writer) {
    this.spotRepo = spotRepo;
    this.userRepo = userRepo;
    this.vehicleRepo = vehicleRepo;
    this.writer = writer;
  }

  private void realTest(String fieldName, Object object, Method method, Object... parameters)
          throws IOException, InvocationTargetException, IllegalAccessException {
    int averageTime = 0;
    for (int counter = 0; counter < ITERATIONS_NUMBER; ++counter) {
      long begin = System.currentTimeMillis();
      method.invoke(object, parameters);
      long end = System.currentTimeMillis();
      averageTime += end - begin;
    }
    writer.write(String.format("%s: %f\n", fieldName, (double) averageTime / ITERATIONS_NUMBER));
  }

  public void spotRepoFindByActiveTrueTest() throws Exception {
    realTest(
            "spotRepoFindByActiveTrue",
            spotRepo,
            spotRepo.getClass().getMethod("findByActive", boolean.class),
            true);
  }

  public void spotRepoFindByActiveFalseTest() throws Exception {
    realTest(
            "spotRepoFindByActiveFalse",
            spotRepo,
            spotRepo.getClass().getMethod("findByActive", boolean.class),
            false);
  }

  public void spotRepoFindByIdTest() throws Exception {
    realTest(
            "spotRepoFindById",
            spotRepo,
            spotRepo.getClass().getMethod("findById", Object.class),
            1);
  }

  public void userRepoFindAllTest() throws Exception {
    realTest("userRepoFindAll", userRepo, userRepo.getClass().getMethod("findAll"));
  }

  public void userRepoFindByIdTest() throws Exception {
    realTest(
            "userRepoFindById",
            userRepo,
            userRepo.getClass().getMethod("findById", Object.class),
            1);
  }

  public void vehicleRepoFindByStatusTest() throws Exception {
    realTest(
            "vehicleRepoFindByStatusTest",
            vehicleRepo,
            vehicleRepo.getClass().getMethod("findByStatus", VehicleStatus.class),
            VehicleStatus.APPROVED);
  }

  public void vehicleRepoFindByStatusNotTest() throws Exception {
    realTest(
            "vehicleRepoFindByStatusNot",
            vehicleRepo,
            vehicleRepo.getClass().getMethod("findByStatusNot", VehicleStatus.class),
            VehicleStatus.APPROVED);
  }

  public void vehicleRepoFindByIdTest() throws Exception {
    realTest(
            "vehicleRepoFindById",
            vehicleRepo,
            vehicleRepo.getClass().getMethod("findById", Object.class),
            1);
  }
}
