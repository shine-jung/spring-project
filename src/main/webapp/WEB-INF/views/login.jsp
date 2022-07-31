<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<!-- link style.css -->
	<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
	<!-- link bootstrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</head>

<body>
	<div class="container">
		<div style="width: 100%; display: flex; justify-content: center">
			<form method="post" action="loginOk" style="width: 30%;">
				<h2>로그인</h2>
				<p>ID: admin<br/>PW: 123</p>
				<div class="mb-3">
					<label for="userid" class="form-label">User ID</label>
					<input type="text" name="userid" class="form-control" id="userid">
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">Password</label>
					<input type="password" name="password" class="form-control" id="password">
				</div>
				<button type="submit" class="btn btn-success">로그인</button>
				<!-- <a class="btn btn-success" href="#" role="button">회원가입</a> -->
			</form>
		</div>
	</div>
</body>

</html>