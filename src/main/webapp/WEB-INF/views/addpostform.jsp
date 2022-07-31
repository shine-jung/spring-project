<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Add Food</title>
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
			<form action="addok" method="post" style="width: 720px">
				<h1>Add Food</h1>
				<br>
				<div class="row mb-3">
					<label for="name" class="col-sm-2 col-form-label">음식 이름</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="name" name="name" required>
					</div>
				</div>
				<fieldset class="row mb-3">
					<legend class="col-form-label col-sm-2 pt-0">종류</legend>
					<div class="col-sm-10">
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category" id="cate_0" value=0 required>
							<label class="form-check-label" for="cate_0">
								과일
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category" id="cate_1" value=1>
							<label class="form-check-label" for="cate_1">
								채소
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category" id="cate_2" value=2>
							<label class="form-check-label" for="cate_2">
								유제품
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category" id="cate_3" value=3>
							<label class="form-check-label" for="cate_3">
								달걀
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category" id="cate_4" value=4>
							<label class="form-check-label" for="cate_4">
								해산물
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category" id="cate_5" value=5>
							<label class="form-check-label" for="cate_5">
								조류
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category" id="cate_6" value=6>
							<label class="form-check-label" for="cate_6">
								육류
							</label>
						</div>
					</div>
				</fieldset>
				<div class="row mb-3">
					<label for="kcal" class="col-sm-2 col-form-label">kcal (100g)</label>
					<div class="col-sm-10">
						<input type="number" step="0.1" class="form-control" id="kcal" name="kcal" required>
					</div>
				</div>
				<div class="row mb-3">
					<label for="photo" class="col-sm-2 col-form-label">사진 첨부</label>
					<div class="col-sm-10">
						<input type="file" class="form-control" id="photo" name="photo">
					</div>
				</div>
				<div class="row mb-3">
					<label for="description" class="col-sm-2 col-form-label">설명</label>
					<div class="col-sm-10">
						<textarea class="form-control" id="description" rows="4" name="description"></textarea>
					</div>
				</div>
				<br>
				<button type="button" class="btn btn-danger" style="margin-right: 5px;"
					onclick="location.href='list'">취소</button>
				<button type="submit" class="btn btn-success">완료</button>
			</form>
		</div>
	</div>
</body>

</html>