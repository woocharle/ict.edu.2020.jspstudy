package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.VO;

public class View_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 카트는 Cart클래스에 존재
		List<VO> clist = Cart.cartlist;
		request.setAttribute("clist", clist);
		request.setAttribute("total", Cart.total);
		
		return "view/cartList.jsp";
	}
}
