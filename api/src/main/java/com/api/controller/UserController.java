package com.api.controller;

import com.api.entity.User;
import com.api.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping()
    public ResponseEntity<List<User>> getUserList() {
        List<User> listaUsers = userService.getUserList();
        return ResponseEntity.status(HttpStatus.OK).body(listaUsers);
    }

    @GetMapping(params = "id")
    public ResponseEntity<User> getUserById(@RequestParam Long id) {
        User user = userService.getUserById(id);
        return ResponseEntity.status(HttpStatus.OK).body(user);
    }

    @PostMapping()
    public ResponseEntity<User> registerUser(@RequestBody User user) {
        User userCadastrado = userService.registerUser(user);
        return ResponseEntity.status(HttpStatus.OK).body(userCadastrado);
    }

    @PutMapping()
    public ResponseEntity<User> updateUser(@RequestBody User user) {
        User userAtualizado = userService.updateUser(user);
        return ResponseEntity.status(HttpStatus.OK).body(userAtualizado);
    }

    @DeleteMapping()
    public ResponseEntity<User> deleteUser(@RequestParam Long id) {
        userService.deleteUser(id);
        return ResponseEntity.status(HttpStatus.OK).build();
    }

}
