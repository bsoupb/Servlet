<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연산</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>

	<%
		int number1 = Integer.parseInt(request.getParameter("number1"));	
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		// 연산자
		// +, -, X , /
		String operator = request.getParameter("operator");
		
		double result = 0;
		if(operator.equals("+")){
			result = number1 + number2;
		} else if(operator.equals("-")){
			result = number1 - number2;
		} else if(operator.equals("X")){
			result = number1 * number2;
		} else if(operator.equals("/")){
			result = number1 / number2;
		}
		
	%>

	<div class="container">
		<h1>계산 결과</h1>
		<div class="display-4"><%= number1 %> <%= operator %> <%= number2 %> = <span class="text-info"><%= result %></span></div>
	</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>