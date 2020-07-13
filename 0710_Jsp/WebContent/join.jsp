<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 회원가입 </title>
		<style>
			div{
				text-align: center;
				margin: 20px auto;
			}
			table{
				
				width: 500px;
				margin: 0px auto;
				border-collapse: collapse;
			}
			table > td{
				text-align: left;
			}
			table, tr, th, td{
				border: 1px solid red;
			}
			fieldset{
				width: 300px;
			}
		
		</style>
		<script type="text/javascript">
			function join_ok(f){
				// 유효성 검사
				var ch=f.m_id.value;
				if(ch ==""){
					alert("아이디를 입력하세요");
					f.m_id.value=""
					f.m_id.focus();
					return;
				}
				
				ch=f.m_pw.value;
				if(ch ==""){
					alert("암호를 입력하세요");
					f.m_pw.value=""
					f.m_pw.focus();
					return;
				}
				
				ch=f.m_name.value;
				if(ch ==""){
					alert("이름을 입력하세요");
					f.m_name.value=""
					f.m_name.focus();
					return;
				}
				
				ch=f.m_age.value;
				if(ch ==""){
					alert("나이를 입력하세요");
					f.m_age.value=""
					f.m_age.focus();
					return;
				}
				
				f.action="join_ok.jsp";
				f.submit();
			}
		
		</script>
	</head>
	<body>
		<div>
			<form method="post">
				<fieldset>
					<legend> 회원가입 </legend>
					<table>
						<tbody>
							<tr>
								<th> *아이디 </th>
								<td><input type="text" name="m_id" size="15"></td>
							</tr>
							<tr>
								<th> *패스워드 </th>
								<td><input type="text" name="m_pw" size="15"></td>
							</tr>
							<tr>
								<th> *이름 </th>
								<td><input type="text" name="m_name" size="15"></td>
							</tr>
							<tr>
								<th> *나이 </th>
								<td><input type="text" name="m_age" size="15"></td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="reset" value="취소">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="button" value="회원가입" onclick="join_ok(this.form)">
								</td>
							</tr>
						</tbody>
					</table>
				</fieldset>
			</form>
		</div>
	</body>
</html>