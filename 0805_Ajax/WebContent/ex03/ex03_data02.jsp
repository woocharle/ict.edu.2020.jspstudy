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
		//document.body.innerHTML += request.responseText; //텍스트만 표시 
		
		// 2. open("전송방식", "경로", "비동기 부")
		request.open("POST", "data02.xml", false);
		
		request.onreadystatechange = function () {
			//request.readyState : 데이터의 배달 결과 상태 표시 
			//0 => 객체생성, 1 => open 안함, 2 => send안함
			//3: 데이터 일부만 받음. 4=> 전체 데이터 받음.
			
			//request.status => 200 (성공), 4xx=> 클라이언트 오류, 5xx=>서버 오류
			if(request.readyState == 4 && request.status == 200){
				var data = request.responseXML;
				
				var product = data.getElementsByTagName("product");
				
				for (var i = 0; i < product.length; i++) {
					var name = product[i].attributes[0].value
					var price = product[i].attributes[1].value
					document.body.innerHTML += "<h2><li>" + name + ", " + price+"</li></h2>";
				}
				
				
				
			}
		}
		
		// 3. send() : 실행
		request.send();
		
		// 4. 화면에 출력: innerHTML
		//document.body.append(request.responseText); //소스코드로 표시

		
		
			
		
		
	</script>
</body>
</html>