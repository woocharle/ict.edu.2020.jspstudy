<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title> 액션태그_2 </title>
	</head>
	<body>
		<% request.setCharacterEncoding("UTF-8"); %>
		<jsp:forward page="Jsp02_IO_2_1.jsp">
			<jsp:param value="홍길동" name="id"/>
			<jsp:param value="1112" name="pw"/>
		</jsp:forward>
	</body>
</html>