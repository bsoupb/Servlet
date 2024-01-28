package com.soup.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// Mysql jdbc 의 사용 과정에 복잡한 코드를 간결하게 사용하도록
// 메소드로 정리하는 역할

public class MysqlService {
	
	private static MysqlService mysqlService = null;
	
	private Connection connection;
	private Statement statement;
	
	// 디자인 패턴
	// Singleton 패턴
	// 객체 관리 메소디
	public static MysqlService getInstance(){ // static 해당 매소드는 객체 생성 없이 호출
		
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	
	// 접속기능
	public void connect() {
		
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/bae";
			String userId = "root";
			String password = "root";
			
			connection = DriverManager.getConnection(url, userId, password);
			statement = connection.createStatement();

			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
	
	// select 쿼리 수행기능
	public ResultSet select(String query) {
		ResultSet resultSet;
		try {
			resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
			
			e.printStackTrace();
			return null;
		}
		
	}
	
	// insert, update, delete 쿼리 수행기능
	public int update(String query) {
		
		// 실행된 행의 개수
		try {
			int count = statement.executeUpdate(query);
			return count;
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return -1;
		}
	}
	
	// 데이터베이스 접속 끊기
	public void disconnect(){
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
}
	

