package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Click1;
import com.ict.model.Click2;
import com.ict.model.Click3;


@WebServlet("/Mycontroller")
public class Mycontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String cmd = request.getParameter("cmd");
		String path = "";
		
		switch (cmd) {
		case "a":
			Click1 ck1 = new Click1();
			path = ck1.exec(request, response);			
			break;

		case "b":
			Click2 ck2 = new Click2();
			path = ck2.exec(request, response);
			break;
			
		case "c":
			Click3 ck3 = new Click3();
			path = ck3.exec(request, response);			
			break;

		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
