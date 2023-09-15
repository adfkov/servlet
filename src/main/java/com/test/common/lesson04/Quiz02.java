package com.test.common.lesson04;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02")
public class Quiz02 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request ,HttpServletResponse response) throws IOException
	{
		// 응답 생략(302)
		
				// request parameter
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		
		
		// DB 연결
				MysqlService ms = MysqlService.getInstance(); // 객체를 얻어낸다.
				ms.connect();
				// 삭제 query 
				String insertQuery = "select `name`,`url` from `url_table` order by `id` desc";
				try {
					ResultSet res = ms.select(insertQuery);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				try {
					ms.update(insertQuery);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				// DB 연결 해제
				ms.disconnect();
				// redirect => 유저 목록 화면
				response.sendRedirect("/lesson04/ex02/userList.jsp");
				//
	}
}
