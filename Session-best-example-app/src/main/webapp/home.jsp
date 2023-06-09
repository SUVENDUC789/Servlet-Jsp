<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>

	<%
	HttpSession hs = request.getSession();
	String name = (String) hs.getAttribute("name");
	//out.print(name);
	if (name == null) {
		response.sendRedirect("index.jsp");
	}
	%>

	<h1>
		User name :
		<%=name%></h1>
	<b>Home Page</b>

	<a href="about.jsp">about</a>
	<a href="Logout">logout</a>

</body>
</html>