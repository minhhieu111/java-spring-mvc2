package com.example.Java_Spring_Laptopshop_Final;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class JavaSpringLaptopshopFinalApplication {

	public static void main(String[] args) {
		SpringApplication.run(JavaSpringLaptopshopFinalApplication.class, args);
	}

}
