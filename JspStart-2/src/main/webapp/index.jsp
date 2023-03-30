<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All tags in Jsp</title>
</head>
<body>
	<h1>All Tags in jsp</h1>
	
	<h2>Others Tags Here : <a href='other.jsp'> Click here</a></h2>

	<%!int a = 10;
	int b = 50;

	public int mysum() {
		return a + b;
	}

	String myname = "Suvendu Chowdhury";

	public String reverseMy() {
		StringBuffer sb = new StringBuffer(myname);
		return sb.reverse().toString();
	}%>

	<%
	out.println(a + " " + b);
	out.println("<br>");
	out.println("Sum of two number is : " + mysum());
	out.println("<br>");
	out.println(myname + " reverse is : " + reverseMy());
	%>

	<h5>Using Expression tag</h5>
	<h6>
		Sum is
		<%=mysum()%></h6>
	<h6>
		Reverse is
		<%=reverseMy()%></h6>

</body>
</html>