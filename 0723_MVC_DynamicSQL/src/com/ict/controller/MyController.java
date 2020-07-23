package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.All_cmd;
import com.ict.model.Command;
import com.ict.model.Dept_cmd;
import com.ict.model.Dynamic_cmd;


@WebServlet("/MyController")
public class MyController extends HttpServlet {
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
		String path = "";
		
		switch (cmd) {
			case "all" : comm = new All_cmd(); break;
			case "dept" : comm = new Dept_cmd(); break;
			case "dynamic" : comm = new Dynamic_cmd(); break;

		}
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
