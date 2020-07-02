<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>html 주석과 jsp 내용 및 주석</title>
	</head>
	<body>

	
	<h2> 1부터 10까지 출력하기 </h2>
	<%
		for(int i = 1; i < 11; i++){
			//System.out.println(i);
			out.println("<h3>" + i + "</h3>");
		}
	
	%>
	<hr>
	
	<h2> 0부터 10까지 출력하고 합도 출력하기 </h2>
	<%
		int sum = 0;
		out.print("<h3>");
		for(int i = 1; i < 11; i++){
			//System.out.println(i);
			out.println(" " + i + " ");
			sum += i;
		}
		out.print("</h3>");
		out.println("<h3> 합계는 "+ sum + "</h3>");
		
	%>
	<hr>
	<%! int k = 0; %>
	<%
		for(int i = 0; i < 11; i++){
			k += i;
		}
	%>
	<br>
	<p> 결과는 <%=k %> </p>
	
	<%--선언부 --%>
	<%!
		int res=0;
		public int add(int su1, int su2){
			return su1 + su2;
		}
	
		public void sub(int su1, int su2){
			res = su1 - su2;
		}

	%>
	
	<p> 7 + 5 = <%=add(7,5)  %></p>
	<%sub(7, 5); %>
	
	<p> 7 - 5 = <%=res  %></p>
	
	<hr>
	<h2> 오늘 날짜와 운수 출력하기 </h2>
	<%
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH) + 1;
		int day = now.get(Calendar.DATE);
		int luck = (int)(Math.random()*101);
	
	%>
	<h3> 오늘 날짜 </h3>
	<p> <%=year %> 년 <%= month %> 월 <%= day %>일 </p>
	<h3> 오늘의 운세 </h3>	
	<p> 너의 운수는 <%=luck %> %입니다. </p>

	</body>
	
</html>