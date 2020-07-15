<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 
	String path = getServletContext().getRealPath("/upload");
	//System.out.println(path);
	MultipartRequest mr = 
			new MultipartRequest(request, path, 100*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	
	pageContext.setAttribute("mr", mr);
%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>결과 보기</h1>
	<h2>
		<li> 올린사람: <%= mr.getParameter("name") %></li>
		<li> 파일원본이름: <%= mr.getOriginalFileName("file_name") %></li>
		<li> 저장된 파일이름: <%= mr.getFilesystemName("file_name") %></li>
		<li> 파일타입: <%= mr.getContentType("file_name") %></li>
		<hr>
		<% File file = mr.getFile("file_name"); %>
		<li> 파일이름: <%=file.getName() %></li>
		<li> 파일크기: <%=file.length() / 1024  %> KB</li>
		<li> 마지막수정날짜: <%=file.lastModified()  %></li>
		
		<%
			SimpleDateFormat day = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E"); 
		%>
		<li> 마지막 수정날짜: <%= day.format(file.lastModified()) %> </li>
		<img src="upload/<%=file.getName()%>" style="width: 150px">
		<li> 다운로드: <a href="download.jsp?path=upload&file_name=<%=file.getName()%>"><%=file.getName()%></a></li>
	</h2>

</body>
</html>