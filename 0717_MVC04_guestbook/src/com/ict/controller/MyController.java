package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Command;
import com.ict.model.Delete_cmd;
import com.ict.model.List_cmd;
import com.ict.model.Onelist_cmd;
import com.ict.model.Update_cmd;
import com.ict.model.Write_cmd;

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
		int result = 0;
		String path = "";
		
		switch (cmd) {
			case "list": 
				comm = new List_cmd(); 
				path = comm.exec(request, response);
				break;
			
			case "write": 		
				comm = new Write_cmd(); 
				Write_cmd wr = new Write_cmd();
				result = wr.exec_1(request, response);
				if(result > 0) {
					path = comm.exec(request, response);
				} else {
					path = wr.exec_2(request, response);
				}
				break;
			
			case "onelist":
				comm = new Onelist_cmd();
				path = comm.exec(request, response);
				break;
				
			case "update":
				comm = new Update_cmd();
				Update_cmd up = new Update_cmd();
				result = up.exec_1(request, response);
				if(result > 0) {
					path = comm.exec(request, response);
				} else {
					path = up.exec_2(request, response);
				}
				
				break;
				
			case "delete":
				comm = new Delete_cmd();
				Delete_cmd dl = new Delete_cmd();
				result = dl.exec_1(request, response);
				if(result > 0) {
					path = comm.exec(request, response);
				} else {
					path = dl.exec_2(request, response);
				}
				break;
				
		}
		
		
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
