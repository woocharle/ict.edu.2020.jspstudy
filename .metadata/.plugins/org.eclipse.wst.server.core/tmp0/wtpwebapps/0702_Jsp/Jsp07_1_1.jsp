<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<%--파라미터 결과값을 받는 기존 방법
	Jsp02_IO_1.jsp, Jsp04_2_3.jsp 참고 

--%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1> EL로 파라미터 결과값 받기. </h1>
		<h2> 
			<li>이름: ${param.name} </li>
			<li>나이: ${param.age} </li>
			<li>주소: ${param.addr} </li>
			<li>성별: ${param.gender} </li>
			<li>취미: ${paramValues.hobby[0]} &nbsp;
					  ${paramValues.hobby[1]} &nbsp;
					  ${paramValues.hobby[2]} &nbsp;
					  ${paramValues.hobby[3]} &nbsp;
					  
			</li>
		
		</h2>
		
		
		
		
	</body>
</html>