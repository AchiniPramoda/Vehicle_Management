package com.trip.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionUtil extends CommonUtil {

	private static Connection connection;

	//this work according to the singleton design pattern
	private DBConnectionUtil() {
		//private constructor
	}
 //get the object using get
	public static Connection getDBConnection() throws ClassNotFoundException, SQLException {

		if (connection == null || connection.isClosed()) {

			Class.forName("com.mysql.jdbc.Driver");
			
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3360/transport?characterEncoding=latin1", "root", "");
		}
		return connection;
	}
}
