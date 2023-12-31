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
<title>즐겨찾기 목록</title>
</head>
<body>
<%
			
			// DB 연결
			MysqlService ms = MysqlService.getInstance();
			ms.connect();
			// DB select 
			String selectQuery = "select * from `url_table` order by `id` desc";
			// 셀렉트 수행
			ResultSet res = ms.select(selectQuery);
			
			
	
				
			%>
	<div class="container" id= "wrap" >
		<table class="table text-center">
			<thead>
				<tr>
				<th class="col-3">사이트</th>
				<th class="col-5">사이트 주소</th>
				<th class="col-4">삭제</th>
				</tr>
			</thead>
			
			<tbody>
			<% 
				while(res.next()) {
			%>
				<tr>
					<td class="col-3"><%= res.getString("name") %></td>
					<td class="col-5"><a href="<%= res.getString("url") %>" alt="adf" target="_blank"><%= res.getString("url") %></td>
					<td class="col-4"><a href="/lesson04/delete-bookmark?id=<%=res.getInt("id") %>"  class="btn btn-danger">삭제</a></td>
					<!-- -->
				</tr>
				<%
			
				}
				%>
			</tbody>
		</table>
	
	
	<%-- <tbody>
		<%
			while (res.next()) {
		%>
			<tr>
				<td><%=res.getInt("id") %></td>
				<td><%=res.getString("name") %></td>
				<td><%=res.getString("yyyymmdd") %></td>
				<td><%=res.getString("email") %></td>
				<td><%=res.getString("introduce") %></td>
				<td><a href="/lesson04/delete-user?id=<%= res.getInt("id")%>">삭제</a></td>
						
			</tr>
			<%
			}
			%>
		</tbody> --%>
	</div>
			<% // DB 연결 해제
			ms.disconnect();
		

				%>
				</body>
</html>