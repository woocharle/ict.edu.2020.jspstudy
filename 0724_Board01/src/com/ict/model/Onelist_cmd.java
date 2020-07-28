package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.CVO;
import com.ict.db.DAO;

public class Onelist_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String b_idx = request.getParameter("b_idx");
		
		int result = DAO.getHitup(b_idx);	
		BVO bvo = DAO.getOnelist(b_idx);
		
		request.getSession().setAttribute("bvo", bvo);
		
		//댓글 가져오기

		List<CVO> clist = DAO.getclist(b_idx);
		request.setAttribute("clist", clist);
	
		
		return "view/onelist.jsp";
	}
}
