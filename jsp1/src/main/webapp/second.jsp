<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    
<%@page import="java.util.Random,java.util.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Second Page In jsp</title>
</head>
<body>
<%@include file="Header.jsp" %>
<h1>Second Page In jsp</h1>

<h2>
	Random no = 
	<%
		Random r = new Random();
		int n = r.nextInt(10);
	%>
	
	<%= n %>
</h2>

</body>
</html>