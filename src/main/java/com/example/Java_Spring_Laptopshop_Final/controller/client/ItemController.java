package com.example.Java_Spring_Laptopshop_Final.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ItemController {
    @GetMapping("/product/{id}")
    public String getMethodName(Model model, @PathVariable long id) {
        return "client/product/detail";
    }

}
