<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>View Food Info</title>
	<!-- link style.css -->
	<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
	<!-- link bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script>
		var cate_name = ["과일", "채식", "유제품", "달걀", "해산물", "조류", "육류"];
	</script>
</head>

<body>
	<div class="container">
		<div style="width: 100%; display: flex; justify-content: center">
			<form:form commandName="u" method="POST" action="../view" style="width: 720px">
				<h1>음식 정보 보기</h1>
				<br>
				<form:hidden path="id" />
				<div class="row mb-3">
					<label for="name" class="col-sm-2 col-form-label">음식 이름</label>
					<div class="col-sm-10">
						<p class="form-control">${u.name}</p>
					</div>
				</div>
				<div class="row mb-3">
					<label for="category" class="col-sm-2 col-form-label">종류</label>
					<div class="col-sm-10">
						<p class="form-control">
							<script>
								var cate = ${ u.category };
								document.write(cate_name[cate])
							</script>
						</p>
					</div>
				</div>
				<div class="row mb-3">
					<label for="kcal" class="col-sm-2 col-form-label">kcal (100g)</label>
					<div class="col-sm-10">
						<p class="form-control">${u.kcal} kcal</p>
					</div>
				</div>
				<div class="row mb-3">
					<label for="photo" class="col-sm-2 col-form-label">사진 첨부</label>
					<div class="col-sm-10">
						<!-- <p class="form-control">${u.photo}</p> -->
						<!-- TODO::사진기능 추가 -->
						<p class="form-control">사진 기능 추가 예정</p>
						
					</div>
				</div>
				<div class="row mb-3">
					<label for="description" class="col-sm-2 col-form-label">설명</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="4">${u.description}</textarea>
					</div>
				</div>
				<br>
				<button type="button" class="btn btn-outline-primary" style="margin-right: 5px;"
					onclick="history.back()">목록</button>
				<button type="button" class="btn btn-outline-success" style="margin-right: 5px;"
					onclick="location.href='../editform/${id}'">수정</button>
				<button type="button" class="btn btn-outline-danger" onclick="javascript:delete_ok('${id}')">삭제</button>
			</form:form>
		</div>
	</div>
	<script>
		function delete_ok(id) {
			var a = confirm("정말로 삭제하겠습니까?");
			if (a)
				location.href = '../deleteok/' + id;
		}
	</script>
</body>

</html>