package com.ict.edu01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
  페이지 이동 (a링크, 리다이렉트, 포워딩)
  

   
 */
@WebServlet("/Ex15")
public class Ex15 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// 넘어온 파라미터 id와 pw를 받아서 저장하자.
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		out.println("<h2> Ex15 </h2>");
		out.println("<h3>");
		out.println("id :" + id + "<br>");
		out.println("pw :" + pw);
		out.println("</h3>");
		
		out.println("<a href='Ex16'> 서블릿, 정보 X </a> <br>");
		out.println("<a href='Ex16?id="+id+"&pw="+pw+"'> 서블릿, 정보 O </a> <br>");
		out.println("<a href='day01/html16.html'> html, 정보 X </a> <br>");
		out.println("<a href='day01/html16.html?id="+id+"&pw="+pw+"'> html, 정보 O </a>");
	
		
	}

}
