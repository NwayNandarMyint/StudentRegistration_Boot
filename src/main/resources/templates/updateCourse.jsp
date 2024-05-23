<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="ISO-8859-1">
	<title>Update Course</title>
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<div th:replace="~{header :: header}"></div>
<br>
<form th:action="@{/updateCourse}" th:object="${course}" method="post">
	<div class="form-group">
		<input type="hidden" id="courseId" th:field="*{id}" class="form-control"/>
	</div>
	<div class="form-group">
		<label for="courseCode">Course Code</label>
		<input type="text" id="courseCode" th:field="*{code}" class="form-control"/>
	</div>
	<div class="form-group">
		<label for="courseName">Course Name</label>
		<input type="text" id="courseName" th:field="*{name}" class="form-control"/>
	</div>
	<button type="submit" class="btn btn-primary">Update </button>
</form>
</body>
</html>
