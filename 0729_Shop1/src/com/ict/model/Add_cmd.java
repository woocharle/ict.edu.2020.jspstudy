package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.CVO;
import com.ict.db.DAO;
import com.ict.db.VO;

public class Add_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		Cart.addProduct(idx);                    
		
		CVO cvo = new CVO();
	
		cvo.setC_id(request.getParameter("c_id"));
		cvo.setC_num(request.getParameter("c_num"));
		cvo.setC_quant(String.valueOf(Cart.quant));
		cvo.setC_total(String.valueOf(Cart.total));
		
		// select로 품번이 똑같은 이름이 있을 경우, 수량과 총량만 변경\
		String c_num1 = cvo.getC_num();
		String c_num2 = DAO.getCnum(cvo);
		
		int result = 0;
	
		if (c_num1.equals(c_num2)) {
			
			result = DAO.getIDU_C(cvo, "Update");
			
		} else {
			cvo.setC_name(request.getParameter("c_name"));
			cvo.setC_price(request.getParameter("c_price"));
			cvo.setC_saleprice(request.getParameter("c_saleprice"));
			
			result = DAO.getIDU_C(cvo, "Insert");
			
		}
		
	
		
		return "MyController?cmd=content&idx="+idx;
	}
}
