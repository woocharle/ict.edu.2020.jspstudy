<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script>
		function send_all(f){
			f.action = "/MyController?cmd=all";
			f.submit();
		}
		
		function send_dept(f){
			f.action = "/MyController?cmd=dept";
			f.submit();
		}
		
		function send_dynamic(f){	
			f.action = "/MyController?cmd=dynamic";
			f.submit();
		}
	
	</script>
</head>
<body>
	<form method="post">
		<p><input type="button" value="전체보기" onclick="send_all(this.form)"></p>
		<p>
			부서코드: <input type="text" name="deptno" size="15">
					  <input type="button" value="부서보기" onclick="send_dept(this.form)">
		</p>
		<p>
			<select name="idx">
				<option value="0">:: 선택하세요 ::</option>
				<option value="1"> 사번 </option>
				<option value="2"> 이름 </option>
				<option value="3"> 직종 </option>
				<option value="4" >부서 </option>
			</select>
			<input type="text" name="keyword" size="15">
			<input type="button" value="동적쿼리" onclick="send_dynamic(this.form)">
		</p>

	</form>
</body>
</html>