<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	VO vo = new VO();
	vo.setM_name(request.getParameter("name"));
	vo.setM_sub(request.getParameter("sub"));
	vo.setM_cnt(request.getParameter("content"));
	vo.setM_email(request.getParameter("email"));
	vo.setIdx(request.getParameter("idx"));

	int result = DAO.getInstance().getUpdate(vo);
	pageContext.setAttribute("result", result);

%>
<jsp:forward page="onelist.jsp?idx=${vo.idx}"></jsp:forward>