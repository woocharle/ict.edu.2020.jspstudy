package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.DAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Update_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		BVO bvo = new BVO();
		
		try {
			String path = request.getServletContext().getRealPath("/upload");
			MultipartRequest mr = new MultipartRequest(
								request,
								path,
								100*1024*1024,
								"UTF-8",
								new DefaultFileRenamePolicy());
			
			BVO bvo2 = (BVO)request.getSession().getAttribute("bvo");
			bvo.setB_idx(bvo2.getB_idx());
			bvo.setSubject(mr.getParameter("subject"));
			bvo.setWriter(mr.getParameter("writer"));
			bvo.setContent(mr.getParameter("content"));
			
			
			if(mr.getFile("filename") != null) {
				bvo.setFilename(mr.getFilesystemName("filename"));
			}else {
				bvo.setFilename(mr.getParameter("f_name"));
			}
			
			result=DAO.getIDU_1(bvo, "Update");
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}

		if (result > 0) {
			return "MyController?cmd=onelist&b_idx="+bvo.getB_idx();
		} else {
			return "view/update.jsp";
		}
		
	}
}
