<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 방명록: 작성화면 </title>
	<style type="text/css">
		a { text-decoration: underline;}
		table{width: 500px; border-collapse:collapse; text-align: center;}
		table,th,td{border: 1px solid black; padding: 3px}	
	</style>
	<script type="text/javascript">
		function save_go(f){
			var arr = [f.name, f.subject, f.email, f.pwd];
			for (var k in arr) {
				if(arr[k].value ==""){
					alert("데이터 값을 입력하시오");
					arr[k].focus();
					return;
				}
			}
			
			f.action="/0722_MVC_Mybatis_02/MyController?cmd=write";  //insert
			f.submit();
	
		}
	
	</script>
</head>
<body>
	<div align="center">
		<h2> 방명록 : 작성화면 </h2>
		<hr>
		<p>[ <a href ="/0722_MVC_Mybatis_02/MyController?cmd=list">목록으로 이동 </a>]</p>
		<form method="post" enctype="multipart/form-data">
			<table>
				<tbody>
					<tr align="center">
						<td bgcolor="#99ccff">작성자</td>
						<td><input type="text" name="name" size="20"></td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">제목</td>
						<td><input type="text" name="subject" size="20"></td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">이메일</td>
						<td><input type="text" name="email" size="20"></td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">비밀번호</td>
						<td><input type="password" name="pwd" size="20"></td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">첨부파일</td>
						<td><input type="file" name="filename" size="20"></td>
					</tr>
					<tr>
						<td colspan="2" style="padding:15px">
							<textarea rows="10" cols="60" name="content"></textarea>
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="button" value="저장" onclick="save_go(this.form)"/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="취소"/>
						</td>
					</tr>
				</tfoot>
				
			</table>
		</form>
	</div>

</body>
</html>