package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ict.model.Click1_cmd;
import com.ict.model.Click2_cmd;
import com.ict.model.Click3_cmd;
import com.ict.model.Command;


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
		Command comm = null;
		
		switch (cmd) {
		case "a": comm = new Click1_cmd(); break;

		case "b": comm  = new Click2_cmd(); break;
			
		case "c": comm  = new Click3_cmd(); break;

		}
		
		String path = comm.exec(request, response);		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
