package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.*;

@WebServlet("/first")
public class FirstServlet implements Servlet{
	
	//Total 3 life cycle method in servlet interface.
	ServletConfig config;
	@Override
	public void init(ServletConfig config) throws ServletException {
		this.config=config;
		System.out.println("Object create successfully ...");		
	}
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("I am in Service method ...");
		
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.println("<title>Implement Servlet</title>");
		out.println("<h1>This is a my First Servlet class</h1>");
		out.println("<h2>Date = "+new Date().toString()+"</h2>");
		out.println("<h2><a href='index.html'>Go to Home Page</a></h2>");
		out.println("<h2><a href='first'>Go to First Servlet</a></h2>");
		out.println("<h2><a href='second'>Go to Second Servlet</a></h2>");
		
	}
	
	@Override
	public void destroy() {
		System.out.println("Servlet destroy...");
		
	}
	
	
//	non life cycle method 
	
	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return this.config;
	}
	
	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return "This Servlet created Suvendu Chowdhury.";
	}

}
