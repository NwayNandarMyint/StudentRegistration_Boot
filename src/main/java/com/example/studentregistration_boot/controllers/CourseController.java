package com.example.studentregistration_boot.controllers;

import com.example.studentregistration_boot.Persistant.IDGenerator;
import com.example.studentregistration_boot.dao.CourseService;
import com.example.studentregistration_boot.models.CourseBean;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CourseController {
    @Autowired
    private CourseService service;

    @GetMapping(value = "/")
    public ModelAndView addBook(ModelMap model) {
        int lastid=service.getLastCourseId();
        System.out.println("Last ID"+lastid);
        String generatecode= IDGenerator.generateCourseId(lastid);
        System.out.println("generatecode "+generatecode);

        model.addAttribute("generatecode",generatecode);
        System.out.println("Code "+generatecode);
        return new ModelAndView("addCourse", "course", new CourseBean());
    }

    @PostMapping(value="/addCourse")
    public String addBook(@ModelAttribute("course") CourseBean bean, ModelMap model) {

        service.save(bean);
        return "redirect:/";
    }

    @GetMapping(value = "/displayCourses")
    public String displayBook(ModelMap model){

        List<CourseBean> list=service.getAllStudent();
        model.addAttribute("list",list);
        return "displayCourses";
    }
    @GetMapping(value = "/updateCourse")
    public String updateCourse(@RequestParam("id") int id,ModelMap model) {
        CourseBean course=service.getCoursesById(id);
        model.addAttribute("course",course);
        return "updateCourse";
    }

    @PostMapping(value="/updateCourse")
    public String updateCourse(@ModelAttribute("course") CourseBean course, ModelMap model) {

        service.update(course, course.getId());
        return "redirect:/displayCourses";
    }

    @GetMapping(value = "/deleteCourse")
    public String deleteCourse(@RequestParam("id") int id, ModelMap model) {
        service.deleteCourseById(id);
        return "redirect:/displayCourses";
    }

}
