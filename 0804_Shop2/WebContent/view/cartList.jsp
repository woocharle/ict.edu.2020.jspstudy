<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
	table {
		margin: 10px auto;
		width: 700px;
		border-collapse: collapse;
		font-size: 8pt;
		border-color: navy;
	}
	
	table, th, td {
		border: 1px solid black;
	}
	</style>
	<script type="text/javascript">
		function edit_go(f){
			f.action = "/MyController?cmd=edit"; 
			f.submit();
		}
		function delete_go(f){
			f.action = "/MyController?cmd=delete"; 
			f.submit();
		}
	
	</script>
</head>
<body>
	<%@ include file="top.jsp" %>
	<hr>
		<h2> 장바구니 내용 </h2>
		
	<table>
		<thead>
			<tr bgcolor="#dedede">
				<th>제품번호</th>
				<th width="25%">제품명</th>
				<th>단가</th>
				<th>수량</th>
				<th>금액</th>
				<th>삭제</th>
			</tr>		
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty clist}">
					<tr align="center">
						<td colspan="6"><b>장바구니가 비었습니다.</b></td>
					</tr>	
				</c:when>
				<c:otherwise>
					<c:forEach var="k" items="${clist}" varStatus="vs">					
						<tr align="center" >
							<td style="padding: 10px">${k.p_num}</td>
							<td>${k.p_name}</td>
							<td>
								정가: ${k.p_price} &nbsp;&nbsp;
							  	<font color="red"> (세일가격: ${k.p_saleprice})</font>
							</td>
							<td>
								<form method="post">
									<input type="number" name="su" value="${k.quant}" style=" width:40px"/>
									<input type="hidden" name="idx" value="${k.idx}" />
									<input type="button" value="수정" onclick="edit_go(this.form)">
								</form>
							</td>
							<td>${k.totalprice}</td>
							<td>
								<form method="post">
									<input type="button" value="삭제" onclick="delete_go(this.form)">
									<input type="hidden" name="idx" value="${k.idx}" size="5"/>	
								</form>
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>

		</tbody>
		<tfoot>
			<tr>
				<td colspan="6" align="right">총 결재액 : ${total}</td>
			</tr>		
		</tfoot>
	</table>

</body>
</html>