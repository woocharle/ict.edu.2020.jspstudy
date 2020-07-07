<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>액션태그_4</title>
	</head>
	<body>
		<jsp:useBean id="vo" class="com.ict.edu01.VO" />
		<jsp:setProperty property="*" name="vo"/>
		
		<h1> 파라미터 값 표시하기 </h1>
			<ul>
				<li>이름: <jsp:getProperty property="name" name="vo"/></li>
				<li>나이: <jsp:getProperty property="age" name="vo"/></li>
				<li>주소: <jsp:getProperty property="addr" name="vo"/></li>
				<li>성별: <jsp:getProperty property="gender" name="vo"/></li>
				<li>취미: <% for(String  k : vo.getHobby()){
								out.print(k + "&nbsp;&nbsp;");
						  }%>   		
				</li>
				<li>반려동물: <% for(String  k : vo.getAnimal()){
								out.print(k + "&nbsp;&nbsp;");
						  	  }%>  
				</li>
				<li> cPage : <%=vo.getcPage() %></li>
			
			</ul>
		
	</body>
</html>