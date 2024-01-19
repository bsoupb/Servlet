package com.soup.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// response header
		// response에 담길 데이터 정보
		// 캐릭터 셋, 캐릭터 인코딩 utf-8
		response.setCharacterEncoding("utf-8");
		// 데이터 타입
		// html, png, jpeg, mp4, pdf
		// MIME 규격
		// text/plain : 그냥 문자열
		response.setContentType("text/plain");
		
		// Response Body
		// PrintWriter : Response Body를 채우기 위한 객체
		PrintWriter out = response.getWriter();
		out.println("URL Mapping 예제");
		
		// 현재 날짜 시간을 추가
		// 2024년 01월 14일 20:35:30
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		
		String dateTimeString = formatter.format(now);
		
		out.println(dateTimeString);
		
	}
	
}
