<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Edit Food</title>
	<!-- link style.css -->
	<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
	<!-- link bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script>
		$(function () {
			$("#datepicker").datepicker();
		});
	</script>
</head>

<body>
	<div class="container">
		<div style="width: 100%; display: flex; justify-content: center">
			<form:form commandName="u" method="POST" action="../editok" style="width: 720px">
				<h1>음식 정보 수정</h1>
				<br>
				<form:hidden path="id" />
				<div class="row mb-3">
					<label for="name" class="col-sm-2 col-form-label">음식 이름</label>
					<div class="col-sm-10">
						<form:input path="name" class="form-control" />
					</div>
				</div>
				<fieldset class="row mb-3">
					<legend class="col-form-label col-sm-2 pt-0">종류</legend>
					<div class="col-sm-10">
						<div class="form-check">
							<form:radiobutton path="category" class="form-check-input" value="0" />
							<label class="form-check-label" for="cate_0">
								과일
							</label>
						</div>
						<div class="form-check">
							<form:radiobutton path="category" class="form-check-input" value="1" />
							<label class="form-check-label" for="cate_1">
								채소
							</label>
						</div>
						<div class="form-check">
							<form:radiobutton path="category" class="form-check-input" value="2" />
							<label class="form-check-label" for="cate_2">
								유제품
							</label>
						</div>
						<div class="form-check">
							<form:radiobutton path="category" class="form-check-input" value="3" />
							<label class="form-check-label" for="cate_3">
								달걀
							</label>
						</div>
						<div class="form-check">
							<form:radiobutton path="category" class="form-check-input" value="4" />
							<label class="form-check-label" for="cate_4">
								해산물
							</label>
						</div>
						<div class="form-check">
							<form:radiobutton path="category" class="form-check-input" value="5" />
							<label class="form-check-label" for="cate_5">
								조류
							</label>
						</div>
						<div class="form-check">
							<form:radiobutton path="category" class="form-check-input" value="6" />
							<label class="form-check-label" for="cate_6">
								육류
							</label>
						</div>
					</div>
				</fieldset>
				<div class="row mb-3">
					<label for="kcal" class="col-sm-2 col-form-label">kcal (100g)</label>
					<div class="col-sm-10">
						<form:input path="kcal" type="number" step="0.1" class="form-control" />
					</div>
				</div>
				<div class="row mb-3">
					<label for="photo" class="col-sm-2 col-form-label">사진 첨부</label>
					<div class="col-sm-10">
						<form:input path="photo" type="file" class="form-control" />
					</div>
				</div>
				<div class="row mb-3">
					<label for="description" class="col-sm-2 col-form-label">설명</label>
					<div class="col-sm-10">
						<form:textarea rows="4" path="description" class="form-control" />
					</div>
				</div>
				<br>
				<button type="button" value="Cancel" class="btn btn-danger" style="margin-right: 5px;"
					onclick="history.back()">취소</button>
				<button type="submit" value="Submit" class="btn btn-success">완료</button>
			</form:form>
		</div>
	</div>
</body>

</html>