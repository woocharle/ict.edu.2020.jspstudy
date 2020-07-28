package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Delete0_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "view/delete.jsp";
	}
}
