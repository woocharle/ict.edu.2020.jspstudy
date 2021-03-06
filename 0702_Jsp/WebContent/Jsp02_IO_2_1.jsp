<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String addr = "서울 서교동 홍대입구";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 파라미터 결과 보기 (jsp_IO_2_1)</title>
		<script type="text/javascript">
			function send_go1(f){
				f.action = "Jsp02_IO_2_2.jsp";
				f.submit();
			}
			function send_go2(f){
				f.action = "Jsp02_IO_2_2.jsp";
				f.submit();
			}
			function send_go3(f){
				location.href = "Jsp02_IO_2_2.jsp";
			}
			
			function send_go4(f){
				location.href = "Jsp02_IO_2_2.jsp?id=<%=id %>&pw=<%=pw %>";
			}
			
			function send_go5(f){
				history.go(-1);
			}
		
		</script>

	</head>
	<body>
		<h1> 파라미터 결과 보기 </h1>
		<h2> 
			<li> id : <%=id %></li>
			<li> pw : <%=pw %></li>
		
		
		</h2>
		<%-- 다른 페이지로 이동하기(중간페이지가 안 보임)
		<!--1.response.sendRedirect("이동할페이지")-->
		<% response.sendRedirect("Jsp02_internalObject_2_2.jsp"); %>
		--%>
		
		<!-- 2.response.get -->
		<%--<% request.getRequestDispatcher("Jsp02_internalObject_2_2.jsp").forward(request, response);--%>
		
		<!-- 3. a링크로 페이지 이동 -->
		<%--  
		<a href="Jsp02_internalObject_2_2.jsp"> 다른페이지로 이동(파라미터 X) </a>
		<a href="Jsp02_internalObject_2_2.jsp?id=<%=id%>&pw=<%=pw %>"> 다른페이지로 이동(파라미터 O) </a>
		--%>
		
		<!-- 4. JavaScript을 이용한 페이지 이동 -->
		<form>
			<input type="button" value="보내기(파라미터 없음)" onclick="send_go1(this.form)">	
		</form>
		
		<form>
			<input type="button" value="보내기(파라미터 있음)" onclick="send_go2(this.form)">	
			<input type="hidden" name="id" value="<%=id %>">
			<input type="hidden" name="pw" value="<%=pw %>">
		</form>
		
		<button onclick="send_go3()">보내기(파라미터 없음)</button><br>
		<button onclick="send_go4()">보내기(파라미터 있음)</button><br>
		<button onclick="send_go5()">뒤로가기</button>
		
	
	</body>
</html>