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
	table{margin: 0px auto;}
	</style>
	<script type="text/javascript">
		function write_go(){
			location.href = "/MyController?cmd=write_0";
		}
	
	</script>
</head>
<body>
	<h2>BBS 리스트</h2>
	<table width="800px" >
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
					<tr>
						<td colspan="5">
							<h3>원하시는 자료가 존재하지 않습니다.</h3>
						</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="k" items="${list}" varStatus="vs">
						<tr>
							<td>${paging.totalRecord - ((paging.nowPage-1)*paging.numPerpage + vs.index)}</td>
							<td><a href="/MyController?cmd=onelist&idx=${k.idx}&cPage=${paging.nowPage}">${k.title}</a></td>
							<td>${k.writer}</td>
							<td>${k.regdate.substring(0,10)}</td>
							<td>${k.hit}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>	
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4">

				</td>
				<td>
					<input type="button" value="글쓰기" onclick="write_go()"/>
				</td>
			</tr>
		
		</tfoot>

	</table>
</body>
</html>