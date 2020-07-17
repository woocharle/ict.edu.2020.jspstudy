package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Click3_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String name = "로키";
		int age = 494;
		String msg = "I'm a GOD";
		
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		request.setAttribute("msg", msg);
		
		return "view/result.jsp";
	}
}
