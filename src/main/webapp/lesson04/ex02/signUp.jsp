<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 회원가입: signUp.jsp(폼) -> SignupServlet(db insert) -> redirect(302) -> userList.jsp(유저 목록, DB select) 
 2) 회원삭제: userList.jsp(테이블) -> DeleteUserServlet(Db에서 delete) -> redirect(302) -> userList.jsp -->
 	<form method="post" action="/lesson04/sign-up">
 		<p>
 			<b>이름</b>
 			<input type="text" name="name">
 			</p>
 		<p>
 			<b>생년월일</b>
 			<input type="text" name="yyyymmdd">
 		</p>
 		<p>
 			<b>이메일</b>
 			<input type="text" name="email">
 		</p>
 		<p>
 			<b>자기소개</b>
			<textarea name="introduce">
				
			</textarea>
 		</p>
 		<p>
 			<b>이름</b>
 			<input type="submit" value="회원가입">
 			</p>
 		
 		
 	</form>
</body>
</html>