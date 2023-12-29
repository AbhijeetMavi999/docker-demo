package com.docker.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WelcomeController {

    @GetMapping("/welcome")
    public String sayWelcome() {
        return "Hello Programmer, Welcom to the docker demo with Spring Boot";
    }
}
