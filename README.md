# 1. My First Servlet Get Post Request And RequestDispatcher Thougn Redirection And Route Seting
#### This is Employee.java  File
```java
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/emp")
public class Employee extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		PrintWriter out= resp.getWriter();
		out.println("<body bgcolor='cyan'>");
		out.println(name + " "+ email);
		out.println("</body>");
		
		req.setAttribute("name", name);
		req.setAttribute("email", email);
		
		RequestDispatcher send= req.getRequestDispatcher("dep");
		send.forward(req, resp);
		
		
	}

}
```

#### Department.java 
```java
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dep")
public class Department extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = (String)req.getAttribute("name");
		String email = (String)req.getAttribute("email");
		
		PrintWriter out = resp.getWriter();
		out.println("Welcome to Department : "+name+" "+email);
	}

}
```