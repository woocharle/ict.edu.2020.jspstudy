<%@page import="java.io.File"%>
<%@page import="com.ict.edu.VO"%>
<%@page import="com.ict.edu.DAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String idx = request.getParameter("idx");
	String num = request.getParameter("num");
	VO vo = DAO.getInstance().getOnelist(idx);
	session.setAttribute("vo", vo);
		
%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>방명록: 내용화면</title>
	<style type="text/css">
		table{width: 500px; border-collapse: collapse;}
		table > thead{background-color: #99ccff; border: 1px solid black; text-align: center;}
		table, tr, td, th{border: 1px solid black; text-align: center;}
		table > tr {margin: auto;}
		.tb{background-color: #99ccff;}
	</style>
	<script type="text/javascript">
		function update_go(f) {
			f.action="update.jsp";
			f.submit();
		}
		function delete_go(f) {
			f.action="delete.jsp";
			f.submit();
		}
	
	</script>
</head>
<body>
	<div align="center">
		<h2>방명록 : 내용화면</h2>
		<hr>
		<p>[<a href="list.jsp">게시물 목록</a>]</p>
		<form method="post" >
			<table>
				<tr align="center">
					<td bgcolor="#99ccff">작성자</td>
					<td>${vo.name}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">제  목</td>
					<td>${vo.sub}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">email</td>
					<td>${vo.email}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">첨부파일</td>
					<%-- 첨부파일이 있을 때와 없을 때구분 --%>
					<c:choose>
						<c:when test="${empty vo.fp}">
							<td><b>첨부파일 없음.</b></td>
						</c:when>
						<c:otherwise>
							<td>
								<img src="upload/${vo.fp}" style="width: 150px">
								<a href="download.jsp?path=upload&file_name=${vo.fp}">${vo.fp}</a>
							</td>
							
						</c:otherwise>
					</c:choose>
				</tr>
				<tr align="center">
					<td colspan="2" style="padding:15px;">
						<textarea rows="10" cols="60" name="content">${vo.con}</textarea>
					</td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="button" value="수정" onclick="update_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="삭제" onclick="delete_go(this.form)" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>