package com.soup.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soup.servlet.common.MysqlService;

@WebServlet("/database/user/insert")
public class UserInsertController extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
//		response.setContentType("text/plain");
		
//		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `new_user` \r\n"
				+ "(`name`, `yyyymmdd`, `email`) \r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', " + birthday + ", '" + email + "');";
		
		int count = mysqlService.update(query);
//		out.println("수행결과 : " + count);
		
		// list 페이지로 이동
		// response에 list 페이지로 이동하는 정보를 담는다.
		// 리다이렉트 redirect
		response.sendRedirect("/database/user-list.jsp");
		
	}
}
