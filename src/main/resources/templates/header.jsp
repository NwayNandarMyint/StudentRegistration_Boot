<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>

</head>
<body>
<div th:fragment="header">
    <div id="testheader">
        <div class="container">
            <div class=row>
                <div class="col-md-5 ">
                    <a href=""><h3>Student Registration</h3></a>
                </div>
                <div class="col-md-6"></div>
                <div class="col-md-1">
                    <a href="logout" class="btn btn-success">Logout</a>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>
