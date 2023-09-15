package com.test.common.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/add-bookmark")
public class AddBookmark extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request ,HttpServletResponse response) throws IOException {
		// 302 응답 컨텐트 타입 생략

		// Request parameter
		String name =request.getParameter("name");
		String url = request.getParameter("url");
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		// INSERT QUERY
		String insertQuery ="insert into `url_table` "
				+ "(`name`, `url`)"
				+ "values"
				+ "('" +name +"', '" + url + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// INSERT 수행
		
		// DB 연결 해제
		ms.disconnect();
		// 302로 리디랙션
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
		// 던진다 위쪽으로 , response.sendRedirect
		
	}
}
