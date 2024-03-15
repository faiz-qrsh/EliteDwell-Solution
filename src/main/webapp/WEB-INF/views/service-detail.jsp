<% if(session.getAttribute("nav")==null){ %>
<%@ include file = '/WEB-INF/views/navbar1.jsp' %>
<%}else{ %>
<%@ include file = '/WEB-INF/views/navbar2.jsp' %>
<%}%>

  <!-- ======= Mobile nav toggle button ======= -->
  <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>
  
  <main id="main">
  
    <br><br><br><br>

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center">

                <div class="swiper-slide">
                  <img src="<c:url value='resources/img/slider-5.jpg'/>" alt="">
                </div>

                <div class="swiper-slide">
                  <img src="<c:url value='resources/img/slider-3.jpg'/>" alt="">
                </div>
                
                <div class="swiper-slide">
                  <img src="<c:url value='resources/img/slider-2.jpg'/>" alt="">
                </div>

                <div class="swiper-slide">
                  <img src="<c:url value='resources/img/slider-4.jpg'/>" alt="">
                </div>

                <div class="swiper-slide">
                  <img src="<c:url value='resources/img/slider-5.jpg'/>" alt="">
                </div>

              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="portfolio-info">
              <h3>Project information</h3>
              <ul>
                <li><strong>Category</strong>: Android App</li>
                <li><strong>Client</strong>: SRMS</li>
                <li><strong>Project date</strong>: 25 Sep, 2022</li>
                <li><strong>Project URL</strong>: <a href="https://github.com/faiz-qrsh">https://github.com/faiz-qrsh</a></li>
              </ul>
            </div>
            <div class="portfolio-description">
              <h2>SRMS Grievance App</h2>
              <p>
                The idea is to automate the entire complaint process.</p>
                <p>The system functions to look into the grievances lodged by any individual of the college.</p>
				<p>The system functions to look into the grievances lodged by any individual of the college.</p>
				<p>The system functions to look into the grievances lodged by any individual of the college.</p>
				<form action="book-service" method="post">
					<button class="btn btn-success">Book Now</button> 
				</form>
				<br><br>         
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    
  </footer><!-- End  Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="<c:url value='resources/vendor/aos/aos.js'/>"></script>
  <script src="<c:url value='resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>" ></script>
  <script src="<c:url value='resources/vendor/glightbox/js/glightbox.min.js'/>"></script>
  <script src="<c:url value='resources/vendor/isotope-layout/isotope.pkgd.min.js'/>"></script>
  <script src="<c:url value='resources/vendor/swiper/swiper-bundle.min.js'/>"></script>
  <script src="<c:url value='resources/vendor/typed.js/typed.umd.js'/>"></script>
  <script src="<c:url value='resources/vendor/php-email-form/validate.js'/>"></script>

  <!-- Template Main JS File -->
  <script src="<c:url value='resources/js/main.js'/>"></script>

</body>

</html>