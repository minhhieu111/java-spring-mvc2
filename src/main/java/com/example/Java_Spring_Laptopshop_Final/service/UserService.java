package com.example.Java_Spring_Laptopshop_Final.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.Java_Spring_Laptopshop_Final.domain.Role;
import com.example.Java_Spring_Laptopshop_Final.domain.User;
import com.example.Java_Spring_Laptopshop_Final.repository.RoleRepository;
import com.example.Java_Spring_Laptopshop_Final.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
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

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }
}
