package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.MVO;

public class Loginok_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String m_id = request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");
		
		MVO mvo = new MVO();
		mvo.setM_id(m_id);
		mvo.setM_pw(m_pw);
			
		MVO m_vo = DAO.getLogIn(mvo);
		
		if(m_vo !=null) {
			request.getSession().setAttribute("mvo", m_vo);
			request.getSession().setAttribute("login", "ok");
			
			if(m_vo.getM_id().equals("admin") && m_vo.getM_pw().equals("admin")) {
				request.getSession().setAttribute("admin", "ok");
				return "MyController?cmd=admin";
			}
			
			return "MyController?cmd=list";
			
			//관리자가 로그인 성공하면 별도 처리 
			
		}else {
			return "view/login.jsp";
		}
		
	}
}
