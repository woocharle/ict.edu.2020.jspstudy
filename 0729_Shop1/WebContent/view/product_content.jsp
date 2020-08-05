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
		width: 600px;
		border-collapse: collapse;
		font-size: 8pt;
		border-color: navy;
	}
	
	table, th, td {
		border: 1px solid black;
	}
	</style>
	<script type="text/javascript">
		function add_cart(f){
			if(${login == 'ok'}){
				f.action="/MyController?cmd=addcart&c_id=${mvo.m_id}";
				f.submit();
			}else {
				alert("로그인 하세요");
				f.action="/MyController?cmd=login";
				f.submit();
			}
			
		}
		
		function view_cart(f){
			if(${login == 'ok'}){
				f.action="/MyController?cmd=viewcart&idx=${vo.idx}";
				f.submit();
			}else{
				alert("로그인 하세요");
				f.action="/MyController?cmd=login";
				f.submit();
			}

		}
	
	</script>
</head>
<body>
	<%@ include file="top.jsp" %>
	<form method="post">
		<table>
			<tr>
				<td width="40%">제품Category</td>
				<td width="60%">${vo.category}</td>
			
			</tr>
			<tr>
				<td width="40%">제품번호</td>
				<td width="60%">${vo.p_num}
					<input type="hidden" name="c_num" value="${vo.p_num}">
				</td>
				
			</tr>
			<tr>
				<td width="40%">제품이름</td>
				<td width="60%">${vo.p_name}
					<input type="hidden" name="c_name" value="${vo.p_name}">
				</td>
			
			</tr>
			<tr>
				<td width="40%">제품판매사</td>
				<td width="60%">${vo.p_company}</td>
		
			</tr>
			<tr>
				<td width="40%">제품가격</td>
				<td width="60%">
					시중가: <fmt:formatNumber value="${vo.p_price}" pattern="#,##0"/>원
					<font color="tomato">(할인가: <fmt:formatNumber value="${vo.p_saleprice}" pattern="#,##0"/>)</font>
					<input type="hidden" name="c_price" value="${vo.p_price}">
					<input type="hidden" name="c_saleprice" value="${vo.p_saleprice}">
				</td>
			</tr>
			<tr>
				<td width="40%">제품설명</td>
				<td width="60%">${vo.p_content} </td>
				
			</tr>
			<tr>
				<td colspan="2" align="center">
					<img src="../images/${vo.p_image_l}" width="450px">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button onclick="add_cart(this.form)"> 장바구니에 담기 </button>
					<button onclick="view_cart(this.form)"> 장바구니 보기 </button>
					<input type="hidden" name="c_id" value="${mvo.m_id}"/>
					<input type="hidden" name="m_name" value="${mvo.m_name}"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>