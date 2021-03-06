package com.ict.edu01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex09")
public class Ex09 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// Ex09.html에 넘어오는 파라미터 값을 받아서 저장
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		int sum = kor + eng + math;
		double avg = (int)(sum / 3.0 * 10)/10.0;
		String grd ="";
		
		if (avg >= 90) {
			grd = "A";
		} else if (avg >= 80) {
			grd = "B";
		} else if (avg >= 70) {
			grd = "C";
		} else {
			grd = "Fs";
		}
		
		out.println("<h2><ul>");
		out.println("<li> 이름: "+ name +"</li>");
		out.println("<li> 국어: "+ kor +"</li>");
		out.println("<li> 영어: "+ eng +"</li>");
		out.println("<li> 수학: "+ math +"</li>");
		out.println("<li> 총점: "+ sum +"</li>");
		out.println("<li> 평균: "+ avg +"</li>");
		out.println("<li> 학점: "+ grd +"</li>");
		out.println("</ul></h2>");
		
		
		
	}

}
