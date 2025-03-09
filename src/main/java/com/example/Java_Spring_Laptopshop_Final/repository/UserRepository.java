package com.example.Java_Spring_Laptopshop_Final.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Java_Spring_Laptopshop_Final.domain.User;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User nguoidung);

    List<User> findByEmail(String email);

    List<User> findAll();

    User findById(long id);
}
