package com.ict.model;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ans_write0_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String cPage = request.getParameter("cPage");
		request.setAttribute("cPage", cPage);

		return "view/ans_write.jsp";
	}
}
