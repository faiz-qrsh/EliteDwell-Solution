<%if (session.getAttribute("nav") == null) {%>
<%@ include file='/WEB-INF/views/navbar1.jsp'%>
<%} else {%>
<%@ include file='/WEB-INF/views/navbar2.jsp'%>
<%}%>
<!-- ======= Hero Section ======= -->
<section id="hero">
	<div class="hero-container">
		<div data-aos="fade-up">
			<div class="hero-logo">
				<img class=""
					src="<c:url value='resources/img/logo-try1.jpg'/>"
					alt="Imperial">
			</div>
			<h1>Welcome to EliteDwell Solution</h1>
			<h2>We help with <span class="typed" data-typed-items="Cleansing, Electical issues, Leaky pipes, General handyman support, Painting walls, Tailory, Cookery, Many services"></span></h2>
			<div class="actions">
				<a href="#about" class="btn-get-started">Get App</a> <a
					href="#services" class="btn-services nav-link scrollto">Our
					Services</a>
			</div>
		</div>
	</div>
</section>

<main id="main">

<!-- ======= ChatBox Section ======= -->
	<button class="chatbot-toggler">
      <span class="material-symbols-rounded">mode_comment</span>
      <span class="material-symbols-outlined">close</span>
    </button>
    <div class="chatbot">
      <header>
        <h2>Chatbot</h2>
        <span class="close-btn material-symbols-outlined">close</span>
      </header>
      <ul class="chatbox">
        <li class="chat incoming">
          <span class="material-symbols-outlined">smart_toy</span>
          <p>Hi there&#128075;<br>How can I help you today?</p>
        </li>
      </ul>
      <div class="chat-input">
        <textarea placeholder="Enter a message..." spellcheck="false" required></textarea>
        <span id="send-btn" class="material-symbols-rounded">send</span>
      </div>
    </div>


