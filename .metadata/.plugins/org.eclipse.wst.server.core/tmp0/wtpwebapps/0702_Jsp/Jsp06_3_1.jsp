<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//id와 pw와 일치하면 로그인 성공
	if(id.equals(pw)){
		session.setAttribute("log", "1");
		session.setAttribute("id", id);
	}else{
		session.setAttribute("log", "0");
	}
	/* response.sendRedirect를 사용하면 request 정보는 사라지고 
	   session 정보는 남는다. */
	   
	response.sendRedirect("Jsp06_3_2.jsp");
	
%>
