<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 방 명 록 </title>
	<style>
		a { text-decoration: underline;}
		table{width: 500px; border-collapse:collapse; text-align: center;}
		table,th,td{border: 1px solid black; padding: 3px}
	</style>
	<script type="text/javascript">
		function update_go(f){
			f.action = "/0720_MVC01_guestbook2/MyController?cmd=update"
			f.submit();
		}
	</script>
</head>
<body>
	<div align="center">
		<h2> 방명록 : 내용 화면 </h2>
		<hr>
		<p>[ <a href ="/0720_MVC01_guestbook2/MyController?cmd=list">목록으로 이동 </a>]</p>
		<form method="post">
			<table>
				<tbody>
					<tr align="center">
						<td bgcolor="#99ccff">작성자</td>
						<td>${vo.name}</td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">제목</td>
						<td>${vo.subject}</td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">이메일</td>
						<td>${vo.email}</td>
					</tr>
					<tr align="center">
						<td bgcolor="#99ccff">첨부파일</td>
						<c:choose>
							<c:when test="${empty vo.filename}">
								<td> <b>첨부파일 없음.</b></td>
							</c:when>
							<c:otherwise>
								<td>
									<img src="upload/${vo.filename}" style="width: 150px">
									<a href="/0720_MVC01_guestbook2/MyController?cmd=down&path=upload&filename=${vo.filename}">${vo.filename}</a>
								</td>
							</c:otherwise>
						</c:choose>
					</tr>
				
				</tbody>
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