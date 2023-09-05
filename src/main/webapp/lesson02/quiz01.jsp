<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 2. 점수들의 평균 구하기
스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요.
int[] scores = {80, 90, 100, 95, 80}; 
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
-->

	<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	double mean = 0.0;
	for(int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	mean = (double)sum / scores.length;
	
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	int pis = 100 / scoreList.size();  
	for(int j = 0; j < scoreList.size(); j++) {
		if(scoreList.get(j).equals("O")) {
			score += pis;
		}
	}
	
	String birthDay = "20010820";
	int year = Integer.valueOf(birthDay.substring(0,4));
	int age = 2024 - year;
	%>
		
	<%! 
	public int getSum(int N){
		int i = 1;
		int sum = 0;
		while(i <= N) {
			sum += i;
			i++;
		}
		return sum;
	}
	
	%>
	<b>1부터 50까지의 합은 </b><%=getSum(10) %><b> 입니다.</b>
	<br>
	<b>평균:</b><%=mean%>
	<br>
	<b>점수:</b><%=score %>
	<br>
	<b>20010820의 나이는 </b><%= age%>
</body>
</html>