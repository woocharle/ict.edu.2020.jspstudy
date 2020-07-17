package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class Update_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "view/list.jsp";

	}
	

	public int exec_1(HttpServletRequest request, HttpServletResponse response) {
		VO vo = new VO();
		
		vo.setIdx(request.getParameter("idx"));
		vo.setName(request.getParameter("name"));
		vo.setSubject(request.getParameter("subject"));
		vo.setContent(request.getParameter("content"));
		vo.setEmail(request.getParameter("email"));

		int result = DAO.getInstance().getIDU(vo,"Update");
		
		request.getSession().setAttribute("VO", vo);
		
		return result;
		
	}
	
	public String exec_2(HttpServletRequest request, HttpServletResponse response) {
		return "view/update.jsp";

	}
	
}
