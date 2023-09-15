package com.test.common.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/delete-bookmark")
public class DeleteBookmarkServlet extends HttpServlet {
	
	@Override // a 태그는 get 방식
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		// 응답 값 생략
		// 요청 id REQUEST PARAM
		int id = Integer.valueOf( request.getParameter("id"));
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		// DELETE 쿼리 수행
		String deleteQuery = "delete from `url_table` where `id` = "+ id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// DB 연결 해제
		ms.disconnect();
		
		// 리디랙션 302 => quiz02로 이동
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp"); 
	}
}
