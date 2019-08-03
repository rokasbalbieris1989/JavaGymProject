<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Java Gym</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
  </head>
  <body>
  	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="<c:url value="/welcome2" />">Java Gym</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span><i class="fas fa-bars"></i></span>
        </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="<c:url value="/welcome2" />" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="<c:url value="welcome2/programs" />" class="nav-link">Programs</a></li>
	          <li class="nav-item"><a href="pricing.html" class="nav-link">Products</a></li>
            <li class="nav-item"><a href="#contact" class="nav-link">Contact</a></li>
            <li class="nav-item"><a href="<c:url value="/myprofile-${loggedinuser}" />" class="nav-link">My Profile</a></li>
            <li class="nav-item"><a href="<c:url value="/logout" />" class="nav-link">Logout</a></li>
          </ul>
        </div>
        <button id = "shopBag" type="button"><a href="#" class="nav-link"><i class="fas fa-lg fa-shopping-bag"></i></a></button>
		  </div>
	  </nav>
    <!-- END nav -->


    <section class="hero-wrap js-fullheight">
      <div class="overlay" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_2.jpg);" data-stellar-background-ratio="0.5"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-end">
        	<h3 class="v">
        		<a href="https://vimeo.com/45830194" class="popup-vimeo">
        			<div class="icon d-flex justify-content-center align-items-center">
        				<span><i class="fas fa-play"></i></span>
        			</div>
        			<span>Crossfit Workout Harder</span> <br>Watch Our Video</a>
        	</h3>
          <div class="col-md-12 text-center ftco-animate">
            <h1 class="mt-5" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_1.jpg);" data-stellar-background-ratio="0.5">Java<br>Gym</h1>
            <h2>Crossfit. Working Harder</h2>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center mb-5">
          <div class="col-md-10 heading-section text-center ftco-animate">
          
            <h2 class="mb-3">Pricing For Our Programs</h2>
          </div>
        </div>
    		<div class="row">
    			<div class="col-md-4">
    				<div class="pricing-wrap ftco-animate img" style="background-image: url(${pageContext.request.contextPath}/static/images/program-1.jpg);">
    					<div class="title p-4">
    						<h3>Weight Lifting</h3>
    					</div>
    					<div class="text p-4 d-flex align-items-end">
    						<a href="#" class="btn-custom px-4 py-2">Enroll Now</a>
    						<div>
    							<span class="price">$200.00</span>
    							<h3><a href="#">Weight Lifting</a></h3>
    							<p>Challenge your muscles with enough weight, or you won’t stimulate the growth process.</p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-4">
    				<div class="pricing-wrap ftco-animate active img" style="background-image: url(${pageContext.request.contextPath}/static/images/gurl.jpg);">
    					<div class="title p-4">
    						<h3>Crossfit</h3>
    						<span>Behind the word mountains</span>
    					</div>
    					<div class="text p-4 d-flex align-items-end">
    						<a href="#" class="btn-custom px-4 py-2">Enroll Now</a>
    						<div>
    							<span class="price">$240.00</span>
    							<h3><a href="#">Crossfit</a></h3>
    							<p>CrossFit uses safe, effective and efficient movements similar to those you use every day in life.</p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-4">
    				<div class="pricing-wrap ftco-animate img" style="background-image: url(${pageContext.request.contextPath}/static/images/program-3.jpg);">
    					<div class="title p-4">
    						<h3>Cardio</h3>
    					</div>
    					<div class="text p-4 d-flex align-items-end">
    						<a href="#" class="btn-custom px-4 py-2">Enroll Now</a>
    						<div>
    							<span class="price">$180.00</span>
    							<h3><a href="#">Cardio</a></h3>
    							<p>Cardio is an essential component of any workout, whether you want to lose weight, get fit, or just be healthier.</p>
    						</div>
    					</div>
    				</div>
          </div>
          <button type="button"  class="btn btn-primary mx-auto d-block py-3 px-4"><a id="programsBtn" href="#">More Programs</a></button>
    		</div>
    	</div>
    </section>


    <section class="ftco-section ftco-no-pb ftco-no-pt">
    	<div class="container">
    		<div class="row">
    			<div class="col-md-6 img img-2 order-md-last" style='background-image: url(${pageContext.request.contextPath}/static/images/weights1.jpg);'>
    				
    			</div>
    			<div class="col-md-6 py-5">
    				<div class="program d-flex ftco-animate">
							<div class="icon d-flex mr-lg-3 justify-content-center align-items-center order-lg-last">
								<span><i class="fas fa-dumbbell"></i></span>
							</div>
							<div class="text ml-5 mr-lg-4 text-lg-right">
								<h3>Crossfit</h3>
								<p>CrossFit takes all aspects of fitness and sports, cherry picks the best, most effective, and most applicable to everyday life, and combines them together.</p>
							</div>
  					</div>
  					<div class="program d-flex ftco-animate">
							<div class="icon d-flex mr-lg-3 justify-content-center align-items-center order-lg-last">
								<span><i class="fas fa-heartbeat"></i></span>
							</div>
							<div class="text ml-5 mr-lg-4 text-lg-right">
								<h3>Aerobic Classes</h3>
								<p>Aerobics is a system of physical conditioning that increases the efficiency of the body’s intake of oxygen, thereby stimulating the cardiovascular system, developing endurance, and reducing body fat. </p>
							</div>
  					</div>
  					<div class="program d-flex ftco-animate">
							<div class="icon d-flex mr-lg-3 justify-content-center align-items-center order-lg-last">
								<span><i class="fas fa-swimmer"></i></span>
							</div>
							<div class="text ml-5 mr-lg-4 text-lg-right">
								<h3>Conditioning</h3>
								<p>Whether you are aiming to improve your performance in a sport or activity or just want to reap the benefits of physical activity, body conditioning exercises strengthen and improve your body and performance.</p>
							</div>
  					</div>
  					<div class="program d-flex ftco-animate">
							<div class="icon d-flex mr-lg-3 justify-content-center align-items-center order-lg-last">
								<span><i class="fas fa-spa"></i></span>
							</div>
							<div class="text ml-5 mr-lg-4 text-lg-right">
								<h3>Yoga Classes</h3>
								<p>Yoga is most often associated with the physical practice of asanas, particularly stretching exercises to build flexibility and relax the body. Yoga asanas can also build strength, coordination, balance and stamina.</p>
							</div>
  					</div>
  					<div class="program d-flex ftco-animate">
							<div class="icon d-flex mr-lg-3 justify-content-center align-items-center order-lg-last">
								<span><i class="fas fa-running"></i></span>
							</div>
							<div class="text ml-5 mr-lg-4 text-lg-right">
								<h3>Cardio Training</h3>
								<p>Cardio exercise simply means that you're doing a rhythmic activity that raises your heart rate into your target heart rate zone, the zone where you'll burn the most fat and calories. </p>
							</div>
  					</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-counter ftco-bg-dark img" id="section-counter" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_2.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
      <div class="container">
        <div class="row justify-content-center">
        	<div class="col-md-10">
        		<div class="row">
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		              	<strong class="number" data-number="5000">0</strong>
		              	<span>Happy Customers</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		              	<strong class="number" data-number="4560">0</strong>
		              	<span>Perfect Bodies</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		              	<strong class="number" data-number="570">0</strong>
		              	<span>Working Hours</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		              	<strong class="number" data-number="900">0</strong>
		              	<span>Success Stories</span>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center mb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
          
            <h2 class="mb-3">Our Coaches</h2>
            <p>Meet our coaches.</p>
          </div>
        </div>
    		<div class="row no-gutters">
    			<div class="col-lg-6 d-flex">
    				<div class="coach d-sm-flex align-items-stretch">
	    				<div class="img" style="background-image: url(${pageContext.request.contextPath}/static/images/trainer-1.jpg);"></div>
	    				<div class="text py-4 px-5 ftco-animate">
	    					<span class="subheading">Head Coach</span>
	    					<h3><a href="#">Travor James</a></h3>
	    					<p>I help people meet their goals through weight training with a variety of equipment, as well as cardiovascular training. I believe in educating my clients so they can create life long healthy habits in order to maintain their physical health and keep improving.</p>
	    					<ul class="ftco-social-media d-flex mt-4">
	                <li class="ftco-animate"><a href="#" class="mr-2 d-flex justify-content-center align-items-center"><span><i class="fab fa-twitter"></i></span></a></li>
	                <li class="ftco-animate"><a href="#" class="mr-2 d-flex justify-content-center align-items-center"><span><i class="fab fa-facebook-f"></i></span></a></li>
	                <li class="ftco-animate"><a href="#" class="mr-2 d-flex justify-content-center align-items-center"><span><i class="fab fa-instagram"></i></span></a></li>
	              </ul>
	    					<p></p>
	    				</div>
	    			</div>
    			</div>
    			<div class="col-lg-6 d-flex">
    				<div class="coach d-sm-flex align-items-stretch">
	    				<div class="img" style="background-image: url(${pageContext.request.contextPath}/static/images/trainer-2.jpg);"></div>
	    				<div class="text py-4 px-5 ftco-animate">
	    					<span class="subheading">Lead Trainer</span>
	    					<h3><a href="#">Leonard Smith</a></h3>
	    					<p>Experienced certified group fitness instructor. Athlete, passionate about small group training, specializes in teaching and encouraging clients to learn basics and advanced techniques. Skilled in indoor and outdoor cycling techniques, functional fitness, body sculpting, TRX and pilates.</p>
	    					<ul class="ftco-social-media d-flex mt-4">
	                <li class="ftco-animate"><a href="#" class="mr-2 d-flex justify-content-center align-items-center"><span><i class="fab fa-twitter"></i></span></a></li>
	                <li class="ftco-animate"><a href="#" class="mr-2 d-flex justify-content-center align-items-center"><span><i class="fab fa-facebook-f"></i></span></a></li>
	                <li class="ftco-animate"><a href="#" class="mr-2 d-flex justify-content-center align-items-center"><span><i class="fab fa-instagram"></i></span></a></li>
	              </ul>
	    					<p></p>
	    				</div>
	    			</div>
    			</div>
    			<div class="col-lg-6 d-flex">
    				<div class="coach d-sm-flex align-items-stretch">
	    				<div class="img order-xl-last" style="background-image: url(${pageContext.request.contextPath}/static/images/trainer-3.jpg);"></div>
	    				<div class="text py-4 px-5 ftco-animate">
	    					<span class="subheading">Lead Trainer</span>
	    					<h3><a href="#">James Buffer</a></h3>
	    					<p>I teach and deliver professional STOTT Pilates© Instruction and ACE© Personal Training. I provide challenging and intelligent exercises to improve your body’s core strength, based on my extensive experience in both group and private Pilates training. My goal is to help maintain and build my clients’ fitness levels</p>
	    					<ul class="ftco-social-media d-flex mt-4">
	                <li class="ftco-animate"><a href="#" class="mr-2 d-flex justify-content-center align-items-center"><span><i class="fab fa-twitter"></i></span></a></li>
	                <li class="ftco-animate"><a href="#" class="mr-2 d-flex justify-content-center align-items-center"><span><i class="fab fa-facebook-f"></i></span></a></li>
	                <li class="ftco-animate"><a href="#" class="mr-2 d-flex justify-content-center align-items-center"><span><i class="fab fa-instagram"></i></span></a></li>
	              </ul>
	    					<p></p>
	    				</div>
	    			</div>
    			</div>
    			<div class="col-lg-6 d-flex">
    				<div class="coach d-sm-flex align-items-stretch">
	    				<div class="img order-xl-last" style="background-image: url(${pageContext.request.contextPath}/static/images/trainer-4.jpg);"></div>
	    				<div class="text py-4 px-5 ftco-animate">
	    					<span class="subheading">Trainer</span>
	    					<h3><a href="#">Maricar Collins</a></h3>
	    					<p>I specialize in strength training, weight loss, and yoga. My general clientele is middle-age, co-ed, looking for salubrious advice and guidance. I believe everyone has a right to fitness and I love being a guide for people that want to incorporate that "right" into their lives.</p>
	    					<ul class="ftco-social-media d-flex mt-4">
	                <li class="ftco-animate"><a href="#" class="mr-2 d-flex justify-content-center align-items-center"><span><i class="fab fa-twitter"></i></span></a></li>
	                <li class="ftco-animate"><a href="#" class="mr-2 d-flex justify-content-center align-items-center"><span><i class="fab fa-facebook-f"></i></span></a></li>
	                <li class="ftco-animate"><a href="#" class="mr-2 d-flex justify-content-center align-items-center"><span><i class="fab fa-instagram"></i></span></a></li>
	              </ul>
	    					<p></p>
	    				</div>
	    			</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section testimony-section" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_4.jpg);" data-stellar-background-ratio="0.5">
    	<div class="overlay"></div>
      <div class="container">
				<div class="row justify-content-center mb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	
            <h2 class="mb-3">What People Say</h2>
            <p>Check what some of our customers say about us!</p>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-md-8 ftco-animate">
          	<div class="row ftco-animate">
		          <div class="col-md-12">
		            <div class="carousel-testimony owl-carousel ftco-owl">
		              <div class="item">
		                <div class="testimony-wrap py-4 pb-5">
		                  <div class="user-img mb-4" style="background-image: url(${pageContext.request.contextPath}/static/images/avatar-01.jpg)">
		                    <span class="quote d-flex align-items-center justify-content-center">
                          <i class="fas fa-quote-right"></i>
		                    </span>
		                  </div>
		                  <div class="text text-center">
		                    <p class="mb-4">This gym is what I think about when I think of the perfect gym. It started with the location and excellent breeze coming off the ocean. It quickly moved to the awesome energy and knowledge that you get from the trainers here, they are eager to help and will to take time with you.</p>
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Customer</span>
		                  </div>
		                </div>
		              </div>
		              <div class="item">
		                <div class="testimony-wrap py-4 pb-5">
		                  <div class="user-img mb-4" style="background-image: url(${pageContext.request.contextPath}/static/images/avatar-03.jpg)">
		                    <span class="quote d-flex align-items-center justify-content-center">
                          <i class="fas fa-quote-right"></i>
		                    </span>
		                  </div>
		                  <div class="text text-center">
		                    <p class="mb-4">The trainers helped me reach my goals without breaking me. Made all workouts super fun and educational. Took me through my workouts at my own pace and pressed my limits. All things said, fantastic trainers and great experience.</p>
		                    <p class="name">Thomas Rayne</p>
		                    <span class="position">Customer</span>
		                  </div>
		                </div>
		              </div>
		              <div class="item">
		                <div class="testimony-wrap py-4 pb-5">
		                  <div class="user-img mb-4" style="background-image: url(${pageContext.request.contextPath}/static/images/avatar-04.jpg)">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="fas fa-quote-right"></i>
		                    </span>
		                  </div>
		                  <div class="text text-center">
		                    <p class="mb-4"> Depending on what you are in Java Gym for they will tailor a workout regime specific to your needs. All are very knowledgable on training and diet. Some are there for weight loss, others for conditioning and strengthing. Classes change daily and are always interesting.</p>
		                    <p class="name">Jeff Nolte</p>
		                    <span class="position">Customer</span>
		                  </div>
		                </div>
		              </div>
		              <div class="item">
		                <div class="testimony-wrap py-4 pb-5">
		                  <div class="user-img mb-4" style="background-image: url(${pageContext.request.contextPath}/static/images/avatar-05.jpg)">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="fas fa-quote-right"></i>
		                    </span>
		                  </div>
		                  <div class="text text-center">
		                    <p class="mb-4">I love Java Gym, the training is very effective , trainers are so motivating , always in a good mood , the workout is different every day and very entertaining...I do a lots of sports all around the world but this is definitely the my favourite place!</p>
		                    <p class="name">Alex Bourne</p>
		                    <span class="position">Customer</span>
		                  </div>
		                </div>
		              </div>
		              <div class="item">
		                <div class="testimony-wrap py-4 pb-5">
		                  <div class="user-img mb-4" style="background-image: url(${pageContext.request.contextPath}/static/images/avatar-06.jpg)">
		                    <span class="quote d-flex align-items-center justify-content-center">
                          <i class="fas fa-quote-right"></i>
		                    </span>
		                  </div>
		                  <div class="text text-center">
		                    <p class="mb-4">The location is amazing, basically beach front, so always after the work out we can go and jump into the ocean. There's a good energy at the gym and I made a lot of friends thanks to that place.</p>
		                    <p class="name">Kevin Gail</p>
		                    <span class="position">Customer</span>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
          </div>
        </div>
      </div>
    </section>

		<section class="ftco-appointment">
			<div class="overlay"></div>
    	<div class="container-wrap">
    		<div class="row no-gutters d-md-flex align-items-center">
    			<div class="col-lg-5 d-flex align-self-stretch">
              <iframe id = "map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3700.501855927019!2d-159.67018668552998!3d21.953693960935688!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7c0707603955ee5d%3A0x13c57f991fa2e4b4!2zOTg4NCBLYWhha2FpIFJkLCBXYWltZWEsIEhJIDk2Nzk2LCDOl869z4nOvM6tzr3Otc-CIM6gzr_Ou865z4TOtc6vzrXPgg!5e0!3m2!1sel!2sgr!4v1563908002373!5m2!1sel!2sgr" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
          </div>
	    		<div class="col-lg-7 appointment ftco-animate">
	          <div class="heading-section ftco-animate">
	            <h2 id="contact" class="mb-3">Contact With Us</h2>
	          </div>
	    			<form action="#" class="appointment-form">
	    				<div class="d-md-flex">
		    				<div class="form-group">
		    					<input type="text" class="form-control" placeholder="First Name">
		    				</div>
		    				<div class="form-group ml-md-4">
		    					<input type="text" class="form-control" placeholder="Last Name">
		    				</div>
	    				</div>
	    				<div class="d-md-flex">
		    				<div class="form-group">
		    					<input type="text" class="form-control" placeholder="Email Address">
		    				</div>
		    				<div class="form-group ml-md-4">
		    					<input type="text" class="form-control" placeholder="Phone">
		    				</div>
	    				</div>
	    				<div class="d-md-flex">
	    					<div class="form-group">
		              <textarea name="" id="" cols="30" rows="2" class="form-control" placeholder="Message"></textarea>
		            </div>
		            <div class="form-group ml-md-4">
		              <input type="submit" value="Send" class="btn btn-primary py-3 px-4">
		            </div>
	    				</div>
	    			</form>
	    		</div>    			
    		</div>
    	</div>
    </section>


    <!--Footer-->
    <footer class="ftco-footer ftco-section img">
    	<div class="overlay"></div>
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">About Us</h2>
              <p>One thing we’ve found is that exercise is always easier when you’ve got people supporting you. Java Gym offers members a community of people who make each other strong. </p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span><i class="fab fa-twitter"></i></span></a></li>
                <li class="ftco-animate"><a href="#"><span><i class="fab fa-facebook-f"></i></span></a></li>
                <li class="ftco-animate"><a href="#"><span><i class="fab fa-instagram"></i></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-2 col-md-6 mb-5 mb-md-5">
            <div class="ftco-footer-widget mb-4 ml-md-4">
             <h2 class="ftco-heading-2">Programs</h2>
             <ul class="list-unstyled">
               <li><a href="#" class="py-2 d-block">Crossfit</a></li>
               <li><a href="#" class="py-2 d-block">Aerobics</a></li>
               <li><a href="#" class="py-2 d-block">Fitness</a></li>
               <li><a href="#" class="py-2 d-block">Yoga</a></li>
             </ul>
           </div>
         </div>
          <div class="col-lg-2 col-md-6 mb-5 mb-md-5">
             <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Products</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Jump Ropes</a></li>
                <li><a href="#" class="py-2 d-block">bla bla</a></li>
                <li><a href="#" class="py-2 d-block">bla bla</a></li>
                <li><a href="#" class="py-2 d-block">bla bla</a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span><i class="fas fa-map-marker-alt"></i></span><span class="text">&nbsp;9884 Kahakai Rd Waimea, HI 96796, Hawaii, USA </span></li>
	                <li><a href="#"><span><i class="fas fa-phone"></i></span><span class="text">&nbsp;+2 392 3929 210</span></a></li>
	                <li><a href="#"><span><i class="fas fa-envelope"></i></span><span class="text">&nbsp;info@javagym.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <%-- <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div> --%>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/bootstrap-datepicker.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery.timepicker.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/static/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/main1.js"></script>
  </body>
</html>