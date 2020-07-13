<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
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
		<script>
			function update_ok(f){
				f.action = "update_ok.jsp";
				f.submit();
			}
		</script>
	</head>
	<body>
		<div>
			<h1> 내 정보 수정 </h1>
			<form method="post">
				<table>
					<tbody>
						<tr>
							<td>idx</td>
							<td>${vo.idx}</td>
						</tr>
						<tr>
							<td>m_id</td>
							<td>${vo.m_id}</td>
						</tr>
						<tr>
							<td>m_pw</td>
							<td>${vo.m_pw}</td>
						</tr>
						<tr>
							<td>m_name</td>
							<td><input type="text" name="m_name" value="${vo.m_name}"> </td>
						</tr>
						<tr>
							<td>m_age</td>
							<td><input type="text" name="m_age" value="${vo.m_age}"> </td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2">
								<input type="button" value="내정보수정" onclick="update_ok(this.form)">
							</td>
						</tr>
					</tfoot>	
				</table>
			</form>
		</div>
	</body>
</html>