package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Ans_write0_cmd;
import com.ict.model.Ans_write_cmd;
import com.ict.model.Command;
import com.ict.model.Delete0_cmd;
import com.ict.model.Delete_cmd;
import com.ict.model.List_cmd;
import com.ict.model.Onelist_cmd;
import com.ict.model.Update_cmd;
import com.ict.model.Write0_cmd;
import com.ict.model.Write_cmd;
import com.ict.model.update0_cmd;


/**
 * Servlet implementation class MyController
 */
@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/HTML; charset=UTF-8");
		PrintWriter out = response.getWriter();
		Command comm = null;
		
		String cmd = request.getParameter("cmd");
		switch (cmd) {
			case "list": comm = new List_cmd(); break;
			case "write_0": comm = new Write0_cmd(); break;
			case "write": comm = new Write_cmd(); break;
			case "onelist": comm = new Onelist_cmd(); break;
			case "update_0": comm = new update0_cmd(); break;
			case "update": comm = new Update_cmd(); break;
			case "delete_0": comm = new Delete0_cmd(); break;
			case "delete": comm = new Delete_cmd(); break;
			case "ans_write_0": comm = new Ans_write0_cmd(); break;
			case "ans_write": comm = new Ans_write_cmd(); break;
		
		}
			
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
