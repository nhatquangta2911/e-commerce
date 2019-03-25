package com.msita.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class StudentFormController {

    @GetMapping(path = "/student-form")
    public String studentForm(final Model model) {
        Studentt student = new Studentt("Quang", 9, "SE");
        model.addAttribute("student", student);
        return "student-form";
    }

    @PostMapping(path = "/student-form")
    public String studentForm(final Model model, @ModelAttribute("student") final Studentt student) {
        String[] colors = {"red", "blue", "yellow", "pink", "green", "orange", "purple", "cyan", "lightblue", "black", "grey"};
        model.addAttribute("colors", colors);
        model.addAttribute("student", student);
        return "/student-info";
    }

}
