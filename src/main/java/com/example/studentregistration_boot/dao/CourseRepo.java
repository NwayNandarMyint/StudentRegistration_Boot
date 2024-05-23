package com.example.studentregistration_boot.dao;

import com.example.studentregistration_boot.models.CourseBean;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CourseRepo extends CrudRepository<CourseBean, Integer> {


    @Query("SELECT MAX(c.id) FROM CourseBean c")
    Integer getLastCourseId();

    @Query("UPDATE CourseBean c SET c.isDelete = 1 WHERE c.id = :id")
    int softDeleteById(@Param("id") int id);

}
