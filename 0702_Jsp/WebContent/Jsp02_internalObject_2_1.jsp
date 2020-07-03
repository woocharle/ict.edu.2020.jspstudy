<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 파라미터 결과 보기 (jsp_IO_2_1)</title>
	</head>
	<body>
		<h1> 파라미터 결과 보기 </h1>
		<h2> 
			<li> id : <%=id %></li>
			<li> pw : <%=pw %></li>
		
		
		</h2>
		<%-- 다른 페이지로 이동하기(중간페이지가 안 보임)
		<!--1.response.sendRedirect("이동할페이지")-->
		<% response.sendRedirect("Jsp02_internalObject_2_2.jsp"); %>
		--%>
		
		<!-- 2.response.get -->
		<%--<% request.getRequestDispatcher("Jsp02_internalObject_2_2.jsp").forward(request, response);--%>
		
		<!-- 3. a링크로 페이지 이동 -->
		<a href="Jsp02_internalObject_2_2.jsp"> 다른페이지로 이동(파라미터 X) </a>
		<a href="Jsp02_internalObject_2_2.jsp?id=<%=id%>&pw=<%=pw %>"> 다른페이지로 이동(파라미터 O) </a>
		
	</body>
</html>