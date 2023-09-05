<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTML 주석: 소스보기에서 보인다 -->
	<%-- JSP 주석 --%>
<%
	// 자바의 주석
	// 스크립틀릿(Scriptlet) : %로 열고 닫는 것
	float sum = 0;
	for(float i = 1; i <= 10; i+=0.1) {
		sum += i;
	}
%>
<%-- <%= %> : expression 문법 --%>
<b>합계:</b><%=sum%>

<input type="text" value="<%= sum%>">
<br>
<%!
	// 선언문 - 클래스 같은 느낌
	
	// field
	private int num = 100;
	// method
	public String getHelloWorld() {
		return "Hello world";
	}
	
	List<String> list = List.of("a","b","c");
%>

<%= getHelloWorld() %>
<br>
<%=num + 200%>

</body>
</html>