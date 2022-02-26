package ru.yandex.dimas224.integration;

import ru.yandex.dimas224.bootloader.FirstProjectApplication;
import ru.yandex.dimas224.entity.Spot;
import ru.yandex.dimas224.repo.SpotRepo;
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
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.header;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;

@ActiveProfiles("test")
@SpringBootTest(classes = FirstProjectApplication.class)
@AutoConfigureMockMvc()
class SpotControllerTest {

  @Autowired
  private MockMvc mockMvc;
  @Autowired
  private SpotRepo spotRepo;

  @Test
  void shouldGetActiveSpotsAndCreateSpotAndDeleteSpot() throws Exception {
    // List active spots
    mockMvc.perform(get("/spots"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.length()", Is.is(496)))
            .andExpect(jsonPath("[0].id", Is.is(1)))
            .andExpect(jsonPath("[0].number", Is.is("1A")))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));

    // Login as ADMIN
    String token = mockMvc.perform(post("/sec/auth/login")
                    .content("username=admin&password=1234")
                    .contentType(MediaType.APPLICATION_FORM_URLENCODED))
            .andExpect(status().isOk())
            .andExpect(header().exists("X-Auth-Token"))
            .andReturn().getResponse().getHeader("X-Auth-Token");

    // Create a new spot
    String body = mockMvc.perform(post("/spots")
                    .header("X-Auth-Token", token)
                    .content("{\"number\":\"number\"}")
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isCreated())
            .andExpect(jsonPath("$.number", Is.is("number")))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON))
            .andReturn().getResponse().getContentAsString();

    Spot spot = new Gson().fromJson(new StringReader(body), Spot.class);

    // Delete created spot
    mockMvc.perform(delete(String.format("/spots/%d", spot.getId()))
                    .header("X-Auth-Token", token)
                    .content("{\"number\":\"number\"}")
                    .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isNoContent());

    // Check that spot has been deleted
    mockMvc.perform(get("/spots"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.length()", Is.is(496)))
            .andExpect(content().contentType(MediaType.APPLICATION_JSON));

    // Clear DB
    spotRepo.deleteById(spot.getId());
  }
}
