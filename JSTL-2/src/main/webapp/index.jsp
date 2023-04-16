<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="suv" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL functions tags</title>
</head>
<body>

<h1>JSTL functions tags</h1>

<suv:set var="name" value="Suvendu Chowdhury"></suv:set>

<h1>Name : <suv:out value="${name}"></suv:out></h1>

<h2>Length : <suv:out value="${fn:length(name)}"></suv:out> </h2>

<h2>Convert lowercase :  <suv:out value="${fn:toLowerCase(name)}"></suv:out> </h2>

<h2>Convert Uppercase : <suv:out value="${fn:toUpperCase(name)}"></suv:out> </h2>

<h2>Containes : <suv:out value="${fn:contains(name,'Suv')}"></suv:out> </h2>

<h2>Containes : <suv:out value="${fn:contains(name,'India')}"></suv:out> </h2>

</body>
</html>