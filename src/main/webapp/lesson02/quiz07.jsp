<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>배탈의 민족</title>
</head>
<body>

	<div class="container">
		<h1>메뉴 검색</h1>			
	<form method="post" action="/lesson02/quiz07_1.jsp">
		<div class="search d-flex align-items-center">
			<input type="text" name="keyword" class="form-control col-3 mr-3">
			<label class="m-0">
				<input type="checkbox" name="starFilter" value="true"> 4점 이하 제외
			</label>
			
		</div>
			<!-- <div class="textt d-flex col-7">
				<input type="checkbox" class="checkbox form-control" 
				value="checked" name="type"> 
				<span>4점 이하 제외</span>
			</div> 
		</div> -->
		<button type="submit" class="btn btn-success">검색</button>
	</form>
	</div>
	
</body>
</html>