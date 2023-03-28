package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

@WebServlet("/check")
public class Register extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");

		PrintWriter out = resp.getWriter();
		out.println("<h1>User name : " + name + "</h1>");
		out.println("<h1>Phone Number : " + phone + "</h1>");
		out.println("<h1>Email : " + email + "</h1>");
		out.println("<h1><a href='index.jsp'>Go to Home</a></h1>");

		Connection con;
		String DRIVER = "com.mysql.cj.jdbc.Driver";
		String URL = "jdbc:mysql://localhost:3306/test";
		String USER = "root";
		String PASSWD = "";

		try {

			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL, USER, PASSWD);
			out.println("<h1>Connection Object : " + con + "</h1>");
			
			String sql="INSERT INTO `register` (`name`, `phone`, `email`) VALUES (?,?,?)";
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, phone);
			ps.setString(3, email);
			
			int count = ps.executeUpdate();
//			
//			if(count>0) {
//				System.out.println(count+" Recored inserted ...");
//			}else {
//				System.out.println("No Recored inserted ...");
//			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
