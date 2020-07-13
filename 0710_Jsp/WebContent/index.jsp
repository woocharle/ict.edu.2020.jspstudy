<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			div{
				text-align:center; margin: auto;

			}
			fieldset{
				margin: 50px auto;
				width: 500px;
				height: 200px;
			}
		</style>
		<script type="text/javascript">
			function login_go(f){
				f.action="login.jsp";
				f.submit();
			}
			function join_go(f){
				f.action="join.jsp";
				f.submit();				
			}
		
		</script>
	</head>
	<body>
		<div>
			<form>
				<fieldset>
					<legend> 로그인 </legend>
					<%-- DB컬럼, 파라미터이름, VO변수이름 --%>
					<p> 아이디 : <input type="text" name="m_id"></p>
					<p> 패스워드 : <input type="password" name="m_pw"></p>
					<input type="button" value="로그인" onclick="login_go(this.form)">
					&nbsp;&nbsp;
					<input type="button" value="회원가입" onclick="join_go(this.form)">
					
				</fieldset>
			
			</form>
		
		</div>	
	</body>
</html>