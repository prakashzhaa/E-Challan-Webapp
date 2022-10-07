package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static Connection conn;
	public static Connection getConn() 
	{
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306","root","1218");
			
		} catch (Exception e) {
			//TODO: handle exception
			e.printStackTrace();
		}
		
		
		return conn;
	}

}
