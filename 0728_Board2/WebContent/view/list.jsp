<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
	tr {
		text-align: center;
		padding: 4px 10px;
		background-color: #F6F6F6;
	}
	
	th {
		text-align: center;
		padding: 4px 10px;
		background-color: #B2CCFF;
	}
	
	h2{text-align: center;}

	</style>
	<script type="text/javascript">
		function write(){
			
		}
	
	</script>
</head>
<body>
	<h2>BBS 리스트</h2>
	<table width="800px" align="center">
		<thead>
			<tr>
				<th width="10%">번호</th>
				<th>제목</th>
				<th width="25%">글쓴이</th>
				<th width="20%">날짜</th>
				<th width="10%">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty list}">
					<td colspan="5">
						<h3>원하시는 자료가 존재하지 않습니다.</h3>
					</td>
				</c:when>
				<c:otherwise>
					<c:forEach var="k" items="${list}" varStatus="vs">
						<td>${paging.totalRecord - ((paging.nowPage-1)*paging.numPerPage + vs.index)}</td>
						<td>${k.title}</td>
						<td>${k.writer}</td>
						<td>${k.regdate.substring(0,10)}</td>
						<td>${k.hit}</td>
					
					</c:forEach>
				</c:otherwise>
			</c:choose>	
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4">
					<!-- 이전 -->
					<!-- 번호 -->
					<!-- 이후 -->
				</td>
				<td><button onclick="write()">글쓰기</button></td>
			</tr>
		
		</tfoot>

	</table>
</body>
</html>