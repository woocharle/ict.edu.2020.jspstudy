package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.CVO;
import com.ict.db.DAO;


public class Edit_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
				
		CVO cvo = new CVO();
		String c_id = request.getParameter("c_id");
		System.out.println(c_id);

		int quant = Integer.parseInt(request.getParameter("c_quant"));
		int price = Integer.parseInt(request.getParameter("c_saleprice"));
		int total = price * quant;

	
		cvo.setIdx(request.getParameter("idx"));
		cvo.setC_quant(String.valueOf(quant));
		cvo.setC_total(String.valueOf(total));
		
		
		int result = DAO.getIDU_C(cvo, "Update");

		if (result > 0) {
			return "MyController?cmd=viewcart&c_id="+c_id;
		} else {
			return "Mycontroller?cmd=list";
		}
		
		
	}
}
