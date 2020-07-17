package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Click2_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String name = "토르";
		int age = 504;
		String msg = "THOR";
		
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		request.setAttribute("msg", msg);
		
		return "view/result.jsp";
	}
}
