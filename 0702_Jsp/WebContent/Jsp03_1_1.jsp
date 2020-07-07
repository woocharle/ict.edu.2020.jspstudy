<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 기본객체 : request </title>
	</head>
	<body>
		<% 
			request.setAttribute("name", "일지매");
		   	request.setAttribute("age", 40);
		%>
		
		<h3> 이름: <%=request.getAttribute("name") %></h3>
		<h3> 나이: <%=request.getAttribute("age") %></h3>
		
		<!-- Jsp02_IO_4_2으로 넘긴다. -->
		<!-- 포워드 방식 -->
		<%--<%	request.getRequestDispatcher("Jsp02_IO_4_2.jsp").forward(request, response); %>--%>
		
		<!-- sendRedirect 방식 -->
		<% response.sendRedirect("Jsp03_IO_1_2.jsp"); %>
		
	</body>
</html>