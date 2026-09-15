package com.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

/*DataBaseConnection is considered as Singleton class*/
public class DataBaseConnection {
	
	private static Connection con;
	
	private DataBaseConnection() {
		
	}
   
	public static Connection getConnection() {
		if(con==null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamictaskdb","root","root");
			}catch(Exception e) {
				System.out.println(e.toString());
			}
		}
		return con;
	}
}
