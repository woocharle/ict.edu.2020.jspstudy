package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Update_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		VO vo = new VO();
		String cPage = "";
		
		try {
			String path = request.getServletContext().getRealPath("/upload");
			MultipartRequest mr = new MultipartRequest(
									request,
									path,
									100*1024*1024,
									"UTF-8",
									new DefaultFileRenamePolicy());
		
			cPage = mr.getParameter("cPage");
			
			vo.setIdx(mr.getParameter("idx"));
			vo.setWriter(mr.getParameter("writer"));
			vo.setTitle(mr.getParameter("title"));
			vo.setContent(mr.getParameter("content"));
			
			if (mr.getFile("filename") !=null) {
				vo.setFilename(mr.getFilesystemName("filename"));
			} else {
				vo.setFilename(mr.getParameter("f_name"));
			}
			
			result = DAO.getIDU(vo, "Update");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		if(result > 0) {
			return "MyController?cmd=onelist&idx="+vo.getIdx()+"&cPage="+cPage;
		} else {
			return "view/update.jsp";
		}
		
		
	}
}
