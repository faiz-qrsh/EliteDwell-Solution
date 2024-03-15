<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Admin Dashboard | Home Services </title>
    <link rel="stylesheet" href="<c:url value='../resources/css/admin-dashboard.css'/>">
    <!-- Boxicons CDN Link -->
    <link href="<c:url value='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'/>" rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">Home Care</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="dashboard" class="active" id="dashboard">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="services" id="services">
            <i class='bx bx-box' ></i>
            <span class="links_name">Services</span>
          </a>
        </li>
        <li>
          <a href="bookings" id="bookings">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Booking</span>
          </a>
        </li>
        <li>
          <a href="service-providers">
            <i class='bx bx-user' ></i>
            <span class="links_name">Service Providers</span>
          </a>
        </li>
        <li>
          <a href="pending" id="pending">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Pending</span>
          </a>
        </li>
        <li>
          <a href="customers" id="customers">
            <i class='bx bx-user' ></i>
            <span class="links_name">Customers</span>
          </a>
        </li>
        <li>
          <a href="applications" id="applications">
            <i class='bx bx-user' ></i>
            <span class="links_name">Job Applications</span>
          </a>
        </li>
        
        <li>
          <a href="#">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Analytics</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-coin-stack' ></i>
            <span class="links_name">Database</span>
          </a>
        </li>

        
        <li class="log_out">
          <a href="#">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
      </div>
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>
    </nav>