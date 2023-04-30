package com.myauth;

import java.sql.*;

public class Database {

	public static Connection con;

	private static Connection connect() {
		String DRIVER = "com.mysql.cj.jdbc.Driver";
		String URL = "jdbc:mysql://localhost:3306/test";
		String USER = "root";
		String PASSWD = "";

		try {
			// Driverclass load
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL, USER, PASSWD);
			System.out.println("Connection established ....");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public Boolean loginValidate(String username , String Password) {
		String sql = "SELECT * FROM myauth WHERE uname=? AND pass=? ";		
		try {
			PreparedStatement ps = connect().prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, Password);
			ResultSet rs = ps.executeQuery();
			return rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return false;
	}
	
}
