<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		table{width: 500px; border-collapse: collapse;}
		table > thead{background-color: #99ccff; border: 1px solid black; text-align: center;}
		table, tr, td, th{border: 1px solid black; text-align: center;}
		table > tr {margin: auto;}
		.tb{background-color: #99ccff;}
	</style>
	<script type="text/javascript">
		function update_ok(f) {
			if(f.pw.value == "${vo.pw}"){
				f.action="update_ok.jsp";
				f.submit();
				
			} else{
				alert("비밀번호가 틀립니다.");
				f.pw.focus();
				return;
			}
		}
		function update_no(f){
			f.action="onelist.jsp"
			f.submit();
		}
	</script>
</head>
<body>
	<div align="center">
	<h2>방명록 : 수정화면</h2>
	<hr>
	<p>[<a href="list.jsp">목록으로 이동</a>]</p>
	<form method="post" enctype="multipart/form-data">
		<table>
			<tbody>
				<tr>
					<td class="tb">작성자</td>
					<td><input type="text" name="name" size="20" value="${vo.name}"></td>
				</tr>
				<tr>
					<td class="tb">제  목</td>
					<td><input type="text" name="sub" size="20" value="${vo.sub}"></td>
				</tr>
				<tr>
					<td class="tb">이메일</td>
					<td><input type="text" name="email" size="20" value="${vo.email}"></td>
				</tr>
				<tr>
					<td class="tb">첨부파일</td>
					<td><input type="file" name="fp" size="20">${vo.fp}</td>
				</tr>	
				<tr>
					<td class="tb">비밀번호</td>
					<td><input type="password" name="pw" size="20" ></td>
				</tr>
				<tr>
					<td colspan="2" style="padding:15px">
						<textarea rows="10" cols="60" name="con">${vo.con}</textarea>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<input type="button" value="수정" onclick="update_ok(this.form)"/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="hidden" name="idx" value="${vo.idx}"/>
						<input type="hidden" name="f_name" value="${vo.fp}"/>
					</td>
				</tr>
			</tfoot>
		
		</table>
	
	</form>
	
	
	</div>
</body>
</html>