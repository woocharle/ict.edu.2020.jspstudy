<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 기본 객체 : pageContext</title>
	</head>
	<body>
		<%
			pageContext.setAttribute("name", "홍길동");
			pageContext.setAttribute("age", 24);
		%>
		<h3> 이름: <%=pageContext.getAttribute("name") %></h3>
		<h3> 나이: <%=pageContext.getAttribute("age") %></h3>
		
		
		
		
	</body>
</html>