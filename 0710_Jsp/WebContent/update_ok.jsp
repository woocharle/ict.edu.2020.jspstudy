<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String m_name = request.getParameter("m_name");
	String m_age = request.getParameter("m_age");
	
	VO vo = (VO)session.getAttribute("vo");
	String idx = vo.getIdx();
	
	int result = DAO.getInstance().getUpdate(idx, m_name, m_age);
	pageContext.setAttribute("result", result);
	
	//기존의 세션의 정보를 업데이트하자.
	
	vo.setM_name(m_name);
	vo.setM_age(m_age);
	
	//같은 이름이 있으면 덮어쓰기가 된다.
	session.setAttribute("vo", vo);
	
%>
<c:choose>
	<c:when test="${result > 0}">
		<script>
			alert("갱신성공");
			location.href="onelist.jsp";
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("수정실패");
			history.go(-1);
		</script>
	</c:otherwise>
</c:choose>