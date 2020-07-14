<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String idx = request.getParameter("idx");
	String num = request.getParameter("num");
	VO vo = DAO.getInstance().getoneList(idx);
	session.setAttribute("vo", vo);
	session.setAttribute("num", num);
	
	//수정과 삭제를 위해서 session에 저장
%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>방 명 록</title>
	<link rel="stylesheet" href ="style_1.css">
	<script type="text/javascript">
		function update_go(f){
			f.action = "update.jsp"
			f.submit();
		}
		function delete_go(f){
			f.action = "delete.jsp"
			f.submit();
		}
	</script>
</head>

<body>
	<div align="center">
		<h2>방명록 : 내용화면</h2>
		<hr/>
		<p>[<a href="list.jsp">목록으로 이동</a>]</p>
		<form method="post">
			<table>
				<tbody>
				
					<tr align="center">
						<td bgcolor="#99ccff">번호</td>
						<td><%=num %></td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">작성자</td>
						<td>${vo.m_name}</td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">제  목</td>
						<td>${vo.m_sub}</td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">email</td>
						<td>${vo.m_email}</td>
					</tr>
					<tr align="left">
						<td colspan="2" style="padding-left: 20px; text-align: left;"><pre>${vo.m_cnt}</pre></td>
					</tr>
	
				</tbody>

				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="button" value="수정" onclick="update_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="삭제" onclick="delete_go(this.form)"/>
						</td>
					</tr>
				</tfoot>
			</table>		
		</form>
	</div>
</body>


</html>