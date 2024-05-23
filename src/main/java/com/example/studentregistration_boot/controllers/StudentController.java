package com.example.studentregistration_boot.controllers;

import com.example.studentregistration_boot.Persistant.IDGenerator;
import com.example.studentregistration_boot.models.CourseBean;
import com.example.studentregistration_boot.models.StudentBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class StudentController {

    @GetMapping(value = "/addStudent")
    public ModelAndView addStudent(ModelMap model) {

        return new ModelAndView("addStudent", "student", new StudentBean());
    }
}
