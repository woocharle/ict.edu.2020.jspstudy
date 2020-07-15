<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");

	VO vo = new VO();
	vo.setName(request.getParameter("name"));
	vo.setSub(request.getParameter("sub"));
	vo.setEmail(request.getParameter("email"));
	vo.setPw(request.getParameter("pw"));
	vo.setFp(request.getParameter("fp"));
	vo.setCon(request.getParameter("con"));
	
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


