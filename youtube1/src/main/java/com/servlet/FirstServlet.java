package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/demo")
public class FirstServlet implements Servlet {

//	Lifecycle method 

	ServletConfig config;

	@Override
	public void init(ServletConfig config) throws ServletException {
		this.config = config;
		System.out.println("Creating object ...");
	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("It is servicing ...");
		
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		out.println("<title>Call Servlet Interface</title>");
		out.println("<h1>Call Servlet Interface Now date is : "+ new Date().toString()+" </h1>");
		out.println("<h3><a href='index.html'>Back Home Page</a></h3>");
	}

	@Override
	public void destroy() {
		System.out.println("Go ing to destroy object...");
	}

	// Non life cycle Method

	@Override
	public ServletConfig getServletConfig() {
		return this.config;
	}

	@Override
	public String getServletInfo() {
		return "This Servlet was created by Suvendu Chowdhury.";
	}

}
