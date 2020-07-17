<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.ict.edu.VO"%>
<%@page import="com.ict.edu.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	String path = getServletContext().getRealPath("/upload");	
	
	VO vo = (VO)session.getAttribute("vo");
	
	if(vo.getFp() != ""){
		String file_name = path + File.separator + vo.getFp();
		File file = new File(file_name);
		boolean res = file.delete();
	}

	int result = DAO.getInstance().getIDU(vo, "Delete");
	pageContext.setAttribute("result", result);
	//java 참고 chapter 14.IO:  package edu1 참고
	
	
	
	
%>
<c:choose>
	<c:when test="${result > 0}" >
		<script>
			alert("삭제 성공");
			location.href="list.jsp";
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("삭제 실패");
			location.href="onelist.jsp";
		</script>
	</c:otherwise>
</c:choose>