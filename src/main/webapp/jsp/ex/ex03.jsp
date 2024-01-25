<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method</title>
</head>
<body>
	
	<%
		// 닉네임을 전달 받고 보여주는 기능
		String nickname = request.getParameter("nickname");
		// 좋아하는 과일
		String fruit = request.getParameter("fruit");
		
		String animal = request.getParameter("animal");
		
		// String food = request.getParameter("food");
		// 하나의 이름으로 여러개의 파라미터 값을 전달 받을 때
		String[] foods = request.getParameterValues("food");
		
		String foodString = "";
		for(int i = 0; i < foods.length; i++){
			foodString += foods[i] + " ";
		}
	%>
	
	<h3><%= nickname %></h3>
	<h3><%= fruit %></h3>
	<h3><%= animal %></h3>	
	<h3><%= foodString %></h3>
</body>
</html>