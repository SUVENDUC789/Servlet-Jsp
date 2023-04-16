<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core tags </title>
</head>
<body>


	<h1>JSTL core tags </h1>
	<a href="test.jsp">Got another Page</a>
	<!-- 1. Out Tag -->
	<s:out value="Suvendu Chowdhury"></s:out>
	
	<!-- 2. Set Tag -->
	<s:set var="i" value="109" scope="application"></s:set>
	<s:out value="${i}"></s:out>
	
	
	<!-- 4. if condition -->
	<s:if test="${i%2==0 }">
		<h1>Yes this is Even</h1>
	</s:if>
	
	<!-- 5. Chose when otherwise -->
	<s:set var="j" value="1000000" scope="application"></s:set>
	
	<s:choose>
		<s:when test="${j==18 }">
			<h1>You one time see a porn video</h1>
		</s:when>
		
		<s:when test="${j<18 }">
			<h1>You do not see porn video</h1>
		</s:when>
		
		<s:otherwise>
			<h1>You control your **** !</h1>
		</s:otherwise>
	</s:choose>
	
	<!-- 6. for each loop -->
	
	<s:forEach var="k" begin="1" end="10">
		<h2>k Value is : <s:out value="${k}"></s:out>   </h2>
	</s:forEach>
	
	<!-- 7. Url rewriting & Redirecting -->
	
	<s:url var="myurl" value="https://www.google.com/search">
		<s:param name="q" value="Suvendu Chowdhury"></s:param>
	</s:url>
	
	<h1><s:out value="${myurl}"></s:out></h1>
	
	<!-- <s:redirect url="${myurl}"></s:redirect> -->
	

</body>
</html>