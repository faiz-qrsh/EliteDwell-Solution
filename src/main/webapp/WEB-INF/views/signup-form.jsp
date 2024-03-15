<%@page import="org.springframework.ui.Model"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Create an Account</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<link
	href="<c:url value='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'/>"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
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
			<% String error=(String)request.getAttribute("error");
			if(error!=null){%>
			<p style="color:red;"><%=error %></p>
			<%} %>
			<h5>Sign Up</h5>
			<p>
				Already have an account? <a href="login-form">Sign In</a> it takes
				less than a minute
			</p>
			<form action="signup-data" method="post">
				<div class="inputs">
					<input type="email" placeholder="Email" name="email" required>
					<br> <input type="number" placeholder="Mobile Number" min="9"
						name="mobNumber" required> <br> <input
						type="password" placeholder="Password" name="password" required>
				</div>
				<br> <br>
				<div class="remember-me--forget-password">
					<label> <input type="checkbox" name="item" checked>
						<span class="text-checkbox">Remember me</span>
					</label>
					<p>forget password?</p>
				</div>
				<br>
				<button>Create Account</button>
			</form>

		</div>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>