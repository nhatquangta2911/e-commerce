package com.msita.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StudentInfoController {

    @GetMapping(path = "/student-info")
    public String studentInfo(final Model model) {
        return "student-info";
    }

}
