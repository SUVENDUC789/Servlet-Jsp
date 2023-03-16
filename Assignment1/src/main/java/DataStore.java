

/*
 * CREATE TABLE `dao`.`employee` (`email` VARCHAR(100) NOT NULL , `name` VARCHAR(100) NOT NULL , `phone` VARCHAR(100) NOT NULL , `department` VARCHAR(100) NOT NULL , PRIMARY KEY (`email`)) ENGINE = InnoDB;
 * */
import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

class DBMan {

	public static String DRIVER = "com.mysql.cj.jdbc.Driver";
	public static String URL = "jdbc:mysql://localhost:3306/dao";
	public static String USER = "root";
	public static String PASSWD = "";

	public static Connection con;

	public static Connection connectDB() throws Exception {
		Class.forName(DRIVER);
		con = DriverManager.getConnection(URL, USER, PASSWD);
		return con;
	}

	public static int insertDB(String name, String email, String phone, String dep) throws Exception {
//		"INSERT INTO `employee` (`email`, `name`, `phone`, `department`) VALUES (\'email\', \'name\', \'phone\', \'dep\');"
		String sql = "INSERT INTO `employee` (email,name,phone,department) VALUES (?,?,?,?)";
		Connection con = DBMan.connectDB();
		PreparedStatement psmt = con.prepareStatement(sql);
		psmt.setString(1, email);
		psmt.setString(2, name);
		psmt.setString(3, phone);
		psmt.setString(4, dep);

		int count = psmt.executeUpdate();

		return count;
	}

}

@WebServlet("/datastore")
public class DataStore extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		String boro="";
		out.println("<title>Submit</title>");
		out.println("<body>");
		out.println("<center>");
		try {
			String name = req.getParameter("name");
			String dep = req.getParameter("dep");
			String phone = req.getParameter("phone");
			String email = req.getParameter("email");
			
			int c =DBMan.insertDB(name, email, phone, dep);
			
			if (c==0) {
				boro="<h2 >Email Already exists !</h2>";
				out.println(boro);
			}else {
				boro="<h2 >Submited Successfully</h2>";
				out.println(boro);
			}
			
//			out.println(DBMan.connectDB());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			boro="<h2 >Email Already exists !</h2>";
			out.println(boro);
		}
		out.println("</center>");
		out.println("</body>");

	}

}
