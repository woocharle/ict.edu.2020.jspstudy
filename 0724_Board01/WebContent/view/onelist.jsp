<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		#bbs table{
			width:800px;
			margin: 0 auto;
			margin-top: 20px;
			border: 1px solid black;
			border-collapse: collapse;
			font-size: 14px;
		}
		
		#bbs table caption{
			font-size:20px;
			font-weight: bold;
			margin-bottom: 10px;
		}
		
		#bbs table th{
			text-align: center;
			border: 1px solid black;
			padding: 4px 10px;
			background-color: #99eeff;
		}
		
		#bbs table td{
			text-align: center;
			border: 1px solid black;
			padding: 4px 10px;
		}
		
		.no {width:15%}
		.subject {width:30%}	
		.writer {width:20%}
		.reg {width:20%}
		.hit {width:15%}
		.title{background:lightsteelblue}
		.odd {background:silver}
		
		.div1{
			border: 1px solid blue;
			width: 60%;
			margin: 0px auto;
			padding: 5px 20px;
		}
	
		#content2{display: none}
	</style>
	<script type="text/javascript">
		function list_go(f){
			f.action = "/MyController?cmd=list";
			f.submit();
		}
		function update_go(f){
			f.action = "/MyController?cmd=update_0";
			f.submit();
		}
		function delete_go(f){
			f.action = "/MyController?cmd=delete_0";
			f.submit();
		}
		function comment_go(f){
			f.action = "/MyController?cmd=c_write";
			f.submit();
		}
		
		/*
		function c_update_ok(){
			document.getElementById("content1").style.display="none";
			document.getElementById("content3").style.display="none";
			document.getElementById("content2").style.display="block";
				
		}
		
		function c_update_no(f){
			document.getElementById("update_ok").style.display="none";
			document.getElementById("update_no").style.display="block";
		}
		*/
		
		function c_delete(f){
			if(f.pwd.value == f.pass.value){
				f.action = "/MyController?cmd=c_delete";
				f.submit();
			}else{
				alert("비밀번호가 틀립니다.\n다시입력해주세요");
				f.pwd.value="";
				f.pwd.focus();
				return;
			}
		}
	
	</script>
</head>
<body>
	<div id="bbs">
		<form method="post">
			<table summary="게시판 글쓰기"> 
				<caption>게시판 글쓰기</caption>
				<tbody>
					<tr>
						<th>제목:</th>
						<td>${bvo.subject}</td>
					</tr>
					<tr>
						<th>이름:</th>
						<td>${bvo.writer}</td>
					</tr>
					<tr>
						<th>내용:</th>
						<td>
							<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
							<textarea name="content" readonly><pre>${bvo.content}</pre></textarea>
							<script>
								CKEDITOR.replace('content');
							</script>
						</td>
					</tr>
					<tr>
						<th>첨부파일:</th>
						<c:choose>
							<c:when test="${empty bvo.filename}">
								<td><b>첨부파일 없음</b></td>
							</c:when>
							<c:otherwise>
								<td>
									<img alt="" src="upload/${bvo.filename}" style="width:100px"><br>
									<a href=""></a>
								</td>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<td colspan="2">
							<input type="button" value="수정" onclick="update_go(this.form)">
							&nbsp;&nbsp;&nbsp;
							<input type="button" value="삭제" onclick="delete_go(this.form)">
							&nbsp;&nbsp;&nbsp;
							<input type="button" value="목록" onclick="list_go(this.form)">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<br>
	<hr>
	<br>
	<div class="div1"> 
		<form method="post"> 
			<p> 이름: <input type="text" name="writer" size="15"/></p>
			<p> 내용: <br>
				<textarea rows="4" cols="40" name="content"></textarea>
			</p>
			<p> 비밀번호: <input type="password" name="pwd" size="15"></p>
			<input type="button" value="댓글 저장"  onclick="comment_go(this.form)"/>
			<%--댓글 저장후 다시 onelistcommand로 가야한다. --%>
			<input type="hidden" name="b_idx" value="${bvo.b_idx}">
		</form>
	</div>
	<br>
	<hr>
	<%--댓글 출력 --%>
	<div style="display:table; margin-left:100px;">
		<c:forEach var="k" items="${clist}">
			<div style="border: 1px solid #cc00cc; width:400px; margin:20px; padding:20px;">
				<form method="post">
					<p>이름: ${k.writer}</p>
					<p>날짜: ${k.writedate.substring(0,10)}</p>
					<p  id="content1">내용: <pre id="content3">${k.content}</pre></p>
					<p  id="content2">내용: <input type="text" name="content2" value="${k.content}"></pre></p>
					<p>비밀번호: <input type="password" name="pwd"></p>
					<input type="button" value="댓글수정" onclick="c_update_ok()"/>
					<input type="button" value="댓글삭제" onclick="c_delete(this.form)"/>
					<input type="hidden" name="pass" value="${k.pwd}">
					<input type="hidden" name="c_idx" value="${k.c_idx}">
					<input type="hidden" name="b_idx" value="${k.b_idx}">
				</form>
			</div>
		</c:forEach>
	</div>
</body>
</html>


