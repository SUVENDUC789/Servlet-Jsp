<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Table | SC</title>


</head>

<body>

	

	<div class="container my-3">
		<h1 class="alert-success text-center">Pharmacy bill</h1>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">bill no</th>
					<th scope="col">bill date</th>
					<th scope="col">Patient name</th>
					<th scope="col">Doctor's name</th>
					<th scope="col">Name of medicine</th>
					<th scope="col">Expiry date</th>
					<th scope="col">Price</th>
					<th scope="col">GST</th>
					<th scope="col">Total ammount</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%=request.getParameter("bno")%></td>
					<td><%=request.getParameter("b-date")%></td>
					<td><%=request.getParameter("p-name")%></td>
					<td><%=request.getParameter("d-name")%></td>
					<td><%=request.getParameter("nom0")%></td>
					<td><%=request.getParameter("exp-date0")%></td>
					<td><%=request.getParameter("price0")%></td>
					<td>18%</td>
					<td>
						<%
						double medammount = Double.parseDouble(request.getParameter("price0"));
						double tax = (medammount * 18) / 100;
						out.print(medammount + tax);
						%>
					</td>
				</tr>

			</tbody>
		</table>
		 <a href="index.jsp" class="btn btn-success">Go To Home</a>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>

<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous"></script>

<script>
	$(document).ready(function() {

	});
</script>

</html>