<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>액션태그_3</title>
		<script type="text/javascript">
			function send_go(f){
				f.action = "Jsp04_2_3.jsp";
				f.submit();
			}
		
		</script>
	</head>
	<body>
		<form method ="post">
			<fieldset>
				<legend> 성적입력</legend>
				<p> 이름: <input type = "text" name = "name" ></p>
				<p> 나이: <input type = "number" name = "age" ></p>
				<p> 주소: <input type = "text" name = "addr"></p>
				<p> 성별: 
					<input type="radio" name="gender" value="남자">
	  				<label for="male">남자</label>
	  				<input type="radio" name="gender" value="여자">
	  				<label for="female">여자</label>
				</p>
				<p> 취미: 
					<input type="checkbox" name="hobby" value="운동">
					<label for="male">운동</label>
	  				<input type="checkbox" id="female" name="hobby" value="게임">
	  				<label for="female">게임</label>
	  				<input type="checkbox" id="female" name="hobby" value="여행">
	  				<label for="female">여행</label>
	  				<input type="checkbox" id="female" name="hobby" value="잠자기">
	  				<label for="female">잠자기</label>
				
				</p>
				<p> 거주지:
					<select name="residence">
						<option>::선택하세요::</option>
						<option>서울</option>
						<option>대전</option>
						<option>대구</option>
						<option>부산</option>
					</select> 
				
				</p>
				<p>	반려동물: 
					<select name="animal" multiple size="4">  
					    <option> 강아지</option>
					    <option> 고양이</option>
					    <option> 토끼 </option>
					    <option> 앵무새</option>
					</select> 			 	
				</p>
				<input type="hidden" name="cPage" value="1">
				<input type="button" value="정보보내기" onclick="send_go(this.form)">
			
			</fieldset>
		</form>
	</body>
</html>