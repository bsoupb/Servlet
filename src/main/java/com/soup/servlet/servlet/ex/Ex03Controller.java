package com.soup.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일을 전달 받고,
		// 이름과 나이를 html 정돈해서 response에 담는다.
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday"); // 20011012
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		// 한국나이
		int age = 2024 - year + 1;
		
//		out.println("<html><head><title>이름 나이</title></head><body>");
//		out.println("<h2>이름 : " + name + "</h2>");
//		out.println("<h2>나이 : " + age + "</h2>");
//		out.println("</body></html>");
		
		// json : 자바스크립트의 객체 형태를 따온 것
		// 문자열로 데이터를 표현하는 규격
		// [10, 20, 30]
		// {"name":"김가나", "age":"24"} 
		
		out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}");
		
	}
}
