package com.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;

@WebServlet("/data")
public class MyServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String gender = req.getParameter("gender");
		String course = req.getParameter("course");
		String checkbox = req.getParameter("check");

		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		out.println("<center>");
		out.println("<h1>Welcome to Servlet</h1>");
		out.println("<h2><a href='index.html'>Go To Home page</a></h2>");

		if (checkbox != null) {
			out.println("<h3>Name = " + name + "</h3>");
			out.println("<h3>Password = " + password + "</h3>");
			out.println("<h3>Email = " + email + "</h3>");
			out.println("<h3>Course = " + course + "</h3>");

			RequestDispatcher rd = req.getRequestDispatcher("success");
			rd.forward(req, resp);
		} else {
			out.println("<h3>You do not agree.</h3>");

			RequestDispatcher rd = req.getRequestDispatcher("index.html");
			rd.include(req, resp);
		}

		out.println("</center>");
	}
}
