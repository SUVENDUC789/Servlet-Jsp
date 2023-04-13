<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.error{
		color: white;
		background: tan;
		padding: 12dvw;
	}
	
</style>
</head>
<body>

<center><div class="error">
	<img alt="" src="img/error.jpg">
	<h1>Error Occure</h1>
	<p>Note : {<%= exception %>}</p>
	<button><a href="index.html">Go to Home</a></button>
</div></center>

</body>
</html>