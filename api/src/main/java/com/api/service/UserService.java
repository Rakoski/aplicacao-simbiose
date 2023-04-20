package com.api.service;

import com.api.entity.User;
import com.api.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.security.SecureRandom;
import java.util.List;
import java.util.Optional;

@Service
public class UserService {

    @Autowired
    UserRepository userRepository;

    public List<User> getUserList() {
        try {
            return userRepository.findAll();
        } catch (ResponseStatusException e) {
            throw new ResponseStatusException(e.getStatus(), e.getReason());
        }
    }

    public User getUserById(Long id) throws ResponseStatusException {
        try {
            Optional<User> optionalUser = userRepository.findById(id);

            if(optionalUser.isEmpty()) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Usuário não encontrado");
            }
            return optionalUser.get();

        } catch(ResponseStatusException e) {
            throw new ResponseStatusException(e.getStatus(), e.getReason());
        }
    }

    public User registerUser(User user) {
        try {
            BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder(10, new SecureRandom());
            user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
            return userRepository.save(user);
        } catch (ResponseStatusException e) {
            throw new ResponseStatusException(e.getStatus(), e.getReason());
        }
    }

    public User updateUser(User user) {
        try {
            return userRepository.save(user);
        } catch (ResponseStatusException e) {
            throw new ResponseStatusException(e.getStatus(), e.getReason());
        }
    }

    public void deleteUser(Long userId) throws ResponseStatusException {
        try {
            userRepository.deleteById(userId);
        } catch (ResponseStatusException e) {
            throw new ResponseStatusException(e.getStatus(), e.getReason());
        }
    }
}
