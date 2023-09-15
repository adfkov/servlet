package com.test.common.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex01")
public class Ex01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		PrintWriter out = response.getWriter();
		String query = "select * from `city`";
		try {
			ResultSet res = ms.select(query);
			while(res.next()) { //  결과 행이 있는동안 계속 수행
				out.println(res.getInt("country_id"));
//				out.println(res.getString("title"));
//				out.println(res.getInt("price"));
//				out.println(res.getString("description"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
	}
}
