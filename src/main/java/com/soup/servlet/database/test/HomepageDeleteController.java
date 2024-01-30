package com.soup.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soup.servlet.common.MysqlService;

@WebServlet("/database/homepage/delete")
public class HomepageDeleteController extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		
		String deleteQuery = "DELETE FROM `homepage` WHERE `id` = " + id +";"; // 실행될 때 마다 바뀔 값 -> parameter
		
		
		mysqlService.update(deleteQuery);
		
		response.sendRedirect("/database/homepage-list.jsp");
		
	}
}
