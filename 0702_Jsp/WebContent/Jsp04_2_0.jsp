<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 액션 태그_1 </title>
	</head>
	<body>
		<h2> include 액션 </h2>
		
		<jsp:include page="Jsp02_IO_2_0.jsp" />
		<hr>
		
		<% request.setCharacterEncoding("UTF-8"); %>
		<h2> include 액션 </h2>
		<jsp:include page="Jsp02_IO_2_1.jsp">
			<jsp:param value ="K-3기관총 사수" name = "id"/>
			<jsp:param value ="1112" name = "pw"/>
		</jsp:include> 
		<hr>
		
		<!-- include 지시어. -->
		<h2> include 지시어 </h2>
		<%@ include file="Jsp02_IO_2_0.jsp" %>
		
		<hr>
		<%@ include file="Jsp02_IO_2_1.jsp" %>
		<h2>주소: <%=addr %></h2>

		
		
	</body>
</html>