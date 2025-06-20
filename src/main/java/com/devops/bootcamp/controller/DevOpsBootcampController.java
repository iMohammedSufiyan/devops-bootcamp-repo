package com.devops.bootcamp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DevOpsBootcampController {

    @GetMapping("/")
    public String sayHello() {
        return "Welcome to the DevOps Bootcamp!";
    }

}
