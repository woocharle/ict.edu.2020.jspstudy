package com.ict.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.DAO;


public class Delete_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		BVO bvo = new BVO();
		
		try {
			String path = request.getServletContext().getRealPath("/upload");
			bvo = (BVO)request.getSession().getAttribute("bvo");
			
			if(bvo.getFilename() != ""){
				String file_name = path + File.separator + bvo.getFilename();
				File file = new File(file_name);
				boolean res = file.delete();
			}
				
			result = DAO.getIDU_1(bvo, "Delete");

		} catch (Exception e) {
			// TODO: handle exception
		}
		
		if(result > 0) {
			request.getSession().setAttribute("bvo", bvo);
			return "MyController?cmd=list";
		} else {
			return "view/delete.jsp";
		}
		
	}
}
