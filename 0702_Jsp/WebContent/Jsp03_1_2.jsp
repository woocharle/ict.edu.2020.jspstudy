<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 기본객체 : request </title>
	</head>
	<body>
		<!-- Jsp02_IO_4_1에서 넘어온다. -->
		<h2> Jsp02_IO_4_2 페이지 </h2>
		<h3> 이름: <%=pageContext.getAttribute("name") %></h3>
		<h3> 나이: <%=pageContext.getAttribute("age") %></h3>
		<hr>
		<h3> 이름: <%=request.getAttribute("name") %></h3>
		<h3> 나이: <%=request.getAttribute("age") %></h3>
		
	</body>
</html>