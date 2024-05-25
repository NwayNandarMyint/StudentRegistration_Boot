<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
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
	<title>Course Registration</title>

</head>

<body>
<th:block th:replace="header :: header"></th:block>
<th:block th:replace="sidebar :: sidebar"></th:block>
<div>
    <div class="main_contents">

    	<div id="sub_content">
    		<h2 class="col-md-6 offset-md-2 mb-5 mt-4">Student Registration</h2>
    		<form th:action="@{/addStudent}" th:object="${student}" method="post">
    			<div class="row">
    				<div class="col-md-2"></div>
    				<div class="col-md-6">
    					<div th:class="'alert alert-danger ' + (${error} == null ? 'd-none' : '')" th:text="${error}"></div>
    				</div>
    			</div>

    			<div class="row mb-4">
    				<div class="col-md-2"></div>
    				<label for="name" class="col-md-2 col-form-label">Name</label>
    				<div class="col-md-4">
    					<input type="text" class="form-control" th:field="*{name}" placeholder="Student Name">
    				</div>
    			</div>
    			<div class="row mb-4">
                				<div class="col-md-2"></div>
                				<label for="phone" class="col-md-2 col-form-label">Phone</label>
                				<div class="col-md-4">
                					<input type="text" class="form-control" id="phone" th:field="*{phone}" placeholder="Phone Number">
                				</div>
                </div>
                <div class="row mb-4">
                            				<div class="col-md-2"></div>
                            				<label for="dob" class="col-md-2 col-form-label">Date of Birth</label>
                            				<div class="col-md-4">
                            					<input type="date" class="form-control" id="dob" th:field="*{dob}"  placeholder="Birthday">
                            				</div>
                </div>
                <div class="row mb-4">
                    <div class="col-md-2"></div>
                    <label class="col-form-label col-md-2 pt-0">Gender</label>
                    <div class="col-md-4">
                        <div class="form-check-inline">
                            <input type="radio" th:field="*{gender}" value="Male"/> Male
                        </div>
                        <div class="form-check-inline">
                            <input type="radio" th:field="*{gender}" value="Female"/> Female
                        </div>
                    </div>
                </div>

                <div class="row mb-4">
                				<div class="col-md-2"></div>
                				<label for="name" class="col-md-2 col-form-label">Education</label>
                				<div class="col-md-4">
                					<input type="textarea" class="form-control" th:field="*{education}" placeholder="Your Education">
                				</div>
                </div>
                <div class="row mb-4">
                    <div class="col-md-2"></div>
                    <label for="photo" class="col-md-2 col-form-label">Photo</label>
                    <div class="col-md-4">
                        <input type="file" th:field="*{photo}" class="form-control" id="file" accept="image/*" required="required"/>
                    </div>
                </div>

                <div class="row mb-4">
                    <div class="col-md-2"></div>
                    <label for="courses" class="col-form-label col-md-2 pt-0">Attend</label>

                    <div class="col-md-4" style="color:black;">
                        <div th:each="course : ${courses}">
                            <div class="form-check">
                                <input type="checkbox" th:field="*{courses}" th:value="${course.id}" class="form-check-input" />
                                <label th:text="${course.name}" class="form-check-label"></label>
                            </div>
                        </div>
                    </div>
                </div>

    			<div class="row mb-4">
    				<div class="col-md-4"></div>
    				<div class="col-md-6">
    					<button type="submit" class="btn btn-secondary col-md-2" data-bs-toggle="modal"
    							data-bs-target="#exampleModa">Add</button>
    				</div>
    			</div>
    		</form>

    	</div>
    </div>
</div>
<footer id="testfooter">
	<p>&copy; ACE Inspiration 2024</p>
</footer>

</body>
</html>
