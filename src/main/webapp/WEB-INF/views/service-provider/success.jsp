<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="7;url=../index.jsp">
<title>Booking Confirmed</title>
</head>
<body oncontextmenu='return false' class='snippet-body'>
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<link href="<c:url value='../../resources/css/success.css'/>" rel="stylesheet">
	<!-- Modal HTML -->
	<div id="myModal" class="box">
		<div class="modal-dialog modal-confirm">
			<div class="modal-content">
				<div class="modal-header">
					<div class="icon-box">
						<i class="material-icons">&#xE876;</i>
					</div>
					<h4 class="modal-title w-100">Awesome!</h4>
				</div>
				<div class="modal-body">
					<p class="text-center">Your booking has been confirmed. Check
						your email for detials.</p>
				</div>
				<div class="modal-footer">
					<button class="btn btn-success btn-block" data-dismiss="modal">OKAY</button>
				</div>
			</div>
		</div>
		<p class="text-center ">You will be automatically redirected to the home page shortly. If not,  <a href="../index.jsp"><u>Click here</u></a>.</p>
	</div>
	<script type='text/javascript'></script>
</body>
</html>
</html>