<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 검사</title>
	</head>
	<body>
		<%
			Cookie[] cookies = request.getCookies();
			int cnt = 0;
			if(cookies != null && cookies.length > 0){
				for(Cookie k : cookies){
					if(k.getValue().equals("jsp")){
						cnt += 1;
					}
				}
				if(cnt >= 1){
					out.println("<h2> 로그인 상태 </h2>");
				 	out.println("<a href='Jsp05_2_3.jsp'> 로그아웃</a>");
				}else{
					out.println("<h2> 로그인 실패 </h2>");
				}
			}else{%>
				<script type="text/javascript">
					alert("로그인을 하셔야만 사용이 가능합니다.");
					//history.go(-2);
					location.herf="Jsp05_IO_2_0.jsp";
				</script>
		  <%}%>
	
	</body>
</html>