<!-- ======= Services Section ======= -->
	<section id="services">
      <div class="container">
        <div class="row" data-aos="fade-up">
          <div class="col-md-12">
            <h3 class="section-title">Our Services</h3>
            <div class="section-title-divider"></div>
            <p class="section-description">Pick a service to get started.</p>
          </div>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="200">
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-trash"></i></div>
            <h4 class="service-title"><a href="service/1">Cleaning</a></h4>
            <p class="service-description">Maid Service, Full House Cleaning, Sofa Cleaning, Deep Cleaning, One Day - Kitchen, Bathroom, Bedroom, Living Room.</p>
          </div>

          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-wrench-adjustable"></i></div>
            <h4 class="service-title"><a href="service/2">Plumbing</a></h4>
            <p class="service-description">Drain Repair, Faucet Installation, Faucet Repair, Faucet Replacement, Sink Replacement, Toilet Repair, Plumbing Service.</p>
          </div>

          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-paint-bucket"></i></div>
            <h4 class="service-title"><a href="service/3">Painting</a></h4>
            <p class="service-description">Baseboard Painting, Door Painting, Doorframe Painting, House Painting, Wall Painting, Interior Painting, Accent Wall Painting.</p>
          </div>

          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-lightning-charge"></i></div>
            <h4 class="service-title"><a href="service/4">Electrical</a></h4>
            <p class="service-description">Ceiling Fans, Light Switch Installation, Outlet Installation, Light Fixtures, Electrical Service.</p>
          </div>

          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-tools"></i></div>
            <h4 class="service-title"><a href="service/5">Carpentry</a></h4>
            <p class="service-description">Custom Furniture, Cabinetry, Doors and Windows, Flooring, Decking and Fencing, Structural Repairs.</p>
          </div>

          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-send"></i></div>
            <h4 class="service-title"><a href="service/6">Delivery Service</a></h4>
            <p class="service-description">Package delivery, Grocery Shopping, Food delivery, Courier, Post, Local Deliver Service.</p>
          </div>
          
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-truck"></i></div>
            <h4 class="service-title"><a href="service/7">Moving</a></h4>
            <p class="service-description">Moving Help, TV Mounting, Hanging Pictures & Shelves, Tempo Service.</p>
          </div>
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-cup-hot"></i></div>
            <h4 class="service-title"><a href="service/8">Cookery</a></h4>
            <p class="service-description">Occasional meal preparation, Three meals, Two meals, One time a day.</p>
          </div>

          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-water"></i></div>
            <h4 class="service-title"><a href="service/9">Ironing</a></h4>
            <p class="service-description">Steam Ironing, Cloth Ironing, Linens & Bedding, Household Fabrics.</p>
          </div>

          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-windows"></i></div>
            <h4 class="service-title"><a href="service/10">Window Treatment</a></h4>
            <p class="service-description">Window Blind/Curtain Installation, Window Treatments, Window Drapery/Shade Installation.</p>
          </div>
          
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-scissors"></i></div>
            <h4 class="service-title"><a href="service/11">Tailor</a></h4>
            <p class="service-description">Custom Tailoring, Alterations, Repairs, Restyling, Bridal & Formalwear, Uniform Tailoring.</p>
          </div>

          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-droplet-half"></i></div>
            <h4 class="service-title"><a href="service/12">Dry Cleaning</a></h4>
            <p class="service-description">Dry Cleaning and Stain Removal for delicate fabrics & garments with intricate designs.</p>
          </div>

          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-emoji-laughing"></i></div>
            <h4 class="service-title"><a href="service/13">Home Salon</a></h4>
            <p class="service-description">Hair Services, Skincare, Nail Care, Makeup Services, Grooming Services for Men, Bridal & Event Packages, Massage & Spa Treatements.</p>
          </div>
        
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-person-gear"></i></div>
            <h4 class="service-title"><a href="service/14">General Handyman</a></h4>
            <p class="service-description">Air Conditioner Installation/Uninstall, Gerenal Repairs, Handy Helper, Hemlock Hardware: Knobs/Locks Installation, Handyman Service.</p>
          </div>  
          
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-activity"></i></div>
            <h4 class="service-title"><a href="service/15">Yoga/Exercise</a></h4>
            <p class="service-description">Certified yoga instructors or personal trainers who come to your home to conduct private or group sessions.</p>
          </div>
			</div>
		</div>
	</section>
	<!-- End Services Section -->

	<!-- ======= About Section ======= -->
	<section id="about">
      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="col-md-12">
            <h3 class="section-title">About Us</h3>
            <div class="section-title-divider"></div>
            <p class="section-description">Integrated Home Services is the smart way to get things done, by connecting you with the right person.</p>
          </div>
        </div>
      </div>
      <div class="container about-container" data-aos="fade-up" data-aos-delay="200">
        <div class="row">

          <div class="col-lg-6 about-img">
            <img src="<c:url value='resources/img/services-bg1.jpg'/>" alt="">
          </div>

          <div class="col-md-6 about-content">
            <h2 class="about-title">We provide great services and support</h2>
            <p class="about-text">
              This is the platform for connecting individuals looking for household services with top-quality, pre-screened independent service professionals. From home cleaning to handyman services, we instantly matches thousands of customers every week with top-rated professionals in various cities.
            </p>
            <p class="about-text">
              We promise our customers a high quality, standardised and reliable service experience. Just tell us what you need done and we connect you to qualified Taskers available to help. E-Home Services helps you live smarter, giving you more time to focus on what’s most important.
            </p>
            <p class="about-text">
              To fulfill this promise, we work closely with our hand-picked service partners, enabling them with technology, training, products, tools, financing, insurance and brand, helping them succeed and deliver on this promise.
            </p>
          </div>
        </div>
      </div>
    </section>
	<!-- End About Section -->


	<!-- ======= Subscrbe Section ======= -->
	<section id="subscribe">
		<div class="container" data-aos="fade-up">
			<div class="row">
				<div class="col-md-8">
					<h3 class="subscribe-title">Get App</h3>
					<p class="subscribe-text">Choose your native platform and get
						started!</p>
				</div>
				<div class="col-md-4 subscribe-btn-container">
					<a class="subscribe-btn" href="#">Download for Android</a>
				</div>
			</div>
		</div>
	</section>
	<!-- End Subscrbe Section -->


<!-- ======= Workflow Section ======= -->
	<section id="testimonials">
		<div class="container" data-aos="fade-up">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-title">Our Workflow</h3>
					<div class="section-title-divider"></div>
					<p class="section-description">Enjoy Your Required Service At 3
						Steps Ahead</p>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<div class="profile">
						<div class="pic">
							<img src="<c:url value='resources/img/workflow/step1.webp'/>" alt="">
						</div>
						<h4>Step 1</h4>
						<span>Schedule Your Service</span>
					</div>
				</div>
				<div class="col-md-9" data-aos="fade-left">
					<div class="quote">
						<b>Fill Credential, Book Service & Relax</b>
						<p>Enter your details effortlessly, book the service you need, and then sit back and relax. Enjoy hassle-free service booking and indulge in moments of peace while we handle the task at hand. Your comfort starts with filling credentials – let the relaxation begin.</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-9" data-aos="fade-right">
					<div class="quote">
						<b>Keep Calm, We Will Serve At Your Door</b>
						<p>No need to stress, we've got you covered. Stay relaxed in the comfort of your home, let us handle the rest bring our top-notch service to your doorstep. </p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="profile">
						<div class="pic">
							<img src="<c:url value='resources/img/workflow/step2.jpg'/>" alt="">
						</div>
						<h4>Step 2</h4>
						<span>Service At Your Home</span>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<div class="profile">
						<div class="pic">
							<img src="<c:url value='resources/img/workflow/step3.png'/>" alt="">
						</div>
						<h4>Step 3</h4>
						<span>Pay After Service</span>
					</div>
				</div>
				<div class="col-md-9" data-aos="fade-left">
					<div class="quote">
						<b>Make Payment After Job Get Done</b>
						<p>Experience worry-free transactions with our service. Pay only after your job is completed to your satisfaction. Our commitment is to deliver quality, and your peace of mind is our priority. You're in control, ensuring payment only when you're fully content with the results.</p>
					</div>
				</div>
			</div>

		</div>
	</section>
