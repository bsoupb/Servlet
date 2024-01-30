<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.soup.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지 리스트</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
	
	<% 
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		// 한 행씩 가르키는 객체
		ResultSet resultSet = mysqlService.select("SELECT `id`, `name`, `url` FROM `homepage` ORDER BY `id` DESC;");
	%>
	
	<div class="container">
		<table class="table text-center">
			<thead>		
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<% while(resultSet.next()) { %> <!-- 다음 행이 없어질 때 까지 반복 -->
				<tr>
					<td><%= resultSet.getString("name") %></td>
					<td><a href="<%= resultSet.getString("url") %>" target="_blank"><%= resultSet.getString("url") %></a></td>
					<td>
						<a class="btn btn-danger btn-sm" href="/database/homepage/delete?id=<%= resultSet.getInt("id") %>">삭제</a>
						<!-- <button type="button" class="btn btn-primary" onclick="location.href='/database/homepage/delete?id=<%= resultSet.getInt("id") %>'">삭제</button> -->
					</td>
				</tr>
				<% } %>
			</tbody>
		</table>
		
		<a href="/database/homepage-input.jsp">즐겨찾기 추가</a>
	</div>
		
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>