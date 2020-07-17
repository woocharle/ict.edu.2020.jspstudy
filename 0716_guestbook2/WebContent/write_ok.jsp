<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = getServletContext().getRealPath("/upload");
	MultipartRequest mr = 
			new MultipartRequest(request, path, 100*1024*1024, "utf-8", new DefaultFileRenamePolicy());	
	pageContext.setAttribute("mr", mr);

	VO vo = new VO();
	vo.setName(mr.getParameter("name"));
	vo.setSub(mr.getParameter("sub"));
	vo.setEmail(mr.getParameter("email"));
	vo.setPw(mr.getParameter("pw"));
	vo.setCon(mr.getParameter("con"));
	
	//첨부파일을 업로드 할 때와 하지 않을 때 구분
	if(mr.getFile("fp") != null){
		vo.setFp(mr.getFilesystemName("fp"));
	} else{
		vo.setFp("");
	}
	
	
	int result = DAO.getInstance().getIDU(vo, "Insert");

	pageContext.setAttribute("result", result);
%>
<c:choose>
	<c:when test="${result > 0}">
		<script>
			alert("작성 성공");
			location.href="list.jsp"
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("작성 실패");
			location.href="write.jsp"
		</script>
	</c:otherwise>
	
</c:choose>


