package com.example.studentregistration_boot.models;

import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "course")
public class CourseBean {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String code;
    private String name;
    private int isDelete;
    @ManyToMany(mappedBy = "courses", cascade = CascadeType.ALL)
    private Set<StudentBean> students=new HashSet<>();

    public CourseBean(){

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<StudentBean> getStudents() {
        return students;
    }

    public void setStudents(Set<StudentBean> students) {
        this.students = students;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }
}
