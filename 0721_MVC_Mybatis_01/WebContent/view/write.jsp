<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title> 방 명 록 </title>
	<style type="text/css">
		a { text-decoration: none;}
		table{width: 500px; border-collapse:collapse; }
		table,tr,td{border: 1px solid black; padding: 3px}
	</style>
	<script type="text/javascript">
		function save_go(f) {
			var arr = [f.name, f.subject, f.email, f.pwd]
			
			for (var k in arr) {
				if(arr[k].value == ""){
					switch (arr[k].name) {
						case "name": alert("이름을 입력하시오."); break;
						case "subject": alert("제목을 입력하시오."); break;
						case "email": alert("이메일을 입력하시오."); break;
						case "pwd": alert("비밀번호를 입력하시오."); break;	
					}
					
					arr[k].focus();
					return;
				}
			}
			
			f.action="/MyController?cmd=write";
			f.submit();
		}
	</script>
</head>
<body>
	<div align="center">
		<h2>방명록 : 작성화면</h2>
		<hr />
		<p>[<a href="/MyController?cmd=list">목록으로 이동</a>]</p>
		<form method="post">
			<table>
				<tr align="center">
					<td bgcolor="#99ccff">*작성자</td>
					<td><input type="text" name="name" size ="20"/></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">*제  목</td>
					<td><input type="text" name="subject" size ="20"/></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">*email</td>
					<td><input type="text" name="email" size ="20"/></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">*비밀번호</td>
					<td><input type="password" name="pwd" size ="20"/></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
						<textarea rows="10" cols="60" name="content"></textarea>
						<script>
                        	CKEDITOR.replace('content');
                		</script>	
					</td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="button" value="저장" onclick="save_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="취소" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>