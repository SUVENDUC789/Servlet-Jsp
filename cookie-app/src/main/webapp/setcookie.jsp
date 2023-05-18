<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First Jsp | SC</title>
</head>
<body>

<%
	String name = request.getParameter("uname");
	Cookie c = new Cookie("user_name",name);
	response.addCookie(c);
	
	out.println("<h1>This is First Jsp Page</h1>");
	out.println("<h1>User name is : "+name+"</h1>");
	out.println("<h3><a href='next.jsp'>Next Page</a></h3>");
	
%>

</body>
</html>