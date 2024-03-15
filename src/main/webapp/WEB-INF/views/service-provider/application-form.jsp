<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Apply for Job</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<c:url value='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>">
<script
	src="<c:url value='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'/>">
</script>
<script
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js'/>">
</script>
<script
	src="<c:url value='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'/>">
</script>

<!-- Vendor CSS Files -->
<link href="<c:url value='../resources/vendor/aos/aos.css'/>" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="<c:url value='../resources/css/style.css'/>" rel="stylesheet">

</head>
<body
	style='padding: 1rem 0 0 0; background-image: url("<c:url value='../resources/img/services-bg1.jpg'/>")'>
	<h2 class="text-success text-center font-italic">
		We're Hirirng <u class="typed"
			data-typed-items="Mechanics, Plumbers, Carpenters, Electricians"></u>
	</h2>
	<h3 class="text-center text-dark" data-aos="fade-up">Apply Now</h3>

	<div class="container" data-aos="fade-up">
		<div class="row mx-0 justify-content-center">
			<div class="col-md-7 col-lg-5 px-lg-2 col-xl-7 px-xl-0 px-xxl-3">
				<form method="POST" class="w-100 rounded-1 p-4 border bg-white"
					action="job-application" 
					style="background-color: white;">

					<label class="d-block mb-4"> <span
						class="form-label d-block mb-2">Your Name*</span> <input required
						name="name" type="text" class="form-control"
						placeholder="Joe Bloggs" />
					</label> <label class="d-block mb-4"> <span
						class="form-label d-block mb-2">Phone Number*</span> <input 
						name="phoneNum" type="Number" class="form-control mb-4"
						placeholder="XXXXX-XXXXX" required/>
					</label> <label class="d-block mb-2"> <span
						class="form-label d-block ">Gender*</span>
					</label>
					<div class="form-check form-check-inline">
						<input required class="form-check-input" type="radio"
							name="gender" id="inlineRadio1" value="male">
						<label class="form-check-label" for="inlineRadio1">Male</label>
					</div>
					<div class="form-check form-check-inline mb-4">
						<input class="form-check-input" type="radio"
							name="gender" id="inlineRadio2" value="female">
						<label class="form-check-label" for="inlineRadio2">Female</label>
					</div>
					</label> <label class="d-block mb-4"> <span
						class="form-label d-block mb-2">Role for which you're
							Applying*</span> <select name="role"
						class="form-select form-control" required>
							<option>Select Role</option>
							<option>Electrician</option>
							<option>Painter</option>
							<option>Carpenter</option>
							<option>Plumber</option>
							<option>Mechanic</option>
					</select>
					</label> <label class="d-block mb-4"> <span
						class="form-label d-block mb-2">Years of experience*</span> <select
						name="experience" class="form-select form-control" required>
							<option value="0">Less than a year</option>
							<option value="2">1 - 2 years</option>
							<option value="4">2 - 4 years</option>
							<option value="7">4 - 7 years</option>
							<option value="10">7 - 10 years</option>
							<option value="100">10+ years</option>
					</select>
					</label> <label class="d-block mb-2"> <span
						class="form-label d-block ">Job Type*</span>
					</label>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="jobType" id="inlineRadio1" value="full-time"
							name="jobType" required> <label class="form-check-label"
							for="inlineRadio1">Full Time</label>
					</div>
					<div class="form-check form-check-inline mb-4">
						<input class="form-check-input" type="radio"
							name="jobType" id="inlineRadio2" value="part-time"
							name="jobType"> <label class="form-check-label"
							for="inlineRadio2">Part Time</label>
					</div>
					<label class="d-block mb-4"> <span
						class="form-label d-block mb-2">Tell us more about yourself</span>
						<textarea name="about" class="form-control" rows="3"
							placeholder="What motivates you?"></textarea>
					</label>
					<div class="custom-file mb-4">
						<input type="file" class="custom-file-input" > <label
							class="custom-file-label">Upload your Photo...</label>
					</div>
					<div class="mb-2 text-center">
						<button type="submit"
							class="btn btn-success px-3 rounded-3 btn-center">Apply</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<br>
	<br>
	<footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="copyright">
            &copy; Copyright <strong>E-Home Services</strong>. All Rights Reserved
          </div>
          
        </div>
      </div>
    </div>
  </footer><!-- End Footer -->
  
  <!-- Vendor JS Files -->
  <script src="<c:url value='../resources/vendor/aos/aos.js'/>"></script>
  <script src="<c:url value='../resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>" ></script>
  <script src="<c:url value='../resources/vendor/glightbox/js/glightbox.min.js'/>"></script>
  <script src="<c:url value='../resources/vendor/isotope-layout/isotope.pkgd.min.js'/>"></script>
  <script src="<c:url value='../resources/vendor/swiper/swiper-bundle.min.js'/>"></script>
  <script src="<c:url value='../resources/vendor/typed.js/typed.umd.js'/>"></script>
  <script src="<c:url value='../resources/vendor/php-email-form/validate.js'/>"></script>

  <!-- Template Main JS File -->
  <script src="<c:url value='../resources/js/main.js'/>"></script>
	
</body>
</html>