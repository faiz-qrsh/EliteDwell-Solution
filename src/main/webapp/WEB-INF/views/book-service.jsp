<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Book Your Service</title>
<link
	href="<c:url value='https://fonts.googleapis.com/css?family=Open+Sans'/>"
	rel="stylesheet">
<link
	href="<c:url value='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'/>"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<!-- Vendor CSS Files -->
<link href="<c:url value='resources/vendor/aos/aos.css'/>"
	rel="stylesheet">

<link href="<c:url value='resources/css/login.css'/>" rel="stylesheet">

</head>
<body>
	<div class="box-form" data-aos="fade-left">
		<div class="left">
			<div class="overlay">
			<button onclick="history.back()" ><b>&#8592;</b></button>
				<h1>E Home Services</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Curabitur et est sed felis aliquet sollicitudin</p>
			</div>
		</div>
		<div class="right">
			<h2>Book Your Service</h2>
			<form action="booking-data" method="post">
				<div class="inputs"  >
					<input type="text" placeholder="Address" name="address" required><br>
					<input type="text" placeholder="City" name="city" required>
					<input type="number" placeholder="PIN" name="pin" required>
					<select name="service" name="service" required>
							<option>Select Service</option>
							<option>Electrician</option>
							<option>Painter</option>
							<option>Carpenter</option>
							<option>Plumber</option>
							<option>Mechanic</option>
					</select>
					<input type="date" placeholder="dd-mm-yyyy" name="date" required>
					<input type="time" placeholder="hh:mm" name="time" required>
				</div>
				<br> <br>
				<div class="remember-me--forget-password">
					<label> <input type="checkbox" name="item" checked /> <span
						class="text-checkbox">I accept Terms & Conditions</span>
					</label>
				</div>
				<br>
				<button>Book</button>
			</form>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>