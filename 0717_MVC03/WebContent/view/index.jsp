<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript">
		function test1() {
			location.href="/0717_MVC03/Mycontroller?cmd=a";
		}
		function test2() {
			location.href="/0717_MVC03/Mycontroller?cmd=b";
		}
		function test3() {
			location.href="/0717_MVC03/Mycontroller?cmd=c";
		}
		
		function send_go1(f) {
			f.action="/0717_MVC03/Mycontroller?cmd=a";
			f.submit();
		}
		function send_go2(f) {
			f.action="/0717_MVC03/Mycontroller?cmd=b";
			f.submit();
		}
		function send_go3(f) {
			f.action="/0717_MVC03/Mycontroller?cmd=c";
			f.submit();
		}
	
	</script>
</head>
<body>
	<button onclick="test1()">click1</button>
	<button onclick="test2()">click2</button>
	<button onclick="test3()">click3</button>
	<hr>
	<form method="post">
		<input type="button" value="click1" onclick="send_go1(this.form)">
		<input type="button" value="click2" onclick="send_go2(this.form)">
		<input type="button" value="click3" onclick="send_go3(this.form)">
	</form>

</body>
</html>