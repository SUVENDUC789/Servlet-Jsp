<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This is Page 2</title>
</head>
<body>
	<h1>This is Page 2</h1>

	<%
	//Redirect
	response.sendRedirect("page3.jsp");
	%>
</body>
</html>