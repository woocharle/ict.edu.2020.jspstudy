package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.CVO;
import com.ict.db.DAO;
import com.ict.db.VO;

public class View_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 카트는 Cart클래스에 존재
		String c_id = request.getParameter("c_id");
		
		
		List<CVO> clist = DAO.getCart(c_id);
		
		request.setAttribute("c_id", c_id);
		request.setAttribute("clist", clist);
		
		int total = 0;
		
		for (CVO cvo : clist) {

			total = total + Integer.parseInt(cvo.getC_total());
		}
		
		request.setAttribute("name", request.getAttribute("m_name"));
		request.setAttribute("total", total);
		
		return "view/cartList.jsp";
	}
}
