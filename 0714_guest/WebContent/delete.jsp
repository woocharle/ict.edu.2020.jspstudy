<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>방명록 : 수정화면</title>
	<link rel="stylesheet" href ="style_1.css">
	<script type="text/javascript">
		function delete_ok(f){
			//비밀번호 체크 
			if(f.pw.value == "${vo.m_pw}"){
				var chk = confirm("정말 삭제할까요?");
				if(chk){
					f.action = "delete_ok.jsp"
					f.submit();
				} else{
					history.go(-1);
				}
			} else{
				alert("비밀번호가 틀립니다. 다시 입력해 주십시오.");
				f.pw.value="";
				f.pw.focus();
				return;
			}
			
		}
	</script>
</head>

<body>
	<div align="center">
		<h2>방명록 : 내용화면</h2>
		<hr/>
		<p>[<a href="list.jsp">목록으로 이동</a>]</p>
		<form method="post">
			<table>
				<tbody>
					<tr align="center">
						<td bgcolor="#99ccff">비밀번호</td>
						<td><input type="password" name="pw" size="20"></td>
					</tr>	
				</tbody>

				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="button" value="확인" onclick="delete_ok(this.form)" />
						</td>
					</tr>
				</tfoot>
			</table>		
		</form>
	</div>
</body>


</html>