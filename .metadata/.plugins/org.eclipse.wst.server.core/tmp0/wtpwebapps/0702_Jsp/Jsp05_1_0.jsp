<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키</title>
	</head>
	<body>
		<% Cookie cookie = new Cookie("name", URLEncoder.encode("hong", "UTF-8"));
			response.addCookie(cookie);%>
			
		<h2>
			<p> 쿠키 이름: <%=cookie.getName() %></p>
			<p> 쿠키 값  : <%=cookie.getValue() %></p>
		</h2>
	</body>
</html>