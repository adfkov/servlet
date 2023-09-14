<%@page import="java.util.*"%>
<%@page import="java.util.Map"%>
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
<style>
a, a:hover {text-decoration:none; text-color=}
header {height: 100px;}
nav {height: 50px; }
.nav { width: 50%;}
.description {height: 70%; border:1px solid green;}
.container { height: 700px;}
.contents { height: 90%;}
footer { height: 10%;}
.upper { height: 60%;}

</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="wrap" class="container">
	<header class="d-flex bg-danger">
		<jsp:include page="he.jsp" />
	</header>
	<nav class="bg-info d-flex align-items-center">
		<jsp:include page="menu.jsp" />
	</nav>
	<section class="contents">
		<jsp:include page="detailContent.jsp" />
	</section>
	
	<footer class="bg-info pl-2 d-flex align-items-center">
		<jsp:include page="footer.jsp" />
	</footer>

</div>
</body>
</html>