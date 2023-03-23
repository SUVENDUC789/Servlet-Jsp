package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S2")
public class S2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public S2() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		int sum = Integer.parseInt(request.getParameter("sum"));
		
		int sum=(int)request.getAttribute("sum");
		int p = Integer.parseInt(request.getParameter("n1")) * Integer.parseInt(request.getParameter("n2"));
		PrintWriter out = response.getWriter();
		out.println("<h1>");
		out.println("Sum = " + sum);
		out.println("</h1>");
		
		out.println("<h1>");
		out.println("Product = " + p);
		out.println("</h1>");
	}

}
