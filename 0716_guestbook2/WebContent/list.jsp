<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	ArrayList<VO> list = DAO.getInstance().getList();
	pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>방 명 록 </title>
	<style type="text/css">
		table{width: 500px; border-collapse: collapse;}
		table > thead{background-color: #99ccff; border: 1px solid black; text-align: center;}
		table, tr, td, th{border: 1px solid black; text-align: center;}
	</style>
</head>
<body>
	<div align="center">
		<h2> 방 명 록</h2>
		<hr>
		<p>[<a href="write.jsp">방명록 쓰기</a>]</p>
		<form method="post">
			<table>
				<thead>
					<th>번호</th><th>작성자</th><th>제목</th><th>작성일</th>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${empty list}">
					
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${list}" varStatus="vs">
						<tr>
							<td>${vs.count}</td>	
							<td>${k.name}</td>	
							<td>${k.sub}</td>	
							<td>${k.reg.substring(0,10)}</td>					
						</tr>
						</c:forEach>
					</c:otherwise>
		
				</c:choose>
				</tbody>
			</table>
		</form>
	
	</div>
</body>
</html>