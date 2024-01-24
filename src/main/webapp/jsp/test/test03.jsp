<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 시간 정보</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>

	<% 
		Date now = new Date();
	
		SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy년 M일 d일");
		SimpleDateFormat timeFormatter = new SimpleDateFormat("HH시 mm분 ss초");
		
		String dateString = "오늘 날짜 " + dateFormatter.format(now);
		String timeString = "현재 시간 " + timeFormatter.format(now);
		
		// what 파라미터
		// "date" 날짜
		// "time" 시간
		String what = request.getParameter("what");
		
		String resultString = null;
		if(what.equals("date")){
			resultString = dateString;
		} else{
			resultString = timeString;
		}
		
	%>

	<div class="container">
		<div class="display-4"><%= resultString %></div>
	</div>
	
	
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>