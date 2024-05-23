package com.example.studentregistration_boot.dao;

import com.example.studentregistration_boot.models.CourseBean;
import com.example.studentregistration_boot.models.StudentBean;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentRepo extends CrudRepository<StudentBean, Integer> {

}
