package com.soup.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet {
	
//	오늘 날짜 출력
//	오늘 날짜를 아래와 같이 출력하세요.
//	web.xml URL Mapping 후 servlet을 이용해서 출력하세요.
//	Content Type은 text/plain으로 설정하세요.
//	출력 예시
//
//	오늘의 날짜는 2021년 5월 20일

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request 전달받고 처리, request 기반으로 데이터 만들어내고 만들어낸 데이터를 response에 담아서 http 규격대로 담아줌
		
		// response header 정보 셋팅
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		
		String dateString = formatter.format(now);
		
		out.print("오늘의 날짜는 " + dateString);
		
	}
	
	
}
