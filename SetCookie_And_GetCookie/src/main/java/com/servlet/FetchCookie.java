package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fetch")
public class FetchCookie extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		out.println("<h1>All cookie fetch in This Servlet</h1>");
		Cookie[] c = req.getCookies();
		String name = "";
		for (Cookie co : c) {
//			System.out.println(c);
			String temp = co.getName();
			if (temp.equals("topic")) {
				name = co.getValue();
			}
		}
		out.println("<h1>Your favorite topic is " + name + "</h1>");
		out.println("<a href='hello'>Go to First Servelet</a>");
	}
}
