package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S1")
public class S1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public S1() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		try {
			Integer n1 = Integer.parseInt(request.getParameter("n1"));
			Integer n2 = Integer.parseInt(request.getParameter("n2"));

			Integer sum = n1 + n2;

			request.setAttribute("sum", sum);
			RequestDispatcher rd = request.getRequestDispatcher("S2");
			rd.forward(request, response);
			
			out.println("I am in Servlet-1");
			out.println("<br>");
			out.println("<a href='index.html'>Go to Home</a>");
		}
		catch(Exception e) {
			out.println("<h3>Black submission<h3>");
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			rd.include(request, response);
		}
	}

}
