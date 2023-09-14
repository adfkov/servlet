package com.test.common.lesson04;

import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/delete-user")
public class DeleteUserServlet extends HttpServlet 	{
	@Override
	public void doGet(HttpServletRequest request ,HttpServletResponse response)
	{
		// 응답 생략(302)
		
		// request parameter
		int id = Integer.parseInt( request.getParameter("id"));
		// DB 연결
		MysqlService ms = MysqlService.getInstance(); // 객체를 얻어낸다.
		ms.connect();
		// 삭제 query 
		String deleteQuery =  "delete from `new_user` where `id` =" + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// DB 연결 해제
		ms.disconnect();
		// redirect => 유저 목록 화면
		
		//
	}
}
