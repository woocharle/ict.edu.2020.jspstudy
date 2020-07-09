<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL: JSP 표준 태그 라이브러리(core) </title>
	</head>
	<body>
		<%--
			1. 라이브러리를 다운받아서 해당 프로젝트에게 저장한다. 
			   (tomcat.apache.org)
			2. 다운받은 라이브러리를 WEB-INF 안에 lib에 넣어주세요.
			3. page지시어 및에 taglib 지시어를 통해서 선언하고 사용한다.
			
			
	 	--%>
	 	
	 <h2>
	 	<%-- 변수 생성 --%>
	 	<c:set var="test" value="Hello JSP" />
	 
	 	<%-- 변수데이터 출력 --%>
	 	<li> <c:out value="test" /> </li>
	 	<li> <c:out value= "${test}" /> </li>
	 	<li>${test}</li> 
	 	
	 	<li> <c:remove var="test"/> </li>
	 	<li> <c:out value= "${test}" /> </li>
	 	<li>${test}</li>
	 	<hr>
	 	
	 	<c:if test="${5 > 4}" >
	 		<li> Hello JSP World </li>
	 	</c:if>
	 	
	 	<c:set var="sum" value = "88" />  
	 	
	 	<c:if test="${sum >= 90}">
	 		<li> 합격 </li>
	 	</c:if>
	 	<c:if test="${sum < 90}">
	 		<li> 불합격 </li>
	 	</c:if>
	 	
	 	<c:choose>
	 		<c:when test="${sum >= 90}"> <li> A </li></c:when>		
	 		<c:when test="${sum >= 80}"> <li> B </li></c:when>		
	 		<c:when test="${sum >= 70}"> <li> C </li></c:when>		
	 		<c:when test="${sum < 70}"> <li> F </li></c:when>		
	 	</c:choose>
	 	
	 	
	 </h2>
	 	
	 	
	</body>
</html>