<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
		
</head>
<body>
<!--  추가 페이지 -> servlet , servlet 에 insert를 요청-> 302 redirect(새로 요청이 가는 것) -->
<!--  -->
<!--  -> -->
	<div class="container">
		<h2 class="font-weight-bold">즐겨찾기 추가</h2>

	<form method="post" action="/lesson04/add-bookmark">
		<div class="form-group">
			<label for="name">사이트명:</label> <!-- insert 시킬 때는 post-->
		<input class="form-control col-4" type="text" name="name" id="name">
		<div class="form-group">
			<label for="url">사이트 주소:</label>
			<input class="form-control col-8" type="text" name="url" id="url">
		<button type="submit" class="btn btn-success">추가</button>
		</div>
		</div>
	</form>
	</div>
</body>
</html>