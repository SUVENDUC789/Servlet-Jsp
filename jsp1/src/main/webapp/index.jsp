<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First Jsp Page</title>
</head>
<body>

<%@include file="Header.jsp" %>

<h1>First Jsp Page</h1>

<h2><a href="second.jsp">Second Jsp Tag</a></h2>
<h2><a href="third.jsp">Taglib Directives Jsp</a></h2>
<h2><a href="error.jsp">Error</a></h2>

<%!
	//Declarative tag 
	int a=108;
	int b=216;
	
	public int doSum(){
		return a+b;
	}	
	
%>

<h1>Sum is : <%= doSum() %></h1>


<%
	for(int i=a;i<=b;i++){
		out.println("I = "+i+"<br>");
	}
%>

</body>
</html>