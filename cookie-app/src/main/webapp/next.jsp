<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Next Page | SC</title>
</head>
<body>

	<%!String name;%>

	<%
	Cookie[] cook = request.getCookies();
	if (cook == null) {
		out.println("<h1>You are new user</h1>");
	} else {
		for (Cookie c : cook) {
			String tname = c.getName();
			if (tname.equals("user_name")) {
				name = c.getValue();
			}
		}
		//out.println("<h1>This is First Jsp Page</h1>");
	}
	%>
	
	<h1>Second page JSP <%= name %></h1>

</body>
</html>