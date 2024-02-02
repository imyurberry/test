package com.sw.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection getConnection() {
		// JDBC
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "test240202";
		String pw = "123123";
		
		Connection conn = null;
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, id, pw);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
