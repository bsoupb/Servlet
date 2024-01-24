<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- 
		1. 점수들의 평균 구하기
		스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요
  	-->
  	
  	<% 
	  	int[] scores = {80, 90, 100, 95, 80};
  		
  		int sum=0;
  		for(int i = 0; i < scores.length; i++){
  			sum+=scores[i];
  		}
  	%>
  	
  	<!-- 
  		2. 채점 결과
		아래 채점표로 시험점수가 몇점인지 구하세요.
  	 -->
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		int score = 0;
		for(int i = 0; i < scoreList.size(); i++){
			if(scoreList.get(i).equals("O")){
				score+=10;
			}
		}
	%>  	
  	
  	<%!
  		public int allSum(int N){
			int sum = 0;
			for(int i = 1; i <= N; i++){
				sum += i;
			}
			return sum;
  		}	
  	%>
  	
  	<%
	  	String birthDay = "20010820";
  		
  		String yearString = birthDay.substring(0, 4);
  		
  		int year = Integer.parseInt(yearString);
  		
  		int age = 2024 - year + 1;
  		
  	%>
  	
  	<h3>점수 평균은 <%= sum / 5.0 %> 입니다.</h3>
  	<h3>채점 결과는 <%= score %>점 입니다.</h3>
  	<h3>1에서 50까지의 합은 <%= allSum(50) %></h3>
  	<h3><%= birthDay %> 의 나이는 <%= age %> 입니다.</h3>
</body>
</html>