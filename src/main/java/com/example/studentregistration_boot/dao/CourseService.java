package com.example.studentregistration_boot.dao;

import com.example.studentregistration_boot.models.CourseBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CourseService {
    @Autowired
    CourseRepo courseRepo;

    public List<CourseBean> getAllStudent(){
        List<CourseBean> list=(List<CourseBean>) courseRepo.findAll();
        return list;

    }
    public CourseBean getCoursesById(int id){
        return courseRepo.findById(id).get();

    }

    public void save(CourseBean course) {
        courseRepo.save(course);
    }

    public void deleteCourseById(int id) {
        courseRepo.softDeleteById(id);
    }

    public Integer getLastCourseId() {
        try {
            Integer lastCourseId = courseRepo.getLastCourseId();
            if (lastCourseId == null) {
                lastCourseId = 0; // or any default value you prefer
            }
            return lastCourseId;
        } catch (Exception e) {
            // Handle the exception gracefully, log or throw it
            e.printStackTrace();
            return 0; // or handle as per your application's error handling strategy
        }
    }

    public void update (CourseBean course,int id) {
        courseRepo.save(course);
    }

}
