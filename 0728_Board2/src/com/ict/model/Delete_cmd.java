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
		String cPage = request.getParameter("cPage");
		                                
		try {
			String path = request.getServletContext().getRealPath("/upload");
			vo = (VO)request.getSession().getAttribute("vo");
			
			if (vo.getFilename() != "") {
				String filename= path + File.separator + vo.getFilename();
				File file = new File(filename);
				file.delete();
			}
			
		
			result = DAO.getIDU(vo, "Delete");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		return "MyController?cmd=list&cPage=" + cPage;
	}
}
