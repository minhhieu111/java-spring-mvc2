package com.example.Java_Spring_Laptopshop_Final.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.Java_Spring_Laptopshop_Final.domain.User;
import com.example.Java_Spring_Laptopshop_Final.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public String handleHello() {
        return "hello from service";
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUsersByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User handleSaveUser(User user) {
        User nguoidung = this.userRepository.save(user);
        return nguoidung;
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public void deleteAUser(long id) {
        this.userRepository.deleteById(id);
    }
}
