<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="ISO-8859-1">
	<title>List All Courses</title>
	<link th:href="@{/resource/css/test.css}" rel="stylesheet">
	<style type="text/css">
		table {
			border-collapse: collapse;
			width: 100%;
		}
		th, td {
			text-align: left;
			padding: 8px;
		}
		tr:nth-child(even) {
			background-color: #f2f2f2;
		}
		th {
			background-color: #4CAF50;
			color: white;
		}
	</style>
</head>
<body>
<div th:replace="~{header :: header}"></div>
<br>
<table>
	<tr>
		<th>#</th>
		<th>Course ID</th>
		<th>Name</th>
		<th>Action</th>
	</tr>
	<tr th:each="student, count : ${list}">
		<td th:text="${count.index + 1}"></td>
		<td th:text="${student.code}"></td>
		<td th:text="${student.name}"></td>
		<td>
			<a th:href="@{/updateCourse(id=${student.id})}">Update</a>
			<a th:href="@{/deleteCourse(id=${student.id})}">Delete</a>
		</td>
	</tr>
</table>
</body>
</html>
