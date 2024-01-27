<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일기장</title>
</head>
<body>
		
		<h2>일기장</h2>
		<%-- 현재 날짜 시간 정보 --%>
		<!-- 정적 방식 -->
		<%@ include file="date.jsp" %>
		<!-- 동적 방식 -->
		<jsp:include page="date.jsp" />
		<hr>
		
		<div>
			오늘 너무 추운 날이다. 너무 힘들었다. 그래도 오늘 해냈다 고생했어!
		</div>
		
		
		
		
		
</body>
</html>