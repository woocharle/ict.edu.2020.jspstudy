<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");  
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 로그인 결과 </title>
	</head>
	<body>
		<%
			// 아이디와 패스워드가 같으면 로그인 성공
			if(id.equals(pw)){
				response.addCookie(new Cookie("ict",URLEncoder.encode("jsp","utf-8")));
			}%>		

		<% response.sendRedirect("Jsp05_2_2.jsp"); %>
		

	</body>
</html>