package com.ict.model;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Write_cmd implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		int result = 0;
		
	    try {
			String path = request.getServletContext().getRealPath("/upload");
			MultipartRequest mr = new MultipartRequest(
										request, 
										path,
										100*1024*1024,
										"utf-8",
										new DefaultFileRenamePolicy());
			
			VO vo = new VO();
			vo.setName(mr.getParameter("name"));
			vo.setSubject(mr.getParameter("subject"));
			vo.setEmail(mr.getParameter("email"));
			vo.setPwd(mr.getParameter("pwd"));
			vo.setContent(mr.getParameter("content"));
			
			if(mr.getFile("filename") != null){
				vo.setFilename(mr.getFilesystemName("filename"));
			} else{
				vo.setFilename("");
			}
			
			result = DAO.getIDU(vo, "Insert");
	    	
		} catch (Exception e) {
			// TODO: handle exception
		}
	
		/*
		ArrayList<VO> list = DAO.getInstance().getList();
		request.getSession().setAttribute("list", list);
		
		// alert을 하고 싶으면 jsp를 만들고 경로를 만들어 보낼 것.
		*/
		
		if(result > 0) {
			return "MyController?cmd=list";
		} else {
			return "view/write.jsp";
		}
		
	}
	
	
}
