<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
		</head>
	<body>
		<h1> 세션 연습 1</h1>
		<%
			Date time = new Date();
		%>
		<h2>
			<p> 세션ID: <%= session.getId() %></p>
			<p>	현재시간: <%= time %></p>
			
			<% time.setTime(session.getCreationTime()); %>
			<p> 세션 생성시간 : <%= time %></p>
			
			<% time.setTime(session.getLastAccessedTime()); %>
			<p>	세션 최근접근시간: <%= time %></p>		

		</h2>
	

	</body>
</html>