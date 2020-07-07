<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 기본객체: session</title>
	</head>
	<body>
		<%
		
			pageContext.setAttribute("name", "홍길동");
			pageContext.setAttribute("age", 24);
		
			request.setAttribute("name", "일지매");
		   	request.setAttribute("age", 40);
		   	
			session.setAttribute("name", "임꺽정");
		   	session.setAttribute("age", 37);
		   	
		%>

		<h3> 이름: <%=pageContext.getAttribute("name") %></h3>
		<h3> 나이: <%=pageContext.getAttribute("age") %></h3>		
		<hr>
		<h3> 이름: <%=request.getAttribute("name") %></h3>
		<h3> 나이: <%=request.getAttribute("age") %></h3>
		<hr>
		<h3> 이름: <%=session.getAttribute("name") %></h3>
		<h3> 나이: <%=session.getAttribute("age") %></h3>
		
		<%	request.getRequestDispatcher("Jsp02_IO_4_4.jsp").forward(request, response); %>
		
		<%--<% response.sendRedirect("Jsp02_IO_4_4.jsp"); --%>
		
		
	</body>
</html>