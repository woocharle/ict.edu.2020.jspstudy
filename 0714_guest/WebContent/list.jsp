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
	<title> 방 명 록 </title>
	<link rel="stylesheet" href ="style_1.css">
	<script type="text/javascript">
		function move_go(f){
			f.action="move.jsp";
			f.submit();
		}
	
	</script>
</head>
<body>
	<div align="center">
		<h2> 방 명 록 </h2>
		<hr/>
		<p>[<a href="write.jsp">방명록 쓰기</a>]</p>
		<form method="post">
			<table>
				<thead class="th">
					<td>번호 제목</td><td>작성자</td><td>제목</td><td>작성일</td>
				</thead>
				<tbody>
					<c:choose>
						<c:when test = "${empty list}">
							<tr>
								<td colspan="4"> <h2 style="text-align: center">원하는 자료가 존재하지 않습니다.</h2> </td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="k" items="${list}" varStatus="vs">
								<tr>
									<td>${vs.count}</td>
									<td>${k.m_name} </td>
									<td><a href="onelist.jsp?idx=${k.idx}&num=${vs.count}">${k.m_sub}</a></td>
									<td>${k.m_reg.substring(0,10)}</td>
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