<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자료구조 활용</title>
</head>
<body>
	
	<%
		// 과일 이름 리스트
		
		List<String> fruitList = new ArrayList<>();
		fruitList.add("사과");
		fruitList.add("바나나");
		fruitList.add("딸기");
	
		String fruitString = "";
		for(int i = 0; i < fruitList.size(); i++){
			fruitString += fruitList.get(i);
			
		}
	
	%>
	
	<h3><%= fruitString %></h3>
	
	
	<table border="1">
		<% for(String fruit:fruitList){ %>
		
		<tr>
			<td><%= fruit %></td>
		</tr>
		
		<% } %>
	</table>
	
</body>
</html>