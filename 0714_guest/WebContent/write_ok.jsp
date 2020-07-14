<%@page import="com.ict.edu.VO"%>
<%@page import="com.ict.edu.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String sub = request.getParameter("subject");
	String con = request.getParameter("content");
	String email = request.getParameter("email");
	String pw = request.getParameter("pwd");
	
	int result = DAO.getInstance().getInsert(name, sub, con, email, pw);
	
	pageContext.setAttribute("result", result);
	/*
	VO vo = new VO();
	vo.setM_name(request.getParameter("name"));
	vo.setM_sub(request.getParameter("subject"));
	vo.setM_cnt(request.getParameter("content"));
	vo.setM_email(request.getParameter("email"));
	vo.setM_pw(request.getParameter("pwd"));
	
	int result2 = DAO.getInstance().getInsert2(vo);
	*/
%>
<c:choose>
	<c:when test="${result > 0}">
		<script>
			alert("작성 성공");
			location.href="list.jsp";
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("작성 실패");
			location.href="write.jsp";
		</script>
	</c:otherwise>

</c:choose>
