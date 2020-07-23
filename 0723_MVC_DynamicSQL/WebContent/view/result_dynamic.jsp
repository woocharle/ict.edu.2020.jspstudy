<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 동적 SQL </title>
</head>
<body>
	<h2> 동적 SQL:  
		<c:choose>
			<c:when test="${idx==1}"> 사번 결과 보기 </c:when>
			<c:when test="${idx==2}"> 이름 결과 보기 </c:when>
			<c:when test="${idx==3}"> 직종 결과 보기 </c:when>
			<c:when test="${idx==4}"> 부서 결과 보기 </c:when>
		</c:choose>
	</h2>
	<h2>
		<c:choose>
			<c:when test="${empty dy_list}">
				<li> 원하는 자료가 존재하지 않습니다. </li>
			</c:when>
			<c:otherwise>
				<c:forEach var="k" items="${dy_list}" varStatus="vs">
					<li>
						${vs.count} &nbsp;&nbsp;
						${k.employee_id} &nbsp;&nbsp;
						${k.first_name} &nbsp;&nbsp;
						${k.last_name} &nbsp;&nbsp;
						${k.email} &nbsp;&nbsp;
						${k.phone_number} &nbsp;&nbsp;
						${k.hire_date} &nbsp;&nbsp;
						${k.job_id} &nbsp;&nbsp;
						${k.salary} &nbsp;&nbsp;
						${k.commision_pct} &nbsp;&nbsp;
						${k.manager_id} &nbsp;&nbsp;
						${k.department_id} &nbsp;&nbsp;
					</li>
				</c:forEach>			
			</c:otherwise>
		</c:choose>	
	</h2>
	
</body>
</html>