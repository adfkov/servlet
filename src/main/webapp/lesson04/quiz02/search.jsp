<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2 class="font-weight-bold">즐겨찾기 추가</h2>
	<form method="get" action="/lesson04/quiz02/bookmark">
		<div>사이트명:</div>
		<input class="form-control" type="text" name="name">
		<div>사이트 주소:</div>
		<input class="form-control" type="text" name="url">
		<button type="submit" class="btn btn-success">추가</button>
	</form>
	</div>
</body>
</html>