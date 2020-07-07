<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>로그 아웃</title>
	</head>
	<body>
		<% 
		//쿠키 삭제하는 방법
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length > 0){
			for(Cookie k : cookies){
				if(k.getName().equals("ict")){
					//별도의 삭제 메소드가 없다. 다른 이름으로 덮어쓴다.
					Cookie cookie = new Cookie("ict", "");
					cookie.setMaxAge(0);
					response.addCookie(cookie);
					response.sendRedirect("Jsp05_2_0.jsp");
				}
			}
		}
		%>
	</body>
</html>