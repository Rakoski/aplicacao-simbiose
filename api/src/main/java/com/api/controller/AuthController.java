package com.api.controller;

import com.api.entity.User;
import com.api.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/auth")
public class AuthController {

    @Autowired
    AuthService authService;

    @PostMapping()
    public ResponseEntity<User> authenticate(@RequestBody User user) {
        User userLogado = authService.authenticate(user);
        return ResponseEntity.status(HttpStatus.OK).body(userLogado);
    }
}
