<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String fruits = request.getParameter("fruits");
	
	//장바구니의 크기를 정할 수 없으므로 컬렉션에 저장해야 된다.
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("list");
	
	//맨처음에 해당 페이지로 넘어오면 당연히 session에 List가 없다.
	if(list==null){
		list= new ArrayList<String>();
		session.setAttribute("list", list);
	}
	
	// 리스트에 정보 추가
	list.add(fruits);
	
%>
<script type="text/javascript">
	alert("<%=fruits%> 추가 되었습니다.");
	history.go(-1);
	
</script>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
	</body>
</html>