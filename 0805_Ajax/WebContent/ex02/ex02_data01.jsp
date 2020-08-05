<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
	
		function createRequest(){
			var reg;
			try {
				req = new XMLHttpRequest();
			} catch (e) {
				try {
					req = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {
					req = new ActiveXObject("Msxm13.XMLHTTP");
				}
				
			}
			
			return req;
			
		}
	
		// 1. 객체 생성
		var request = new createRequest();
		
		// 2. open("전송방식", "경로", "비동기 부")
		request.open("GET", "data01.xml", false);   
		
		// 3. send() : 실행
		request.send();
		
		// 4. 화면에 출력: innerHTML
		document.body.innerHTML += request.responseText; //텍스트만 표시 
		//document.body.append(request.responseText); //소스코드로 표시
	</script>
</body>
</html>