<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link th:href="@{/resource/css/test.css}" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
	<title>Course Registration</title>
	<style>
		#testfooter {
			background: #f2f2f2;
			height: 60px;
			text-align: center;
			bottom: 0;
			left: 0;
			right: 0;
			padding: 20px 20px 0px 0px;
			position: fixed;
			width: 100%;
			float: bottom;
			color: black;
		}

		.popup {
			width: 400px;
			background: #F8F9F9;
			position: fixed;
			top: 30%;
			left: 50%;
			transform: translate(-50%, -50%);
			text-align: center;
			padding: 30px;
			visibility: hidden;
			color: black;
			transition: transform 0.4s, top 0.4s;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
			display: flex;
			flex-direction: column;
			align-items: center;
		}

		.open-popup {
			visibility: visible;
		}

		.popup img {
			width: 100px;
			border-radius: 50%;
			margin-bottom: 20px;
		}

		.popup h2 {
			font-size: 24px;
			font-weight: 500;
			margin: 10px 0;
		}

		.popup button {
			width: 100%;
			padding: 10px 10;
			background: #6fd649;
			color: #fff;
			border: 0;
			outline: none;
			font-size: 20px;
			border-radius: 4px;
			cursor: pointer;
			box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
		}

		h2.col-md-6.offset-md-2.mb-5.mt-4 {
			color: black;
		}

		label.col-md-2.col-form-label {
			color: black;
		}
	</style>
</head>

<body>
<th:block th:replace="header :: header"></th:block>
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
<footer id="testfooter">
	<p>&copy; ACE Inspiration 2024</p>
</footer>

</body>
</html>