<!-- End Workflow Section -->
	
<!-- ======= Partner with us Section ======= -->
	<section id="testimonials">
		<div class="container" data-aos="fade-up">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-title">Partner with Us</h3>
					<div class="section-title-divider"></div>
					<p class="section-description">Join our team and become a valued home service provider! We're looking for skilled professionals to cater to the diverse needs of our clients. Whether you're a handyman, a cleaning expert, a technician, or offer any other home services, we welcome you to apply.</p>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<div class="profile">
						<div class="pic">
							<img src="<c:url value='resources/img/partner-with-us/partner_step1.png'/>" alt="">
						</div>
						<h4>Step 1</h4>
						<span>Initiate Your Journey with Us</span>
					</div>
				</div>
				<div class="col-md-9" data-aos="fade-left">
					<div class="quote">
						<b>Application Form Submission</b>
						<p>Begin by completing our comprehensive application form, providing essential details to kickstart your application process.</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-9" data-aos="fade-right">
					<div class="quote">
						<b>Showcase Your Expertise and Availability</b>
						<p>Upload your work experience along with your preferred time slots for seamless coordination. Help us understand how your skills align with our opportunities.</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="profile">
						<div class="pic">
							<img src="<c:url value='resources/img/partner-with-us/partner_step2.jpeg'/>" alt="">
						</div>
						<h4>Step 2</h4>
						<span>Highlight Your Skills and Availability</span>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<div class="profile">
						<div class="pic">
							<img src="<c:url value='resources/img/partner-with-us/partner_step3.webp'/>" alt="">
						</div>
						<h4>Step 3</h4>
						<span>Application Confirmation Call</span>
					</div>
				</div>
				<div class="col-md-9" data-aos="fade-left">
					<div class="quote">
						<b>Stay Connected - Application Confirmation</b>
						<p>Expect a call from our team to discuss your application and confirm its status. We appreciate your interest and look forward to further exploring your potential contribution to our team.</p>
					</div>
				</div>
			</div>

		</div>
	</section>
<!-- End Partner with us Section -->

	<!-- ======= Team Section ======= -->
	<section id="team">
		<div class="container" data-aos="fade-up">
			<div class="row">
				<div class="col-md-12">
					<h3 class="section-title">Our Team</h3>
					<div class="section-title-divider"></div>
					<p class="section-description">Sed ut perspiciatis unde omnis
						iste natus error sit voluptatem accusantium doloremque</p>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<div class="member">
						<div class="pic">
							<img src="<c:url value='resources/img/team/team-1.jpg'/>" alt="">
						</div>
						<h4>Walter White</h4>
						<span>Chief Executive Officer</span>
						<div class="social">
							<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
								class="bi bi-facebook"></i></a> <a href=""><i
								class="bi bi-instagram"></i></a> <a href=""><i
								class="bi bi-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="member">
						<div class="pic">
							<img src="<c:url value='resources/img/team/team-2.jpg'/>" alt="">
						</div>
						<h4>Sarah Jhinson</h4>
						<span>Product Manager</span>
						<div class="social">
							<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
								class="bi bi-facebook"></i></a> <a href=""><i
								class="bi bi-instagram"></i></a> <a href=""><i
								class="bi bi-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="member">
						<div class="pic">
							<img src="<c:url value='resources/img/team/team-3.jpg'/>" alt="">
						</div>
						<h4>William Anderson</h4>
						<span>CTO</span>
						<div class="social">
							<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
								class="bi bi-facebook"></i></a> <a href=""><i
								class="bi bi-instagram"></i></a> <a href=""><i
								class="bi bi-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="member">
						<div class="pic">
							<img src="<c:url value='resources/img/team/team-4.jpg'/>" alt="">
						</div>
						<h4>Amanda Jepson</h4>
						<span>Accountant</span>
						<div class="social">
							<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
								class="bi bi-facebook"></i></a> <a href=""><i
								class="bi bi-instagram"></i></a> <a href=""><i
								class="bi bi-linkedin"></i></a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- End Team Section -->


</main>
<!-- End #main -->
<%@ include file="/WEB-INF/views/footer.jsp"%>