package ru.yandex.dimas224.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class BasicAuthController {
  @GetMapping("login")
  public String login() {
    return "login.html";
  }

  @GetMapping("logout")
  public String logout(HttpServletRequest request, HttpServletResponse response) {
    return "logout.html";
  }
}
