package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Add_cmd;
import com.ict.model.Admin_cmd;
import com.ict.model.Command;
import com.ict.model.Content_cmd;
import com.ict.model.Delete_cmd;
import com.ict.model.Edit_cmd;
import com.ict.model.Login_cmd;
import com.ict.model.Loginok_cmd;
import com.ict.model.Logout_cmd;
import com.ict.model.Productadd_cmd;
import com.ict.model.Shop_cmd;
import com.ict.model.View_cmd;


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
			case "list"		: comm = new Shop_cmd() ; break;
			case "content"	: comm = new Content_cmd(); break;
			case "addcart"	: comm = new Add_cmd(); break;
			case "viewcart"	: comm = new View_cmd(); break;
			case "edit"		: comm = new Edit_cmd(); break;
			case "delete"	: comm = new Delete_cmd(); break;
			case "login"	: comm = new Login_cmd(); break;
			case "login_ok" : comm = new Loginok_cmd(); break;
			case "logout" 	: comm = new Logout_cmd(); break;
			case "admin"  	: comm = new Admin_cmd(); break;
			case "productadd": comm = new Productadd_cmd(); break;
		}
			
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
