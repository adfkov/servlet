package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request ,HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String apply = request.getParameter("apply");
		String applytext = request.getParameter("applytext");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title></title></head><body>");
		out.print("<strong>"+apply+"</strong>님 지원이 완료 되었습니다.<br><br>");
		out.print("<strong>지원 내용</strong><br><br>");
		out.print(applytext);
		
		out.print("</body></html>");
		
	}
}
