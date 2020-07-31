package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Edit_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		int quant = Integer.parseInt(request.getParameter("su"));
		String idx = request.getParameter("idx");
		
		//수량이 변경되면 총 가격도 변경
		
		Cart.setProduct(idx, quant);
		
		
		return "MyController?cmd=viewcart";
	}
}
