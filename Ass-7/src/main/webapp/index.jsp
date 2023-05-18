
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

<title>digital calculator that performs addition, subtraction</title>
</head>
<body>

	<div class="container my-5">
		<h1 class="text-center alert-danger">Digital Calculator</h1>
		<form action="operation.jsp" method="post">
			<div class="mb-3">
				<label for="first-number" class="form-label">First Number</label> <input
					type="text" class="form-control" id="first-number"
					aria-describedby="first-number" name="fn">
				<div id="first-number-msg" class="form-text"></div>
			</div>
			
			<select name="as" class="form-select mb-3" aria-label="Default select example" id="digital-op">
				<option selected value="add">Add</option>
				<option value="sub">Sub</option>
			</select>

			<select name="op" class="form-select mb-3" aria-label="Default select example" id="digital-op">
				<option selected value="decimal">decimal</option>
				<option value="binary">binary</option>
				<option value="octal">octal</option>
				<option value="hexadecimal">hexadecimal</option>
			</select>


			<div class="mb-3">
				<label for="second-number" class="form-label">Second Number</label>
				<input type="text" class="form-control" id="second-number"
					aria-describedby="second-number" name="sn">
				<div id="second-number-msg" class="form-text"></div>
			</div>
			<button type="submit" class="btn btn-primary">Perform
				Operation</button>
				
			<div class="final-result"></div>
		</form>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>


</html>