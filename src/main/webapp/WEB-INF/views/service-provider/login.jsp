<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login | Service Provider</title>
<link
	href="<c:url value='https://fonts.googleapis.com/css?family=Open+Sans'/>"
	rel="stylesheet">
<link
	href="<c:url value='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'/>"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<!-- Vendor CSS Files -->
<link href="<c:url value='../resources/vendor/aos/aos.css'/>"
	rel="stylesheet">

<link href="<c:url value='../resources/css/login.css'/>"
	rel="stylesheet">

</head>
<body style="padding-top: 75px;">
	<div class="box-form" data-aos="fade-left">

		<div class="left">
			<div class="overlay">

				<h1>E Home Services</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Curabitur et est sed felis aliquet sollicitudin</p>
			</div>
		</div>
		<div class="right">
			<p style="color: red;"></p>
			<h4>Service Provider Login</h4>
			<form action="login-data" method="post">
				<div class="inputs">
					<input type="text" placeholder="Mobile Number" name="number"
						required><br> <input type="password"
						placeholder="Password" name="password" required>
				</div>
				<br> <br>
				<div class="remember-me--forget-password">
					<label> <input type="checkbox" name="item" checked /> <span
						class="text-checkbox">Remember me</span>
					</label>
					<!--<p>forget password?</p>!-->
				</div>
				<br>
				<button>Login</button>
			</form>
		</div>
	</div>
	<script src="<c:url value='../resources/vendor/aos/aos.js'/>"></script>
	<script
		src="<c:url value='../resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<script
		src="<c:url value='../resources/vendor/glightbox/js/glightbox.min.js'/>"></script>
	<script
		src="<c:url value='../resources/vendor/isotope-layout/isotope.pkgd.min.js'/>"></script>
	<script
		src="<c:url value='../resources/vendor/swiper/swiper-bundle.min.js'/>"></script>
	<script
		src="<c:url value='../resources/vendor/typed.js/typed.umd.js'/>"></script>
	<script
		src="<c:url value='../resources/vendor/php-email-form/validate.js'/>"></script>
	<script src="<c:url value='../resources/js/main.js'/>"></script>
</body>
</html>