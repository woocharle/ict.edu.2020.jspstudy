<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>EL : 표현언어</title>
	</head>
	<body>
		<h2> 표현식 산술 연산 사용 예제 </h2>
		<h3>
			<li> 15 + 7 = <%= 15 + 7 %></li>
			<li> 15 - 7 = <%= 15 - 7 %></li>
			<li> 15 x 7 = <%= 15 * 7 %></li>
			<li> 15 / 7 = <%= 15 / 7 %></li>
		</h3>
		<hr>
		<h2> EL 산술 연산 사용 예제 </h2>
		<h3>
			<li> 15 + 7 = ${15 + 7} </li>
			<li> 15 - 7 = ${15 - 7} </li>
			<li> 15 x 7 = ${15 * 7} </li>
			<li> 15 / 7 = ${15 / 7} </li>
		</h3>
		<hr>
		
		<h2> 표현식 변수 사용 예제 </h2>
		<h3>
			<% int su1 = 125 + 25; %>
			<h3> <p> su1 = <%= su1 %> </p></h3>
		</h3>
		<hr>
		
		<h2> EL 변수 사용 예제 </h2>
		<h3>
			<% int s1 = 125 + 25; %>
			<h3> <p> su1 = ${su1} </p></h3>
		</h3>
		<hr>
		<h2> EL 변수 사용 예제 </h2>
		<h3>
			<% int s2 = 125 + 25; 
				pageContext.setAttribute("s2", s2);%>
			<h3> <p> s2 = ${s2} </p></h3>
		</h3>
		<hr>
		<%pageContext.setAttribute("pc", "i3"); %>
		<%request.setAttribute("pc", "i5"); %>
		<%session.setAttribute("pc", "i7"); %>
		<%application.setAttribute("pc", "i9"); %>
		
		<h3>
			<li> 호출하기 (우선순위 존재) </li>
			<li> ${pc}</li>
			<li> ${pageScope.pc}</li>
			<li> ${requestScope.pc}</li>
			<li> ${sessionScope.pc}</li>
			<li> ${applicationScope.pc}</li>
		
		</h3>
		
		
	</body>
</html>