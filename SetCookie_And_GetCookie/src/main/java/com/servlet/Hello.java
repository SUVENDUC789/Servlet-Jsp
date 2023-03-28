package com.servlet;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/hello")
public class Hello extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		PrintWriter out = resp.getWriter();
		String topic = req.getParameter("topic");
		
		Cookie c = new Cookie("topic", topic);
		resp.addCookie(c);
//		System.out.println(c);
		
		out.println("<h1>Your Favorite topic is : " + topic + "</h1>");
		out.println("<a href='index.html'>Go to Home</a><hr>");
		out.println("<a href='fetch'>Go to Fetch Servlet</a>");
	}
}
