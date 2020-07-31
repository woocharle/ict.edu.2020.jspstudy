package com.ict.model;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Ans_write_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		String cPage= "";
		
		try {
			String path = request.getServletContext().getRealPath("/upload");
			MultipartRequest mr = new MultipartRequest(
										request,
										path,
										100*1024*1024,
										"UTF-8",
										new DefaultFileRenamePolicy());
			
			cPage = mr.getParameter("cPage");
			
			int groups = Integer.parseInt(mr.getParameter("groups"));
			int step = Integer.parseInt(mr.getParameter("step"));
			int lev = Integer.parseInt(mr.getParameter("lev")); 
					
			step++;
			lev++;
			
			//DB에 group으로 lev을 업데이트 하자.
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("groups", groups);
			map.put("lev", lev);
			
			DAO.getUP_lev(map);
			
			VO vo = new VO();
			vo.setWriter(mr.getParameter("writer"));
			vo.setTitle(mr.getParameter("title"));
			vo.setContent(mr.getParameter("content"));
			vo.setPwd(mr.getParameter("pwd"));
			vo.setGroups(String.valueOf(groups));
			vo.setStep(String.valueOf(step));
			vo.setLev(String.valueOf(lev));
			if(mr.getFile("filename") != null) {
				vo.setFilename(mr.getFilesystemName("filename"));
			} else {
				vo.setFilename("");
			}
			
			result = DAO.getIDU(vo, "Insert_2");
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		if (result > 0) {
			return "MyController?cmd=list&cPage="+cPage;
		} else {
			return "view/ans_write.jsp";
		}
		
	}
}
