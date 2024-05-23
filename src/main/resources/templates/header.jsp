<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet"/>

</head>
<body>
<div th:fragment="header">
	<h3>Book Management</h3>
	<div >
		<p th:text="${#ctx.session.email}"/>
	</div>
	<div th:with="now=${#dates.createNow()}">
		<p>Date:<span th:text="${#dates.format(now, 'yyyy-MM-dd HH:mm:ss a')}"></span></p>
	</div>
	<div>
		<a href="/" class="btn btn-success">Add Course </a>
		<a href="/displayCourses" class="btn btn-success"> All Courses</a>
		<a href="/" class="btn btn-success">Add Student </a>
		<a href="/" class="btn btn-success">All Students </a>

	</div>
</div>
</body>
</html>
