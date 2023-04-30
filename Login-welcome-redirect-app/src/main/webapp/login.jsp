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

<title>Form | SC</title>

<style>
.my-alert-msg {
	color: red;
	/* display: none; */
}
</style>
</head>

<body>



	<div class="container my-2">
		<h1 class="alert-danger text-center">Login now</h1>
		<form action="login" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					Username</label> <input type="text" name="username" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
				<div id="check-email" class="my-alert-msg"></div>
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password</label>
				<input type="password" name="password" class="form-control"
					id="exampleInputPassword1">
				<div id="check-password" class="my-alert-msg"></div>
			</div>
			<button type="submit" class="btn btn-primary" id="login-suv">Submit</button>
		</form>

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
	$(document).ready(
			function() {
				// console.log("redy...");

				$("#exampleInputEmail1").keyup(
						function() {
							let username = $(this).val();
							if (username.length >= 8) {
								// console.log(username);
								$("#check-email").text("OK !").css("color",
										"green");
							} else {
								$("#check-email")
										.text("Requeried length >= 8 ").css(
												"color", "red");
							}
						});

				$("#exampleInputPassword1").keyup(
						function() {
							let password = $(this).val();
							if (password.length >= 8) {
								// console.log(username);
								$("#check-password").text("OK !").css("color",
										"green");
							} else {
								$("#check-password").text(
										"Requeried length >= 8 ").css("color",
										"red");
							}
						});

				$("#login-suv").click(
						function(e) {
							//e.preventDefault();
							// console.log("Click..")
							
							let uname = false;
							let pass = false;

							let username = $("#exampleInputEmail1").val();
							let password = $("#exampleInputPassword1").val();

							if (username == '') {
								$("#check-email").text(
										"This field is required.").css("color",
										"red");
								e.preventDefault();
							}

							if (password == '') {
								$("#check-password").text(
										"This field is required.").css("color",
										"red");
								e.preventDefault();
							}
							
							
							
							
							

							// else if (username == '' && password == '') {
							//     $("#check-email").text("This field is required.").css("color", "red");
							//     $("#check-password").text("This field is required.").css("color", "red");
							// }

						});

			});
</script>

</html>