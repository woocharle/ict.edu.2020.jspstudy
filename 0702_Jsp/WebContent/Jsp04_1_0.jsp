<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="Jsp04_1_1.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>에러 처리</title>
	</head>
	<body>
		<h2> 에러 처리</h2>
		<%--<h3> name: <%=Integer.parseInt(request.getParameter("name"))%></h3> --%>
		
		<!-- 자바의 try catch 이용 -->
		<%-- 
		<%try{%>
			<h3> name: <%=Integer.parseInt(request.getParameter("name")) %></h3>
		<%
		}catch(Exception e){
			out.println("<b> name parameter값이 올바르지 않습니다.");
		}
		%>
		--%>
		
		<h3> name: <%=Integer.parseInt(request.getParameter("name")) %></h3>
		
		
	</body>
</html>