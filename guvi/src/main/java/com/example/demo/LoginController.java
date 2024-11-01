package com.example.demo;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

    @PostMapping("/login")
    public String handleLogin(@RequestParam String admin_no, @RequestParam String pass) {
        if ("admin".equals(admin_no) && "GU@12345".equals(pass)) {
            return "Login successful";
        } else {
            return "Login failed";
        }
    }
}