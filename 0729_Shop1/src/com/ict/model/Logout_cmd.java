package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Logout_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().invalidate();
		return "MyController?cmd=list";
	}
}
