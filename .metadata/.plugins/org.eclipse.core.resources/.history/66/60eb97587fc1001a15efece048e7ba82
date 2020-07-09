<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL : 표현 언어</title>
</head>
<body>
<%--
	- EL : JSP 에서 사용 가능한 새로운 스크립트언어
	       표현식(<%= %>) 대신에 사용된다.
	       
	       * 파라미터값을 받을 때도 사용된다.
	       * JSP가 가지고 있는 4가지 저장소에 저장된 정보를 
	         바로 호출 할 수 있다.
	       * 표현식 대신 사용 할 수 있다.
	         ( <%= 변수 또는 메소드 또는 계산식 %>  
	            =====> ${변수 또는 메소드 또는 계산식 }        
 --%>
 	<h2> 표현식 산술 연산 사용 예제 </h2>
 	<h3>
 		<li> 15 + 7 = <%= 15+7%></li>
 		<li> 15 - 7 = <%= 15-7%></li>
 		<li> 15 * 7 = <%= 15*7%></li>
 		<li> 15 / 7 = <%= 15/7%></li>
 	</h3>
 	<hr>
 	<h2> EL 산술 연산 사용 예제 </h2>
 	<h3>
 		<li> 15 + 7 = ${15+7}</li>
 		<li> 15 - 7 = ${15-7}</li>
 		<li> 15 * 7 = ${15*7}</li>
 		<li> 15 / 7 = ${15/7}</li>
 	</h3>
 	<hr>
 	
 	<h2> 표현식 변수 사용 예제 </h2>
 	<% int su1 = 125 +25 ; %>
 	<h3><li>su1 = <%=su1%></li></h3>
 	<hr>
 	
 	<h2> EL 변수 사용 안 되는  예제 </h2>
 	<%-- EL은 jsp에서 바로 만든 변수의 값은 호출 안됨  --%>
 	<%-- 그래서 4가지 저장소에 변수의 값을 호출 하면 가능 
 	     4가지 저장소 ; pageContext, request, session, application
 	--%>
 	<% int s1 = 125 +25 ; %>
 	<h3><li>s1 = ${s1}</li></h3>
 	<hr>
 	
 	<h2> EL 변수 사용 가능 예제 </h2>
 	<% int s2 = 125 +25 ; 
 	   pageContext.setAttribute("s2", s2); 	%>
 	<h3><li>s2 = ${s2}</li></h3>
 	<hr>
 	<%-- 4가지 저장소에 속성의 이름 같으면 우선순위는  
 	     pageContext > request > session > application  --%>
 	<% pageContext.setAttribute("pc", "i3"); %>     
 	<% request.setAttribute("pc", "i5"); %>
 	<% session.setAttribute("pc", "i7"); %>
 	<% application.setAttribute("pc", "i9"); %>
 	
 	<h3>
 		<li> 호출하기(우선순위 존재) </li>
 		<li> ${pc}</li>
 		<li> ${pageScope.pc}</li>
 		<li> ${requestScope.pc}</li>
 		<li> ${sessionScope.pc}</li>
 		<li> ${applicationScope.pc}</li>
 	</h3>
</body>
</html>













