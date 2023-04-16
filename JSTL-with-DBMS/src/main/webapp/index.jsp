<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>How to Access Database using Tag | JSTL SQL Tags |
	Servlet & JSP</title>
</head>
<body>

	<h1>How to Access Database using Tag | JSTL SQL Tags | Servlet &
		JSP</h1>

	<sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/test" user="root" password=""
		var="connection" />
	<s:out value="${connection}"></s:out>

	<sql:query var="rs" dataSource="${connection}">SELECT * FROM `students`</sql:query>

	<s:out value="${rs}"></s:out>

	<table border="1px solid black">
		<tr>
			<th>Sl</th>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
		
		<s:forEach items="${rs.rows}"  var="row">
			<tr>
				<td> <s:out value="${row.sl}"></s:out> </td>
				<td> <s:out value="${row.first_name}"></s:out></td>
				<td> <s:out value="${row.last_name}"></s:out> </td>
			</tr>
		</s:forEach>
	</table>
</body>
</html>