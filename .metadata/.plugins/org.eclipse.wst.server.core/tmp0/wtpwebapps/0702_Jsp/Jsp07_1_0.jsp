<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>EL : 표현언어</title>
		<script type="text/javascript">
			function send_go(f){
				/*
				var chk = f.name.value;
				if(chk == ""){
					alert("이름 정보를 입력하세요");
					f.name.focus();
					return;
				}
				
				chk = f.age.value;
				if(chk ==""){
					alert("나이 정보를 입력하세요");
					f.age.focus();
					return;
				}
				
				chk = f.addr.value;
				if(chk ==""){
					alert("주소 정보를 입력하세요");
					f.addr.focus();
					return;
				}
				*/
				
				for (var i = 0; i < f.elements.length; i++){
					if(f.elements[i].value==""){
						alert(f.elements[i].name +"을(를) 입력하시오.");
						f.elements[i].focus();
						return;
					}
				}
				
				f.action="Jsp07_1_1.jsp";
				f.submit();
				
				
			}
			
		</script>
	</head>
	<body>
		<h2> 표현식 산술 연산 사용 예제 </h2>
		<h3>
			<li> 15 + 7 = <%= 15 + 7 %></li>
			<li> 15 - 7 = <%= 15 - 7 %></li>
			<li> 15 x 7 = <%= 15 * 7 %></li>
			<li> 15 / 7 = <%= 15 / 7 %></li>
		</h3>
		<hr>
		<h2> EL 산술 연산 사용 예제 </h2>
		<h3>
			<li> 15 + 7 = ${15 + 7} </li>
			<li> 15 - 7 = ${15 - 7} </li>
			<li> 15 x 7 = ${15 * 7} </li>
			<li> 15 / 7 = ${15 / 7} </li>
		</h3>
		<hr>
		
		<h2> 표현식 변수 사용 예제 </h2>
		<h3>
			<% int su1 = 125 + 25; %>
			<h3> <p> su1 = <%= su1 %> </p></h3>
		</h3>
		<hr>
		
		<h2> EL 변수 사용 예제 </h2>
		<h3>
			<% int s1 = 125 + 25; %>
			<h3> <p> su1 = ${su1} </p></h3>
		</h3>
		<hr>
		<h2> EL 변수 사용 예제 </h2>
		<h3>
			<% int s2 = 125 + 25; 
				pageContext.setAttribute("s2", s2);%>
			<h3> <p> s2 = ${s2} </p></h3>
		</h3>
		<hr>
		<%pageContext.setAttribute("pc", "i3"); %>
		<%request.setAttribute("pc", "i5"); %>
		<%session.setAttribute("pc", "i7"); %>
		<%application.setAttribute("pc", "i9"); %>
		
		<h3>			
			<li> 호출하기 (우선순위 존재) </li>
			<li> ${pc}</li>
			<li> ${pageScope.pc}</li>
			<li> ${requestScope.pc}</li>
			<li> ${sessionScope.pc}</li>
			<li> ${applicationScope.pc}</li>
			
		</h3>
		
		<h2> form을 이용한 파라미터 전송 </h2>
		<form method ="post" action = "Jsp07_1_1.jsp">  
			<fieldset>
				<legend>submit을 이용.</legend>
					<p> * 이름: <input type="text" name ="name" required></p>
					<p> * 나이: <input type="number" name ="age" required></p>
					<p> * 주소: <input type="text" name ="addr" required></p>
					<p> 성별: <input type="radio" name ="male" value="남성">남성
					  		 <input type="radio" name ="female" value="여성">여성
					</p>
					<p> 취미: <input type="checkbox" name = "hobby" value="운동">운동
				 			  <input type="checkbox" name = "hobby" value="영화">영화
				 			  <input type="checkbox" name = "hobby" value="게임">게임
							  <input type="checkbox" name = "hobby" value="독서">독서
					</p>
					<input type="submit" value="회원가입">			
			</fieldset>
		</form>
		<br><br>
		
		<form method ="post">  
			<fieldset>
				<legend> JavaScript이용 </legend>
					<p> * 이름: <input type="text" name ="이름" required></p>
					<p> * 나이: <input type="number" name ="나이" required></p>
					<p> * 주소: <input type="text" name ="주소" required></p>
					<p> 성별: <input type="radio" name ="male">남성
					  		 <input type="radio" name ="female">여성
					</p>
					<p> 취미: <input type="checkbox" name = "hobby" value="운동">운동
				 			  <input type="checkbox" name = "hobby" value="영화">영화
				 			  <input type="checkbox" name = "hobby" value="게임">게임
							  <input type="checkbox" name = "hobby" value="독서">독서
					</p>
					<input type="submit" value="회원가입" onclick="send_go(this.form)">		
						
			</fieldset>
		</form>
		
		
		
	</body>
</html>