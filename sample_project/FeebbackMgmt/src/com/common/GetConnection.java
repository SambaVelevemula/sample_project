package com.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class GetConnection {

	public static Connection getConnection() throws SQLException {

		Connection con=null;
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackdb","root","root");
			//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
		} catch (Exception e) {

			e.printStackTrace();
		}

		return con;

	}

}
