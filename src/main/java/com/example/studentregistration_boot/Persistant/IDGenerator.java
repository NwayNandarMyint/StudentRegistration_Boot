package com.example.studentregistration_boot.Persistant;

public class IDGenerator {
	
	public static String generateCourseId(int lastId) {
		 lastId++;
		 String courseid = "COU-" + String.format("%03d", lastId);
		 return courseid;
	}
	
	public static String generateStudentId(int lastId) {
		 lastId++;
		 String studentid = "STU-" + String.format("%03d", lastId);
		 return studentid;
	}

}
