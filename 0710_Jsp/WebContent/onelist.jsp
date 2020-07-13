<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			div{
				text-align: center;
				margin: 0px auto;
			}
			table{
				width: 500px;
				margin: 0px auto;
				border-collapse: collapse;
			}
			table > td{
				text-align: left;
			}
			table > tbody > tr > td{
				text-align: center;
			}
			table > tfoot > tr > td{
				text-align: center;
			}
			table, tr, th, td{
				border: 1px solid black;
			}
			fieldset{
				width: 300px;
			}
		
		</style>
		<script type="text/javascript">
			function list_go(){
				location.href="list.jsp";
			}
			function update_go(){
				location.href="update.jsp";
			}
			function delete_go(){
				location.href="delete.jsp";
			}
		
		</script>
	</head>
	<body>
		<h1> 개인 회원 정보 </h1>
		<table>
			<thead>
				<tr>
					<th>IDX</th><th>M_ID</th><th>M_PW</th><th>m_name</th><th>m_age</th><th>m_reg</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${vo.idx}</td><td>${vo.m_id}</td><td>${vo.m_pw}</td>
					<td>${vo.m_name}</td><td>${vo.m_age}</td><td>${vo.m_reg}</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="6"> 
						<button onclick="list_go()"> 전체 리스트 보기 </button>
						<button onclick="update_go()"> 내 정보 수정 </button>
						<button onclick="delete_go()"> 회원탈퇴 </button>
					</td>
				</tr>
			</tfoot>
		
		</table>
		
		
	</body>
</html>