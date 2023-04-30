<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details | SC</title>
</head>
<body>

	<%!String uname;
	String password;
	String agree;%>

	<center>
		<%
		uname = request.getParameter("uname");
		password = request.getParameter("pass");
		agree = request.getParameter("agree");

		if (agree != null) {

			out.println("<h1>Login Success Full...</h1>");
		} else {
			out.println("<h1>You do not agree with terms & Condition</h1>");
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			//rd.include(request, response);
		}
		%>

	</center>

</body>
</html>