<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<div  th:fragment="sidebar">
 <div class="sidenav">

        <a href="/">Course Registration </a>
        <a href="/addStudent">Student Registration</a>
        <a href="/displayCourses">Course List </a>

    </div>
</body>
</html>