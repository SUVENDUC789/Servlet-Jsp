<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<%
	HttpSession hs = request.getSession();
	String name = (String) hs.getAttribute("name");
	//out.print(name);
	if (name != null) {
		response.sendRedirect("home.jsp");
	}
	%>

	<center>
		<div>
			<h1>Login now</h1>
			<form action="Login" method="post">
				<input type="text" name="name" placeholder="Enter your name"><br>
				<input type="email" name="email" placeholder="Enter your email"><br>
				<input type="password" name="password"
					placeholder="Enter your password"><br>
				<button>Login</button>
			</form>
		</div>
	</center>

</body>
</html>