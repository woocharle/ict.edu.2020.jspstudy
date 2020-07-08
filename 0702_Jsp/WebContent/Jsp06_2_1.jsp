<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1> 세션 연습 3 </h1>
		<%-- 세션 데이터 저장 --%>
		<p> 세션 ID: <%=session.getId() %></p>
	
		<%-- 세션 시간 제한 --%>
		<% session.setMaxInactiveInterval(10); %>
		<p> 세션 데이터호출: <%=session.getAttribute("ict") %> </p> 
		
		
	</body>
</html>