<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    		  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    	<link rel="stylesheet" type="text/css" th:href="@{/css/test.css}">
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    			crossorigin="anonymous"></script>
    			<title>List All Courses</title>
</head>
<body>
<th:block th:replace="header :: header"></th:block>
<th:block th:replace="sidebar :: sidebar"></th:block>
<div class="main_contents">
  <div id="sub_content">
    <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info">
          <table id="mytable" class="display" style="width: 95%">
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
    </div>
  </div>
</div>

</body>
</html>
