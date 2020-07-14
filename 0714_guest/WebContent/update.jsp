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
		function update_ok(f){
			//비밀번호 체크 
			if(f.pw.value == "${vo.m_pw}"){
				f.action = "update_ok.jsp"
				f.submit();
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
						<td bgcolor="#99ccff">번호</td>
						<td><input type="text" name="num" size="20" value="${num}"></td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">작성자</td>
						<td><input type="text" name="name" size="20" value="${vo.m_name}"></td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">제  목</td>
						<td><input type="text" name="sub" size="20" value="${vo.m_sub}"></td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">email</td>
						<td><input type="text" name="email" size="20" value="${vo.m_email}"></td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">비밀번호</td>
						<td><input type="password" name="pw" size="20"></td>
					</tr>
					<tr align="left">
						<td colspan="2" style="padding-left: 20px; text-align: left;">
						<textarea rows="8" cols="60" name="content">${vo.m_cnt}</textarea>
						</td>
					</tr>
	
				</tbody>

				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="button" value="수정" onclick="update_ok(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="취소"/>
							<input type="hidden" name="idx" value="${vo.idx}"/>
						</td>
					</tr>
				</tfoot>
			</table>		
		</form>
	</div>
</body>


</html>