package com.soup.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soup.servlet.common.MysqlService;

@WebServlet("/database/homepage/insert")
public class HomepageInsertController extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		

		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `homepage` \r\n"
				+ "(`name`, `url`) \r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + url + "');";
		
		int count = mysqlService.update(query);

		response.sendRedirect("/database/homepage-list.jsp");
		
		
	}
}
