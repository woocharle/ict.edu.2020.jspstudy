package com.ict.edu01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Cmd04;
import com.ict.model.VO_1;


@WebServlet("/Ex20")
public class Ex20 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String cmd = request.getParameter("cmd");
		Cmd04 c04 = new Cmd04();
		VO_1 vo = new VO_1();
		ArrayList<VO_1> list = new ArrayList<VO_1>();
		int sum = 0;
		String name;
		
		//페이지 이동 request와 response가 필요하면 포워딩, 필요 없으면 리다이렉트 Ex11참고
		switch (cmd) {
			case "1":		
				response.sendRedirect("day01/html21_1.html");
				break;
			case "2":
				response.sendRedirect("day01/html21_2.html");
				break;
			case "3":
				response.sendRedirect("day01/html21_3.html");
				break;
			case "4": 		
				list = c04.exec_1(request, response);
				
				out.println("<h2> 결과 </h2>");
				out.println("<h2><ul>");
				for (VO_1 k: list) {
					out.println("<li> 이름: "+ k.getName() +"</li>");
					out.println("<li> 국어: "+ k.getKor() +"</li>");
					out.println("<li> 영어: "+ k.getEng() +"</li>");
					out.println("<li> 수학: "+ k.getMath()+"</li>");
					out.println("<li> 총점: "+ k.getSum() +"</li>");
					out.println("<li> 평균: "+ k.getAvg() + "</li>");
					out.println("<li> 학점: "+ k.getGrd() +"</li>");
				}
				out.println("</ul></h2>");
				
				break;
		
			case "5":
				list = c04.exec_2(request, response);

				out.println("<h3>");
				for (VO_1 k: list) {
					out.println("<p>결과 : "+k.getSu1()+ k.getOp()+ k.getSu2()+"="+k.getSum()+"</p>");
				}
				out.println("</h3>");
				break;
				
			case "6":
				list = c04.exec_3(request, response);
				
				out.println("<h3>");
				for (VO_1 k: list) {
					out.println("<p>"+k.getName()+"의 일당은 "+k.getSum()+"</p>");
				}
				out.println("</h3>");
				break;
		}
		
	}

}
