<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>file up / down</title>
	<script type="text/javascript">
		function send_go(f){
			f.action="ex02.jsp";
			f.submit();
		}
	
	</script>
</head>
<body>
	<form method="post" enctype="multipart/form-data">
		<p> 올린 사람: <input type="text"  name="name"> </p>
		<p> 첨부 파일: <input type="file"  name="file_name"> </p>
		<input type="button" value="업로드" onclick="send_go(this.form)">
		<input type="hidden" name="age" value="34">

		
	</form>

</body>
</html>