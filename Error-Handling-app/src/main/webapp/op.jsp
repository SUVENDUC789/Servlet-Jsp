<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int a = 0;
	int b = 0;
	int result = 0;%>

	<%
	String n1 = request.getParameter("n1");
	String n2 = request.getParameter("n2");

	a = Integer.parseInt(n1);
	b = Integer.parseInt(n2);

	result = a / b;
	
	//out.println(result);
	%>
	
	<h1>Result is <%= result %></h1>

</body>
</html>