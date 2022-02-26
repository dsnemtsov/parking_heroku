package ru.yandex.dimas224.integration;

import ru.yandex.dimas224.bootloader.FirstProjectApplication;
import org.hamcrest.core.Is;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@ActiveProfiles("test")
@SpringBootTest(classes = FirstProjectApplication.class)
@AutoConfigureMockMvc
class GlobalExceptionHandlerTest {

  @Autowired private MockMvc mockMvc;

  @Test
  void shouldValidateSpotOnCreate() throws Exception {
    mockMvc
        .perform(get("/login"))
        .andExpect(status().isOk());

    mockMvc
        .perform(
            post("/spots")
                .content("{}")
                .contentType(MediaType.APPLICATION_JSON))
        .andExpect(status().isBadRequest())
        .andExpect(jsonPath("$.error", Is.is("number: must be not blank")))
        .andExpect(content().contentType(MediaType.APPLICATION_JSON));
  }
}
