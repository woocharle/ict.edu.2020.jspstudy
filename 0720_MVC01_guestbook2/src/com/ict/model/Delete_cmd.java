package com.ict.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class Delete_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		VO vo = new VO();
		
		try {
			String path = request.getServletContext().getRealPath("/upload");
			vo = (VO)request.getSession().getAttribute("vo");
			
			if(vo.getFilename() != ""){
				String file_name = path + File.separator + vo.getFilename();
				File file = new File(file_name);
				boolean res = file.delete();
			}
			
			result = DAO.getInstance().getIDU(vo, "Delete");

		} catch (Exception e) {
			// TODO: handle exception
		}
		
		if(result > 0) {
			request.getSession().setAttribute("vo", vo);
			return "MyController?cmd=list";
		} else {
			return "view/delete.jsp";
		}
		
	}
	
}
