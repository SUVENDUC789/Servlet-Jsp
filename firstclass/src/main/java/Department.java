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
