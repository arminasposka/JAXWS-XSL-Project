package com.example.jaxwsxsl;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestRestController {

    @GetMapping
    public String testEndpoint() {
        return "Hello, World!";
    }
}
