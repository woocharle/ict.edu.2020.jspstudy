<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 메인 화면 </title>
	<script type="text/javascript">
		function list_go() {
			location.href="/0720_MVC01_guestbook2/MyController?cmd=list";
		}
	
	</script>
</head>
<body>
	<button onclick="list_go()">리스트 보기</button>
</body>
</html>