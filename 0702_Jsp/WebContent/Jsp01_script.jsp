<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>html �ּ��� jsp ���� �� �ּ�</title>
	</head>
	<body>

	
	<h2> 1���� 10���� ����ϱ� </h2>
	<%
		for(int i = 1; i < 11; i++){
			//System.out.println(i);
			out.println("<h3>" + i + "</h3>");
		}
	
	%>
	<hr>
	
	<h2> 0���� 10���� ����ϰ� �յ� ����ϱ� </h2>
	<%
		int sum = 0;
		out.print("<h3>");
		for(int i = 1; i < 11; i++){
			//System.out.println(i);
			out.println(" " + i + " ");
			sum += i;
		}
		out.print("</h3>");
		out.println("<h3> �հ�� "+ sum + "</h3>");
		
	%>
	<hr>
	<%! int k = 0; %>
	<%
		for(int i = 0; i < 11; i++){
			k += i;
		}
	%>
	<br>
	<p> ����� <%=k %> </p>
	
	<%--����� --%>
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
	<h2> ���� ��¥�� ��� ����ϱ� </h2>
	<%
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH) + 1;
		int day = now.get(Calendar.DATE);
		int luck = (int)(Math.random()*101);
	
	%>
	<h3> ���� ��¥ </h3>
	<p> <%=year %> �� <%= month %> �� <%= day %>�� </p>
	<h3> ������ � </h3>	
	<p> ���� ����� <%=luck %> %�Դϴ�. </p>

	</body>
	
</html>