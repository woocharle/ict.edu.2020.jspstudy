<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		h2{margin: 10px auto;}
		#input{
			width:800px;
			margin: 0px auto;
		}
		
		#input table, th, td{
			border: 1px solid black;
			border-collapse: collapse;
		}	
		
		#input table{
			width: 750px;
			
		}
		
	</style>
	<script type="text/javascript">
		function product_add(f){
			f.action="/MyController?cmd=productadd";
			f.submit();
		}
		function list_go(f){
			f.action="/MyController?cmd=list";
			f.submit();
		}
	</script>
</head>
<body>
	<div id="input">
	<h2> 상품등록 </h2>
		<form method="post" enctype="multipart/form-data">
			<table>
				<tbody>
					<tr>
						<th> 분 류 </th>
						<td> 
							<input type="radio" name="category" value="com001"> 컴퓨터
							<input type="radio" name="category" value="ele002"> 가전제품
							<input type="radio" name="category" value="sp003"> 스포츠
						
						</td>		
					</tr>
					<tr>
						<th> 제품번호 </th>
						<td> <input type="text" name="p_num" ></td>
					</tr>
					<tr>
						<th> 제품명 </th>
						<td> <input type="text" name="p_name" ></td>
					</tr>
					<tr>
						<th> 판매사 </th>
						<td> <input type="text" name="p_company" ></td>
					</tr>
					<tr>
						<th> 상품가격 </th>
						<td> <input type="number" name="p_price" ></td>
					</tr>
					<tr>
						<th> 할인가 </th>
						<td> <input type="text" name="p_saleprice" ></td>
					</tr>
					<tr>
						<th> 상품이미지s </th>
						<td> <input type="file" name="p_image_s" ></td>
					</tr>
					<tr>
						<th> 상품이미지L </th>
						<td> <input type="file" name="p_image_l" ></td>
					</tr>
					<tr>
						<td colspan = "2"><b>상품내용</b></td>
					</tr>
					<tr>
						<td colspan = "2">
							<textarea rows="10" cols="30" name="p_content"></textarea>
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan = "2">
							<input type="button" value="상품목록" onclick="list_go(this.form)" style="float: right;"/>
							<input type="button" value="상품등록" onclick="product_add(this.form)" style="float: right;"/>
							&nbsp;&nbsp;&nbsp;
						</td>
					</tr>
				</tfoot>
			</table>
		
		</form>
	</div>
</body>
</html>