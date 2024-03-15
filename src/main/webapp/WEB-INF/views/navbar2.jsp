<%@page import="com.services.home.entities.User"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>EliteDwell Solution</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- FaceBook OpenGraph integration: https://developers.facebook.com/docs/sharing/opengraph -->
  <meta property="og:title" content="">
  <meta property="og:image" content="">
  <meta property="og:url" content="">
  <meta property="og:site_name" content="">
  <meta property="og:description" content="">

  <!-- Twitter Cards integration: https://dev.twitter.com/cards/  -->
  <meta name="twitter:card" content="summary">
  <meta name="twitter:site" content="">
  <meta name="twitter:title" content="">
  <meta name="twitter:description" content="">
  <meta name="twitter:image" content="">



  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,1,0" />
    

  <!-- Vendor CSS Files -->
  <link href="<c:url value='resources/vendor/aos/aos.css'/>" rel="stylesheet">
  <link href="<c:url value='resources/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
  <link href="<c:url value='resources/vendor/bootstrap-icons/bootstrap-icons.css'/>" rel="stylesheet">
  <link href="<c:url value='resources/vendor/glightbox/css/glightbox.min.css'/>" rel="stylesheet">
  <link href="<c:url value='resources/vendor/swiper/swiper-bundle.min.css'/>" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <a href="index.html" class="logo mr-auto"><img src="<c:url value='resources/img/home-care-solution1.jpg'/>" alt=""></a>
      <!-- Uncomment below if you prefer to use a text logo --><!-- 
      <h1 class="logo mr-auto"><a href="index.html">E Home Services</a></h1> -->
      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link " href="my-bookings">My Bookings</a></li>
          
          <li class="dropdown"><a href="#"><span>Services</span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>

							<li class="dropdown"><a href="#"><span>Cleansing</span>
									<i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Maid Service</a></li>
									<li><a href="#">Home Cleaning</a></li>
									<li><a href="#">Appartment Cleaning</a></li>
									<li><a href="#">Office Cleaning</a></li>
									<li><a href="#">Move-in Cleaning</a></li>
									<li><a href="#">Move-out Cleaning</a></li>
									<li><a href="#">Sofa Cleaning</a></li>
									<li><a href="#">Car Wash</a></li>
								</ul></li>

							<li class="dropdown"><a href="#"><span>Electrical</span>
									<i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Outlet Installation</a></li>
									<li><a href="#">Ceiling & Bath Fans</a></li>
									<li><a href="#">Light Switch Installation</a></li>
									<li><a href="#">Light Fixtures</a></li>
									<li><a href="#">Hiding Electrical Wires</a></li>
									<li><a href="#">General Electrical Service</a></li>
								</ul></li>

							<li class="dropdown"><a href="#"><span>Delivery
										Service</span> <i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Grocery Shopping</a></li>
									<li><a href="#">Local Delivery</a></li>
									<li><a href="#">Package Deliver</a></li>
									<li><a href="#">Courier</a></li>
									<li><a href="#">Food Delivery</a></li>
								</ul></li>

							<li class="dropdown"><a href="#"><span>Plumbing</span> <i
									class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Drain Repair</a></li>
									<li><a href="#">Leakage Repair</a></li>
									<li><a href="#">Faucet Installation</a></li>
									<li><a href="#">Faucet Repair</a></li>
									<li><a href="#">Faucet Replacement</a></li>
									<li><a href="#">Sink Replacement</a></li>
									<li><a href="#">Toilet Repair</a></li>
									<li><a href="#">Other Plumbing Services</a></li>
								</ul></li>

							<li class="dropdown"><a href="#"><span>General
										Handyman</span> <i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Air Conditioner Installation</a></li>
									<li><a href="#">Air Conditioner Uninstall</a></li>
									<li><a href="#">General Repairs</a></li>
									<li><a href="#">Handy Helper</a></li>
									<li><a href="#">Hemlock Hardware</a></li>
									<li><a href="#">Other Handyman Services</a></li>
								</ul></li>

							<li><a href="#">Pest Control</a></li>

							<li class="dropdown"><a href="#"><span>Painting</span> <i
									class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Baseboard Painting</a></li>
									<li><a href="#">Door Painting</a></li>
									<li><a href="#">Doorframe Painting</a></li>
									<li><a href="#">House Painting</a></li>
									<li><a href="#">Wall Painting</a></li>
									<li><a href="#">Interior Painting</a></li>
									<li><a href="#">Accent Wall Painting</a></li>
								</ul></li>

							<li class="dropdown"><a href="#"><span>Moving</span> <i
									class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">TV Mounting</a></li>
									<li><a href="#">Hanging Pictures</a></li>
									<li><a href="#">Hanging Shelves</a></li>
									<li><a href="#">Tempo Service</a></li>
									<li><a href="#">Assistance in Shifting</a></li>
									<li><a href="#">Other Services</a></li>
								</ul></li>

							<li class="dropdown"><a href="#"><span>Cookery</span> <i
									class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Cook Service</a></li>
									<li><a href="#">Occasional Meal Preparation</a></li>
									<li><a href="#">Three Meals Preparation</a></li>
									<li><a href="#">Two Meals Preparation</a></li>
									<li><a href="#">One time a day</a></li>
								</ul></li>



							<li class="dropdown"><a href="#"><span>Window
										Treatment</span> <i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Window Blind Installation</a></li>
									<li><a href="#">Window Curtain Installation</a></li>
									<li><a href="#">Window Treatments</a></li>
									<li><a href="#">Window Drapery Installation</a></li>
									<li><a href="#">Window Shade Installation</a></li>
									<li><a href="#">Window Net Installation</a></li>
								</ul></li>


							<li class="dropdown"><a href="#"><span>Tailory</span> <i
									class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Women</a></li>
									<li><a href="#">Men</a></li>
									<li><a href="#">Kids></a></li>
								</ul></li>

							<li><a href="#">Carpentry</a></li>

							<li class="dropdown"><a href="#"><span>Home Salon</span>
									<i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Women</a></li>
									<li><a href="#">Men</a></li>
									<li><a href="#">Kids</a></li>
								</ul></li>

							<li class="dropdown"><a href="#"><span>Ironing</span> <i
									class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Simple Iron</a></li>
									<li><a href="#">Steam Iron</a></li>
								</ul></li>

							<li class="dropdown"><a href="#"><span>Dry
										Cleaning</span> <i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Cloth Wash</a></li>
									<li><a href="#">Dry Clean</a></li>
								</ul></li>

							<li><a href="#">Baby Sitting</a></li>
						</ul></li>
						
		<li><a class="nav-link " href="service-provider/application-form">Jobs</a></li>
		
          <li class="nav-item dropdown pe-3">

            <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
              <img src="assets/img/-1.jpg" alt="Profile" class="rounded-circle">
              <span class="d-none d-md-block dropdown-toggle ps-2"><%=session.getAttribute("user") %></span>
            </a><!-- End Profile Iamge Icon -->
  
            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
              <li class="dropdown-header">
                <h6>${user.getEmail()}</h6>
                <span>Web Designer</span>
              </li>
              <li>
                <hr class="dropdown-divider">
              </li>
  
              <li>
                <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                  <i class="bi bi-person"></i>
                  <span>My Profile</span>
                </a>
              </li>
              <li>
                <hr class="dropdown-divider">
              </li>
  
              <li>
                <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                  <i class="bi bi-gear"></i>
                  <span>Account Settings</span>
                </a>
              </li>
              <li>
                <hr class="dropdown-divider">
              </li>
  
              <li>
                <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                  <i class="bi bi-question-circle"></i>
                  <span>Need Help?</span>
                </a>
              </li>
              <li>
                <hr class="dropdown-divider">
              </li>
  
              <li>
                <a class="dropdown-item d-flex align-items-center" href="sign-out">
                  <i class="bi bi-box-arrow-right"></i>
                  <span>Sign Out</span>
                </a>
              </li>
  
            </ul><!-- End Profile Dropdown Items -->
          </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
