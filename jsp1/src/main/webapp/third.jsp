<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%@taglib prefix="suv" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@include file="Header.jsp" %>

<suv:set var="name" value="Suvendu Chowdhury"> </suv:set>

<hr>

<h1>
	<suv:out value="${name}"></suv:out>
</h1>

<%!
	int a=108;
	int b=216;
	int i=60+1;
%>

<%
	for(int i=a;i<=b;i++){
		
	}
%>

<suv:if test="${i%2==0}">
	<h2>Even is : <%= i %></h2>
</suv:if>



</body>
</html>