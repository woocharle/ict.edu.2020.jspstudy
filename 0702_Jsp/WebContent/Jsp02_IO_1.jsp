<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 요청에 따른 한글 처리
	request.setCharacterEncoding("UTF-8");
	// 파라미터 내려받기
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	String rsd = request.getParameter("residence");
	String[] animal = request.getParameterValues("animal");
	String cPage = request.getParameter("cPage");
%> 
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 내장객체</title>
	</head>
	<body>
		<h1> 1. Request: 클라이언트 및 서버 정보 보기 </h1>
		<h3>
			<ul>
				<li> 클라이언트 IP			: <%=request.getRemoteAddr() %> </li>
				<li> 요청 정보 길이			: <%=request.getContentLength() %></li>
				<li> 요청 정보 인코딩		: <%=request.getCharacterEncoding() %></li>
				<li> 요청 정보 컨텐츠 타입	: <%=request.getContentType() %></li>
				<li> 요청 정보 프로토콜		: <%=request.getProtocol() %></li>
				<li> 요청 정보 전송 방식	: <%=request.getMethod() %></li>
				<li> 요청 URI				: <%=request.getRequestURI() %></li>
				<li> 컨텍스트 경로			: <%=request.getContextPath() %></li>
				<li> 컨텍스트 정보			: <%=request.getServletContext() %></li>
				<li> 서버 이름				: <%=request.getServerName() %></li>
				<li> 서버 포트				: <%=request.getServerPort() %></li>			
			</ul>
		
		</h3>
		
		<h1> 2. 파라미터 값 표시하기 </h1>
			<ul>
				<li>이름: <%=name %></li>
				<li>나이: <%=age %></li>
				<li>주소: <%=addr %></li>
				<li>성별: <%=gender %></li>
				<li>취미: <% for(String  k : hobby){
								out.print(k + "&nbsp;&nbsp;");
						  }%>   		
				</li>
				<li>반려동물: <% for(String  k : animal){
								out.print(k + "&nbsp;&nbsp;");
						  	  }%>  
				</li>
				<li> cPage : <%=cPage %></li>
			
			</ul>
		
		<h2> * getParameterNames(): 파라미터 이름들 구하기 * </h2>
			<ul>
				<%
					Enumeration p_enum = request.getParameterNames();
					while(p_enum.hasMoreElements()){
						String p_name = (String)p_enum.nextElement();
						out.println("<li>" + p_name + "</li>");
					}
				
				%>
			</ul>
		<h2> * getParameterMap(): 파라미터 구하기 * </h2>
			<h3>
				<%
					Map map = request.getParameterMap();
					map.get("name");
					String[] m_name = (String[])map.get("name");
					String[] m_age = (String[])map.get("age");
					String[] m_hobby = (String[])map.get("hobby");
					out.println(m_name[0] + "<br>");
					out.println(m_age[0] + "<br>");
					for(String k : m_hobby){
						out.println(k + "&nbsp;&nbsp;");
					}
				%>
			</h3>
		
		<h2> * request로 HTTP 헤더 정보 보기</h2>
		<h3>
			<%
				Enumeration e_num = request.getHeaderNames();
				while(e_num.hasMoreElements()){
					String h_name=(String) e_num.nextElement();
					String h_value= request.getHeader(h_name);
					out.println(h_name+ ":" + h_value + "<br>");
				}
			
			%>
		</h3>
		
			
	</body>
	
</html>