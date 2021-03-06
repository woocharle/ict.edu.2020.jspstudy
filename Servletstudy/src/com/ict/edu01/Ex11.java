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
  
  1. 리다이렉트: 페이지 이동화면 기존의 request, response 정보가 사라진다.
     			 새로운 request, response 정보가 만들어진다.
     			 즉, 기존의 파라미터 값들이 사라진다. 주소창에 최종 주소가 보인다.
     			 
   	 사용법: response.sendRedirect("이동할 주소")
   			 - servlet으로 이동할 경우 
   			 	response.sendRedirect("파일명");
   			 - html로 이동할 경우
   			 	response.sendRedirect("파일명.html");
  
  2. 포워딩: 페이지 이동화면 기존의 request, response 정보를 가져간다.
     		 기존의 파라미터 값들이 살아 있다. 주소창에 최종 주소가 보인다.
     사용법: request.getRequestDispatcher("이동할주소").forward(request, response);
     
     
  3. a링크: 파라미터 값을 가지고 갈 수도 있고 안 가지고 갈 수도 있다.
  			현재 화면이 보이고 화면에서 a 링크 부분을 클릭해야만 이동.
    
   
 */
@WebServlet("/Ex11")
public class Ex11 extends HttpServlet {
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
		
		//response.sendRedirect("Ex12");
		response.sendRedirect("day01/html12.html");
		
		
	}

}
