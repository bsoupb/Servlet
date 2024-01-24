<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post 입력</title>
</head>
<body>

	<form method="post" action="/jsp/ex/ex03.jsp">
		<label>닉네임 : </label><input type="text" name="nickname">
		
		<!-- 셀렉트 박스 -->
		<h1>좋아하는 과일 선택</h1>
		<select name="fruit">
			<option value="apple">사과</option>
			<option value="banana">배</option>
			<option value="peach">귤</option>
		</select>
		
		<!-- 라디오 버튼 -->
		
		<!--  -->
		
		<button type="submit">입력</button>
	</form>

	
</body>
</html>