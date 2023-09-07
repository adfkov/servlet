<%@page import="java.util.*"%>
<%@page import="java.util.List"%>
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
		<h1>장보기 목록</h1>
		
		<table class="table text-center">
			<thead>
				<tr>
					<th>번호</th>
					<th>품목</th>
				</tr>
				
			</thead>
			<tbody>
				<% 
				List<String> goodsList = Arrays.asList(new String[]{ 
    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
});
				for(int i = 0; i < goodsList.size(); i++) {
					
				%>
				
				<tr>
					<td><%= i+1 %></td>
					<td><%= goodsList.get(i)%></td>
				</tr>
				<%
					}
				%>
				<tr>
					<td></td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>1</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>1</td>
					<td>테스트</td>
				</tr>
				
			</tbody>
</body>
</html>