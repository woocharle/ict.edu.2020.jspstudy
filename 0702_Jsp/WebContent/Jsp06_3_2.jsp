<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	String log = (String)session.getAttribute("log");
	if(log.equals("0")){%>
	<script type="text/javascript">
		alert("로그인 실패");
		location.href = "Jsp06_3_0.jsp";
	</script>
		
	<%}else if(log.equals("1")){%>
		<!DOCTYPE html>
		<html>
			<head>
				<meta charset="UTF-8">
				<title>세션정보들 부르기.</title>
				<script type="text/javascript">
					function add_go(f){
						f.action = "Jsp06_3_3.jsp";
						f.submit();
					}
					
					function view_go(){
						location.href="Jsp06_3_4.jsp";
					}
					
					function logout_go(){
						location.href="Jsp06_3_5.jsp";
					}
				</script>
			</head>
			<body>
				<h2> <%=session.getAttribute("id") %>님 로그인 성공 </h2>
				<hr>
				<h2> 상품 선택 </h2>
				<hr>
				<form method="post">
					<select name ="fruits">
						<option>:: 선택하세요 ::</option>
						<option>수박</option>
						<option>메론</option>
						<option>레몬</option>
						<option>사과</option>
						<option>딸기</option>
					</select>
					<input type="button" value="장바구니에 추가" onclick="add_go(this.form)">
					
				</form>
				<hr>
					<button onclick="view_go()"> 장바구니 보기 </button>
					<button onclick="logout_go()"> 로그 아웃  </button>
			</body>
		</html>
	<%}%>
		
