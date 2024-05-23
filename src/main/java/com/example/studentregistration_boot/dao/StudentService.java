package com.example.studentregistration_boot.dao;

import com.example.studentregistration_boot.models.CourseBean;
import com.example.studentregistration_boot.models.StudentBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {

    @Autowired
    StudentRepo studentRepo;

    public void save(StudentBean student) {
        studentRepo.save(student);
    }
}
