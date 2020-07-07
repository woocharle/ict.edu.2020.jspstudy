<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>errorPage</title>
	</head>
	<body>
		<h2> 요청처리 과정에서 에러가 발생했습니다. 빠른 시간 내에 문제를 해결하겠습니다.</h2>
		<h3> 에러 타입 : <%= exception.getClass().getName() %></h3>
		<h3> 에러 메세지 : <%= exception.getMessage() %></h3>
	</body>
</html>