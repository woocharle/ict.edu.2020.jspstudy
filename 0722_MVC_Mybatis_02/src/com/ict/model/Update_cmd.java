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
		
		try {
			String path = request.getServletContext().getRealPath("/upload");
			MultipartRequest mr = new MultipartRequest(
										request, 
										path,
										100*1024*1024,
										"utf-8",
										new DefaultFileRenamePolicy());
			
	
			vo.setIdx(mr.getParameter("idx"));
			vo.setName(mr.getParameter("name"));
			vo.setSubject(mr.getParameter("subject"));
			vo.setContent(mr.getParameter("content"));
			vo.setEmail(mr.getParameter("email"));

		
			if(mr.getFile("filename") != null){
				vo.setFilename(mr.getFilesystemName("filename"));
			} else{
				vo.setFilename("");
			}
			
			result = DAO.getIDU(vo, "Update");
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		/*
		int result = DAO.getInstance().getIDU(vo,"Update");
		
		request.getSession().setAttribute("vo", vo);
		*/
		if(result > 0) {
			System.out.println("성공");
			return "MyController?cmd=onelist&idx=" + vo.getIdx();
		} else {
			System.out.println("실패");
			
			return "view/update.jsp";
		}
		
		
	}
	
}
