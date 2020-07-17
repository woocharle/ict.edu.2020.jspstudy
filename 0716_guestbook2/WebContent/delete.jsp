<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		table{width: 500px; border-collapse: collapse;}
		table > thead{background-color: #99ccff; border: 1px solid black; text-align: center;}
		table, tr, td, th{border: 1px solid black; text-align: center;}
		table > tr {margin: auto;}
		.tb{background-color: #99ccff;}
	</style>
	<script>
		function delete_ok(f) {
			if(f.pw.value == "${vo.pw}"){
				f.action="delete_ok.jsp"
				f.submit();
				
			} else{
				alert("비밀번호가 일치하지 않습니다.");
				f.pw.focus();
				return;
			}
		}
	
	</script>
</head>
<body>
	<div align="center">
		<h2> 방명록 : 삭제화면 </h2>
		<hr>
		<p>[<a href="list.jsp">게시물 목록</a>]</p>
		<form method="post">
			<table>
				<tbody>
					<tr>
						<td class="tb">비밀번호</td>
						<td><input type="password" name="pw" size="20" ></td>
					</tr>				
				</tbody>
				<tfoot>
					<td colspan="2">
						<input type="button" value="삭제" onclick="delete_ok(this.form)"/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="취소"/>
					</td>
				</tfoot>
			
			</table>
		</form>
		
	</div>

</body>
</html>