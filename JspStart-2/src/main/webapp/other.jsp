<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jsp Tags - 2</title>
</head>
<body>

<%@include file="header.jsp" %>

	<h1>Directive tags</h1>

	<%
	Random r = new Random();
	int n = r.nextInt(10);
	%>

	<h2>
		Random number is :
		<%=n%></h2>

</body>
</html>