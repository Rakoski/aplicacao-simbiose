package com.api.service;

import com.api.entity.User;
import com.api.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.security.SecureRandom;
import java.util.Optional;

@Service
public class AuthService {

    @Autowired
    UserRepository userRepository;
    BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder(10, new SecureRandom());

    public User authenticate(User user) throws ResponseStatusException {

        try {
            Optional<User> optionalUser = userRepository.findByUsername(user.getUsername());

            if(optionalUser.isEmpty() || !bCryptPasswordEncoder.matches(user.getPassword(), optionalUser.get().getPassword())) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Usuário ou senha inválidos");
            }

            return optionalUser.get();

        } catch(ResponseStatusException e) {
            throw new ResponseStatusException(e.getStatus(), e.getReason());
        }
    }
}
