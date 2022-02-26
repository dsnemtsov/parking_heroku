package ru.yandex.dimas224.integration;

import ru.yandex.dimas224.bootloader.FirstProjectApplication;
import ru.yandex.dimas224.entity.Vehicle;
import ru.yandex.dimas224.repo.VehicleRepo;
import ru.yandex.dimas224.util.VehicleStatus;
import com.google.gson.Gson;
import java.io.StringReader;
import org.hamcrest.core.Is;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.patch;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.header;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@ActiveProfiles("test")
@SpringBootTest(classes = FirstProjectApplication.class)
@AutoConfigureMockMvc()
class VehicleControllerTest {

  @Autowired
  private MockMvc mockMvc;
  @Autowired
  private VehicleRepo vehicleRepo;

  @Test
  void basicUsageAsAdmin() throws Exception {
    mockMvc
            .perform(get("/login"))
            .andExpect(status().isOk());

    // Login as ADMIN
    String token =
            mockMvc
                    .perform(
                            post("/sec/auth/login")
                                    .content("username=admin&password=1234")
                                    .contentType(MediaType.APPLICATION_FORM_URLENCODED))
                    .andExpect(status().isOk())
                    .andExpect(header().exists("X-Auth-Token"))
                    .andReturn()
                    .getResponse()
                    .getHeader("X-Auth-Token");

    // View vehicles of User with ID = 1
    mockMvc
            .perform(get("/users/1/vehicles").header("X-Auth-Token", token))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.length()", Is.is(6)))
            .andExpect(jsonPath("[0].id", Is.is(1)))
            .andExpect(jsonPath("[0].number", Is.is("1_NEW")))
            .andExpect(jsonPath("[0].status", Is.is("NEW")))
            .andExpect(jsonPath("[0].userId", Is.is(1)))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));

    // View vehicles with Status New
    mockMvc
            .perform(get("/vehicles?isNew=true").header("X-Auth-Token", token))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.length()", Is.is(259)))
            .andExpect(jsonPath("[0].id", Is.is(1)))
            .andExpect(jsonPath("[0].number", Is.is("1_NEW")))
            .andExpect(jsonPath("[0].status", Is.is("NEW")))
            .andExpect(jsonPath("[0].userId", Is.is(1)))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));

    // View vehicles with Status Not Deleted
    mockMvc
            .perform(get("/vehicles?isNew=false").header("X-Auth-Token", token))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.length()", Is.is(755)))
            .andExpect(jsonPath("[0].id", Is.is(1)))
            .andExpect(jsonPath("[0].number", Is.is("1_NEW")))
            .andExpect(jsonPath("[0].status", Is.is("NEW")))
            .andExpect(jsonPath("[0].userId", Is.is(1)))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));

    // Create vehicle
    String body =
            mockMvc
                    .perform(
                            post("/users/1/vehicles")
                                    .header("X-Auth-Token", token)
                                    .content("{\"number\":\"number\"}")
                                    .contentType(MediaType.APPLICATION_JSON))
                    .andExpect(status().isCreated())
                    .andExpect(jsonPath("$.length()", Is.is(4)))
                    .andExpect(jsonPath("$.number", Is.is("number")))
                    .andExpect(jsonPath("$.status", Is.is("NEW")))
                    .andExpect(jsonPath("$.userId", Is.is(1)))
                    .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                    .andReturn()
                    .getResponse()
                    .getContentAsString();

    Vehicle vehicle = new Gson().fromJson(new StringReader(body), Vehicle.class);

    // Change vehicle status
    mockMvc
            .perform(
                    patch("/vehicles/" + vehicle.getId())
                            .header("X-Auth-Token", token)
                            .content("{\"status\":\"APPROVED\"}")
                            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isNoContent());

    assertThat(vehicleRepo.findById(vehicle.getId()).get().getStatus())
            .isEqualTo(VehicleStatus.APPROVED);

    // Clear DB
    vehicleRepo.deleteById(vehicle.getId());
  }
}
