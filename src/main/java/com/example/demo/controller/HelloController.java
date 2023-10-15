package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = { "hello", "sample" })
public class HelloController {
    public String hello() {
        return "hello";
    }
}
