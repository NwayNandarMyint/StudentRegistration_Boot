package com.example.studentregistration_boot.models;

import jakarta.persistence.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "student")
public class StudentBean {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="id")
    private int id;
    @Column(name ="code" ,length=100)
    private String code;
    @Column(name ="name" ,length=100)
    private String name;
    @Column(name ="dob" ,length=100)
    private String dob;
    @Column(name ="gender" ,length=100)
    private String gender;
    @Column(name ="education" ,length=100)
    private String education;
    @Column(name ="isDelete" ,length=100)
    private int isDelete;
    @Column(name ="phone" ,length=100)
    private String phone;
    @Column(name ="photo" ,length=100)
    @Lob
    private byte[] photo;
    @Transient
    private MultipartFile photoFile;

    @ManyToMany(cascade = {CascadeType.REFRESH,CascadeType.MERGE})
    @JoinTable(name = "courses_has_student",joinColumns = @JoinColumn(name = "student_id"),
            inverseJoinColumns = @JoinColumn(name = "course_id"))
    private Set<CourseBean> courses= new HashSet<>();

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

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public byte[] getPhoto() {
        return photo;
    }

    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }

    public MultipartFile getPhotoFile() {
        return photoFile;
    }

    public void setPhotoFile(MultipartFile photoFile) {
        this.photoFile = photoFile;
    }

    public Set<CourseBean> getCourses() {
        return courses;
    }

    public void setCourses(Set<CourseBean> courses) {
        this.courses = courses;
    }
}
