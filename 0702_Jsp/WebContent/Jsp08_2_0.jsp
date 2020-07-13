<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL: 국제화 (fmt)</title>
	</head>
	<body>
		<h1> 숫자와 날짜 포맷팅 </h1>
		<h2>
			<h3> 천단위 숫자처리와 숫자만 받기 </h3>
			<li> <fmt:formatNumber value="1234.5657"/>  </li>
			<hr>
			
			<h3> 숫자 처리 </h3>
			
			<li> <fmt:parseNumber value="1234.567"/>  </li>
			<li> <fmt:parseNumber value="1234.567aaa"/>  </li>
			
			<h3> 반올림 </h3>
			<li> <fmt:formatNumber value="1234.465"  pattern="#,###"/>  </li>
			<li> <fmt:formatNumber value="1234.5657"  pattern="#,###"/>  </li>
			
			<h3> 소수점 첫째자리 </h3>
			<li> <fmt:formatNumber value="1234.465"  pattern="#,###.0"/>  </li>
			<li> <fmt:formatNumber value="1234.445"  pattern="#,###.0"/>  </li>
			<li> <fmt:formatNumber value="1234.5657"  pattern="#,###.0"/>  </li>
			
			<h3> 일의 자리 </h3>
			<li> <fmt:formatNumber value="1234.465"  pattern="#,##0"/>  </li>
			<li> <fmt:formatNumber value="1234.445"  pattern="#,##0"/>  </li>
			<li> <fmt:formatNumber value="1234.5657"  pattern="#,##0"/>  </li>
			
			<h3> 현재 시스템에 맞는 화폐 단위 사용 </h3>
			<li> <fmt:formatNumber value="1234"  type="currency"/></li>
			<li> <fmt:formatNumber value="1234.465"  type="currency"/></li>
			
			<h3> 시스템 변경 </h3>
			<fmt:setLocale value="en_us"/>
			<li> <fmt:formatNumber value="1234"  type="currency"/></li>
			<li> <fmt:formatNumber value="1234.465"  type="currency"/></li>
			
			<fmt:setLocale value="en_kor"/>
			
			<h3> 백분위 표시 </h3>
			<li> <fmt:formatNumber value="12"  type="percent"/></li>
			<li> <fmt:formatNumber value="0.12"  type="percent"/></li>
						
			<h3> 날짜 처리 </h3>
			<jsp:useBean id = "now" class="java.util.Date"/>
			<h3> 오늘날짜 ${now} 입니다.</h3>
			<hr>
			<li> <fmt:formatDate value="${now}"/></li>
			<li> <fmt:formatDate value="${now}" dateStyle="short"/></li>
			<li> <fmt:formatDate value="${now}" dateStyle="medium"/></li>
			<li> <fmt:formatDate value="${now}" dateStyle="long"/></li>
			<li> <fmt:formatDate value="${now}" dateStyle="full"/></li>
			
			
			

			
			
			
			
		</h2>
		
	</body>
</html>