<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
		
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#wrap { height: 1000px;}
header { height: 100px; background-color:#ea7b5a;}
nav { height: 75px; background-color:#ea7b5a;}
section {min-height: 600px;}
footer {height:50px;}
</style>
</head>
<body>
<% 
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// select query
	String selectQuery = "select A.`sellerId`,A.`ment`, A.`price`, A.`lastment`, B.`name` "
			+"from `user_goods` AS A "
			+"inner join `seller` AS B "
			+"on A.`sellerId` = B.`id` "
			+"order by A.`sellerId` desc";
	ResultSet res = ms.select(selectQuery);
	String[] imgsrc = {"청소기.jpg","27002.jpg","27002.jpg","맥북.jpg","플스.jpg","원피스.jpg"};
	//
	%>
	<div class="container" id="wrap">
		<header class="d-flex text-white align-items-center justify-content-center">
			<h2 class="font-weight-bold">HONG당무 마켓</h2>
		</header>
		
		<nav class="d-flex align-items-center">
			<ul class="nav w-100 nav-fill" >
				<li class="nav-item"><a href="/lesson04/quiz03/hong.jsp" alt="d" class="nav-link text-white font-weight-bold">리스트</a></li>
				<li class="nav-item"><a href="#" alt="d" class="nav-link text-white font-weight-bold">물건 올리기</a></li>
				<li class="nav-item"><a href="#" alt="d" class="nav-link text-white font-weight-bold">마이 페이지</a></li>
			</ul>
		</nav>
		
		<section class="bg-danger d-flex">
			<%
			while(res.next()) {
				
			
		%>
			<div class="col-3" border="2px solid red">
				<div class="img">
					<img src="/맥북.jpg" alt="" width= "150px">
				</div>
				<div class="mt-1">
					
				</div> 
			</div>	
			<div class="col-3" border="2px solid red">
				<div class="img">
					<img src="<%=imgsrc[0] %>" alt="1" width= "150px">
				</div>
				<div class="mt-1">
					
				</div> 
			</div>	
			<div class="col-3" border="2px solid red">
				<div class="img">
					<img src=<%=imgsrc[1]  %> alt="2" width= "150px">
				</div>
				<div class="mt-1">
					
				</div> 
			</div>	
			<div class="col-3" border="2px solid red">
				<div class="img">
					<img src=<%=imgsrc[2]  %> alt="3" width= "150px">
				</div>
				<div class="mt-1">
					
				</div> 
			</div>	
			<div class="col-3" border="2px solid red">
				<div class="img">
					<img src=<%=imgsrc[3]  %> alt="4" width= "150px">
				</div>
				<div class="mt-1">
					
				</div> 
			</div>	
			<div class="col-3" border="2px solid red">
				<div class="img">
					<img src=<%=imgsrc[4]  %> alt="5" width= "150px">
				</div>
				<div class="mt-1">
					
				</div> 
			</div>		
			
			<div class="col-3" border="2px solid red">
				<div class="img">
					<img src=<%=imgsrc[5] %> alt="" width= "150px">
				</div>
				<div class="mt-1">
					
				</div> 
			</div>	
			<%
			}
		%>
		</section>
		<footer class="footer d-flex justify-content-center">Copyright © HONG 2023</footer>
	</div>
		<% 
	ms.disconnect();
	
%>
	
</body>
</html>