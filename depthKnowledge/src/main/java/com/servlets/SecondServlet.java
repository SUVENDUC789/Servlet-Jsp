package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.*;

@WebServlet("/second")
public class SecondServlet extends GenericServlet {
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("I am in GenericServlet class");	
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.println("<title>Extend GenericServlet</title>");
		out.println("<h1>This is Second Servlet by extentending GenericServlet</h1>");
		out.println("<h2><a href='index.html'>Go to Home Page</a></h2>");
		out.println("<h2><a href='first'>Go to First Servlet</a></h2>");
		out.println("<h2><a href='second'>Go to Second Servlet</a></h2>");
		
	}

}
