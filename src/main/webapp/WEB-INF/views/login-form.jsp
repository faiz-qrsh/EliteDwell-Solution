<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login Page</title>
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
				<h1>E Home Services</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Curabitur et est sed felis aliquet sollicitudin</p>
			</div>
		</div>
		<div class="right">
		<% String msg=(String)request.getAttribute("msg");
			if(msg!=null){%>
			<p style="color:red;"><%=msg %></p>
			<%} %>
			<h5>Login</h5>
			<p>
				Don't have an account? <a href="signup-form">Creat Your Account</a>
				it takes less than a minute
			</p>
			<form action="login-data" method="post">
				<div class="inputs">
					<input type="number" placeholder="Mobile Number" name="mobNumber" required><br>
					<input type="password" placeholder="Password" name="password" required>
				</div>
				<br> <br>
				<div class="remember-me--forget-password">
					<label> <input type="checkbox" name="item" checked /> <span
						class="text-checkbox">Remember me</span>
					</label>
					<p>forget password?</p>
				</div>
				<br>
				<button>Login</button>
			</form>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>