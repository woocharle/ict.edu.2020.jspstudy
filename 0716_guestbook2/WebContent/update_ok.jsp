<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String path = getServletContext().getRealPath("/upload");
	MultipartRequest mr = 
			new MultipartRequest(request, path, 100*1024*1024, "utf-8", new DefaultFileRenamePolicy());	
	pageContext.setAttribute("mr", mr);
	
	VO vo = new VO();
	vo.setIdx(mr.getParameter("idx"));
	vo.setName(mr.getParameter("name"));
	vo.setSub(mr.getParameter("sub"));
	vo.setEmail(mr.getParameter("email"));
	vo.setPw(mr.getParameter("pw"));
	vo.setCon(mr.getParameter("con"));
	
	//첨부파일을 업로드 할 때와 하지 않을 때 구분
	if(mr.getFile("fp") != null){
		vo.setFp(mr.getFilesystemName("fp"));
	} else{
		vo.setFp(mr.getParameter("f_name"));
	}

	int result = DAO.getInstance().getIDU(vo, "Update");

	pageContext.setAttribute("result", result);
	
%>
<jsp:forward page="onelist.jsp?idx=${vo.idx}"></jsp:forward>   
    
