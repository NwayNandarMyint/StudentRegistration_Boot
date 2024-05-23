<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<spring:url value="/resource/css/test.css" var="testCss" />
	<link href="${testCss}" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style>
		h2.col-md-6.offset-md-2.mb-5.mt-4 {
			color: black;
		}
		label.col-md-2.col-form-label {
			color: black;
		}
		.form-check-inline {
			color: black;
		}
		#testfooter{
			background:#f2f2f2;
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
<jsp:include page="header.jsp"></jsp:include>
<div class="main_contents">
	<jsp:include page="sidebar.jsp"></jsp:include>
	<div id="sub_content">


		<form:form action = "/StudentRegistrationJPA/student/addstudent" method="post" enctype="multipart/form-data" modelAttribute="student">

			<h2 class="col-md-6 offset-md-2 mb-5 mt-4">Student Registration</h2>
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-6">
					<div style="color: red" class="alert alert-danger ${ (error==null)?'d-none' : '' } ">${error}</div>


				</div>
			</div>
			<div class="row mb-4">
				<div class="col-md-2"></div>
				<label for="code" class="col-md-2 col-form-label">Student ID</label>
				<div class="col-md-4">
					<form:input type="readonly" class="form-control"  value="${generatedcode}" path="code"></form:input>
				</div>
			</div>

			<div class="row mb-4">
				<div class="col-md-2"></div>
				<label for="name" class="col-md-2 col-form-label">Name</label>
				<div class="col-md-4">
					<form:input type="text" class="form-control" id="name"  path="name" placeholder="Enter Name" />
				</div>

			</div>
			<div class="row mb-4">
				<div class="col-md-2"></div>
				<label for="dob" class="col-md-2 col-form-label">Date of Birth</label>
				<div class="col-md-4">
					<form:input type="date" class="form-control"  id="dob" path="dob"/>
				</div>

			</div>
			<div class="row mb-4">
				<div class="col-md-2"></div>
				<label class="col-form-label col-md-2 pt-0">Gender</label>
				<div class="col-md-4">
					<div class="form-check-inline">
						<form:radiobutton path="gender" value="Male"/> Male
					</div>
					<div class="form-check-inline">
						<form:radiobutton path="gender" value="Female"/> Female
					</div>
				</div>
			</div>

			<div class="row mb-4">
				<div class="col-md-2"></div>
				<label for="phno" class="col-md-2 col-form-label">Phone</label>
				<div class="col-md-4">
					<form:input type="number" class="form-control" id="phno"   path="phno" placeholder="Enter Phone Number" />
				</div>

			</div>
			<div class="row mb-4">
				<div class="col-md-2"></div>
				<label for="education" class="col-md-2 col-form-label">Education</label>
				<div class="col-md-4">
					<form:textarea path="education" class="form-control" placeholder="Enter Education"/>

				</div>

			</div>
			<fieldset class="row mb-4">
				<div class="col-md-2"></div>
				<legend class="col-form-label col-md-2 pt-0" style="color:black;">Attend</legend>

				<div class="col-md-4" style="color:black;">

					<c:forEach items="${courses }" var="course">

						<input type="checkbox" name="course"
							   value="${course.id}" class="form-check-input" /> ${course.name }

					</c:forEach>
					<div id="coursesError" class="error-message"></div>
				</div>
			</fieldset>


			<div class="row mb-4">
				<div class="col-md-2"></div>
				<label for="photoFile" class="col-md-2 col-form-label">Photo</label>
				<div class="col-md-4">
					<form:input type="file" class="form-control" id="file" path="photoFile"  accept="iamge/*" required="required"/>

				</div>
			</div>

			<div class="row mb-4">
				<div class="col-md-4"></div>

				<div class="col-md-4">

					<button type="submit" class="btn btn-secondary col-md-2" data-bs-toggle="modal" data-bs-target="#exampleModa"> Add</button>


				</div>
			</div>

		</form:form>
		<div class="popup" id="popup">
			<img src="https://www.shutterstock.com/image-vector/green-check-mark-icon-circle-260nw-576516469.jpg">
			<h2>Thank You!</h2>
			<p>Register Successful</p>

			<a href="/StudentRegistrationMvc/student/displayStudent"><button type="button">Ok</button></a>
		</div>
	</div>
</div>
<div id="testfooter">
	<span>Copyright &#169; ACE Inspiration 2024</span>
</div>
<script>

	const popup = document.getElementById("popup");
	//var result=0;
	var result = ${result};
	const openPopup = ()=>{
		popup.classList.add("open-popup");
	}


	if(result === 1 ){
		openPopup();
	}


</script>
<script>
	/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
	var dropdown = document.getElementsByClassName("dropdown-btn");
	var i;

	for (i = 0; i < dropdown.length; i++) {
		dropdown[i].addEventListener("click", function() {
			this.classList.toggle("active");
			var dropdownContent = this.nextElementSibling;
			if (dropdownContent.style.display === "block") {
				dropdownContent.style.display = "none";
			} else {
				dropdownContent.style.display = "block";
			}
		});
	}
</script>

</body>
</html>