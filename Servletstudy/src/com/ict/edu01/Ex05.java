package com.ict.edu01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex05
 */
@WebServlet("/Ex05")
public class Ex05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  // 1. 요청에 의한 한글 처리 
		  // 2. 응답에 의한 한글 처리 및 문서 처리 
			response.setContentType("text/html; charset=UTF-8");
		  // 3. 출력 처리 
			PrintWriter out = response.getWriter();

			out.print("<!DOCTYPE html>");
			out.print("<html>");
			out.print("<head>");
			out.print("<meta charset='UTF-8'>");
			out.print("<title>class Attribute</title>");
			out.print("<style type='text/css'>");
			out.print(".city{ ");
			out.print("background-color: black;");
			out.print("color: skyblue;");
			out.print("margin: 20px;");
			out.print("padding: 20px;");
			out.print("width: 300px;");
			out.print("float: left;");
			out.print("}");
			out.print("</style>");
			out.print("</head>");
			out.print("<body>");
			out.print("<div>");
			out.print("<div class='city'>");
			out.print("<h2>London</h2>");
			out.print("<p>London is the capital of England.</p>");
			out.print("</div>");
			out.print("<div class='city'>");
			out.print("<h2>Paris</h2>");
			out.print("<p>paris is the capital of France.</p>");
			out.print("</div>");
			out.print("<div class='city'>");
			out.print("<h2>Tokyo</h2>");
			out.print("<p>Tokyo is the capital of Japan.</p>");
			out.print("</div>");
			out.print("</div>");
			out.print("<div>");
			out.print("<div class='city'>");
			out.print("<h2>London</h2>");
			out.print("<p>London is the capital of England.</p>");
			out.print("</div>");
			out.print("<div class='city'>");
			out.print("<h2>Paris</h2>");
			out.print("<p>paris is the capital of France.</p>");
			out.print("</div>");
			out.print("<div class='city'>");
			out.print("<h2>Tokyo</h2>");
			out.print("<p>Tokyo is the capital of Japan.</p>");
			out.print("</div>");
			out.print("</div>");
			out.print("</body>");
			out.print("</html>");
			
			
	}

}
