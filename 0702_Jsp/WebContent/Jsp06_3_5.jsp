<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	//로그 아웃.
	session.invalidate();
	response.sendRedirect("Jsp06_3_0.jsp");
	
	//response

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
	</body>
</html>