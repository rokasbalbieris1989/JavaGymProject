<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Programs</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.css">
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
	          <li class="nav-item"><a href="<c:url value="/welcome2" />" class="nav-link">Home</a></li>
	          <li class="nav-item active"><a href="<c:url value="/welcome2/programs" />" class="nav-link">Programs</a></li>
	          <li class="nav-item"><a href="<c:url value="/welcome2/products" />" class="nav-link">Products</a></li>
            <li class="nav-item"><a href="#contact" class="nav-link">Contact</a></li>
            <li class="nav-item dropdown"><a href="<c:url value="/myprofile-${loggedinuser}" />" class="nav-link dropbtn"><i class="fas fa-user"></i>&nbsp;Username&nbsp;<i class="fas fa-sort-down"></i></a>
              <div class="dropdown-content">
                <a href="<c:url value="/myprofile-${loggedinuser}" />">My Profile</a>
                <a href="<c:url value="/logout" />">Logout</a>
              </div>
            </li>
          </ul>
        </div>
        <button id = "shopBag" type="button"><a href="#" class="nav-link"><i class="fas fa-lg fa-shopping-bag"></i></a></button>
		  </div>
	  </nav>
    <!-- END nav -->

    <!-- Section Hero -->
    <section class="hero-wrap js-fullheight">
      <div class="overlay" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_2.jpg);" data-stellar-background-ratio="0.5"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-end">
          <div class="col-md-12 text-center ftco-animate">
            <h1 class="mb-3 bread" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_1.jpg);" data-stellar-background-ratio="0.5">Programs</h1>
            <p class="breadcrumbs"><span>Programs</span></p>
          </div>
        </div>
      </div>
    </section>

    <!-- Programs -->
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
    					<div class="title p-4" style="background-color: red;">
    						<h3>Weight Lifting</h3>
    					</div>
    					<div class="text p-4 d-flex align-items-end" style="background-color: rgba(0, 0, 0, 0.849);">
                <a href="#" class="btn-custom px-4 py-2">Join Now</a>
                
    						<div>
    							<span class="price">$240.00</span>
    							<h3><a href="#">Weight Lifting&nbsp;<i class="fas fa-chevron-circle-down"></i></a></h3>
                  <p style="color: white;">Far far away, behind the word mountains, far from the countries. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Earum dolorem error hic ex atque nesciunt distinctio, nihil voluptatum at sequi quo ducimus molestiae obcaecati nobis possimus sit itaque cupiditate aliquid.</p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-4">
    				<div class="pricing-wrap ftco-animate active img" style="background-image: url(${pageContext.request.contextPath}/static/images/gurl.jpg);">
    					<div class="title p-4" style="background-color: red;">
    						<h3>CrossFit</h3>
    					</div>
    					<div class="text p-4 d-flex align-items-end" style="background-color: rgba(0, 0, 0, 0.849);">
                <a href="#" class="btn-custom px-4 py-2">Join Now</a>
                
    						<div>
    							<span class="price">$240.00</span>
    							<h3><a href="#">CrossFit&nbsp;<i class="fas fa-chevron-circle-down"></i></a></h3>
                  <p style="color: white;">CrossFit takes all aspects of fitness and sports, cherry picks the best, most effective, and most applicable to everyday life, and combines them together.</p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-4">
    				<div class="pricing-wrap ftco-animate img" style="background-image: url(${pageContext.request.contextPath}/static/images/cardio1.jpg);">
    					<div class="title p-4" style="background-color: red;">
    						<h3>Cardio</h3>
    					</div>
    					<div class="text p-4 d-flex align-items-end" style="background-color: rgba(0, 0, 0, 0.849);">
                <a href="#" class="btn-custom px-4 py-2">Join Now</a>
                
    						<div>
    							<span class="price">$240.00</span>
    							<h3><a href="#">Cardio&nbsp;<i class="fas fa-chevron-circle-down"></i></a></h3>
                  <p style="color: white;">Cardio exercise simply means that you're doing a rhythmic activity that raises your heart rate into your target heart rate zone, the zone where you'll burn the most fat and calories.</p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-4">
    				<div class="pricing-wrap img" style="background-image: url(${pageContext.request.contextPath}/static/images/trx.jpg);">
    					<div class="title p-4" style="background-color: red;">
    						<h3>TRX</h3>
    					</div>
    					<div class="text p-4 d-flex align-items-end" style="background-color: rgba(0, 0, 0, 0.849);">
                <a href="#" class="btn-custom px-4 py-2">Join Now</a>
                
    						<div>
    							<span class="price">$240.00</span>
    							<h3><a href="#">TRX&nbsp;<i class="fas fa-chevron-circle-down"></i></a></h3>
                  <p style="color: white;">Far far away, behind the word mountains, far from the countries. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Earum dolorem error hic ex atque nesciunt distinctio, nihil voluptatum at sequi quo ducimus molestiae obcaecati nobis possimus sit itaque cupiditate aliquid.</p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-4">
    				<div class="pricing-wrap ftco-animate img" style="background-image: url(${pageContext.request.contextPath}/static/images/pilates_1.jpg);">
    					<div class="title p-4" style="background-color: red;">
    						<h3>Pilates</h3>
    					</div>
    					<div class="text p-4 d-flex align-items-end" style="background-color: rgba(0, 0, 0, 0.849);">
                <a href="#" class="btn-custom px-4 py-2">Join Now</a>
                
    						<div>
    							<span class="price">$240.00</span>
    							<h3><a href="#">Pilates&nbsp;<i class="fas fa-chevron-circle-down"></i></a></h3>
                  <p style="color: white;">Far far away, behind the word mountains, far from the countries. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Earum dolorem error hic ex atque nesciunt distinctio, nihil voluptatum at sequi quo ducimus molestiae obcaecati nobis possimus sit itaque cupiditate aliquid.</p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-4">
    				<div class="pricing-wrap ftco-animate img" style="background-image: url(${pageContext.request.contextPath}/static/images/yoga.jpg);">
    					<div class="title p-4" style="background-color: red;">
    						<h3>Yoga</h3>
    					</div>
    					<div class="text p-4 d-flex align-items-end" style="background-color: rgba(0, 0, 0, 0.849);">
                <a href="#" class="btn-custom px-4 py-2">Join Now</a>
                
    						<div>
    							<span class="price">$240.00</span>
    							<h3><a href="#">Yoga&nbsp;<i class="fas fa-chevron-circle-down"></i></a></h3>
                  <p style="color: white;">Yoga is most often associated with the physical practice of asanas, particularly stretching exercises to build flexibility and relax the body. Yoga asanas can also build strength, coordination, balance and stamina.</p>
    						</div>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>
<!-- end programs -->

    <!-- Schedule -->
    <div class=" overlay site-section block-schedule" style="background-image: url(${pageContext.request.contextPath}/static/images/schedule.jpg);" >
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h2 class="text-white display-4 mb-5">Schedule</h2>
          </div>
        </div>
        <ul class="nav nav-pills tab-nav mb-4" id="pills-tab" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="pills-sunday-tab" data-toggle="pill" href="#pills-sunday" role="tab" aria-controls="pills-sunday" aria-selected="true">Sunday</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="pills-monday-tab" data-toggle="pill" href="#pills-monday" role="tab" aria-controls="pills-monday" aria-selected="true">Monday</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="pills-tuesday-tab" data-toggle="pill" href="#pills-tuesday" role="tab" aria-controls="pills-tuesday" aria-selected="false">Tuesday</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="pills-wednesday-tab" data-toggle="pill" href="#pills-wednesday" role="tab" aria-controls="pills-wednesday" aria-selected="false">Wednesday</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="pills-thursday-tab" data-toggle="pill" href="#pills-thursday" role="tab" aria-controls="pills-thursday" aria-selected="false">Thursday</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="pills-friday-tab" data-toggle="pill" href="#pills-friday" role="tab" aria-controls="pills-friday" aria-selected="false">Friday</a>
          </li>
        </ul>
        <div class="tab-content" id="pills-tabContent">
          <div class="tab-pane fade show active" id="pills-sunday" role="tabpanel" aria-labelledby="pills-sunday-tab">
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Yoga</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">8:00am &mdash; 9:30am</div>
                <div class="col-sm-3 col-md-3 col-lg-3">James Buffer</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Weight Lifting</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">10:00am &mdash; 11:00am</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Travor James</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Pilates</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">12:00pm &mdash; 13:00pm</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Leonard Smith</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">CrossFit</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">16:00pm &mdash; 17:00pm</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Maricar Collins</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Yoga</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">19:00pm &mdash; 20:00pm</div>
                <div class="col-sm-3 col-md-3 col-lg-3">James Buffer</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>

          </div>

          <div class="tab-pane fade" id="pills-monday" role="tabpanel" aria-labelledby="pills-monday-tab">
            
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Pilates</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">10:00am &mdash; 11:00am</div>
                <div class="col-sm-3 col-md-3 col-lg-3">James Buffer</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">CrossFit</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">11:00am &mdash; 12:00pm</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Travor James</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Cardio</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">16:00pm &mdash; 17:30pm</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Leonard Smith</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Yoga</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">18:00pm &mdash; 19:00pm</div>
                <div class="col-sm-3 col-md-3 col-lg-3">James Buffer</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Weight Lifting</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">20:00pm &mdash; 21:00pm</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Maricar Collins</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>

          </div>

          <div class="tab-pane fade" id="pills-tuesday" role="tabpanel" aria-labelledby="pills-tuesday-tab">
            
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Cardio</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">9:30am &mdash; 11:00am</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Travor James</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Yoga</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">14:00am &mdash; 15:00pm</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Maricar Collins</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Pilates</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">17:00pm &mdash; 18:00pm</div>
                <div class="col-sm-3 col-md-3 col-lg-3">James Buffer</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">TRX</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">19:30pm &mdash; 21:00pm</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Leonard Smith</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>
            <div class="row-wrap">
              <div class="row bg-white p-4 align-items-center">
                <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Yoga</h3></div>
                <div class="col-sm-3 col-md-3 col-lg-3">21:00pm &mdash; 22:00pm</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Maricar Collins</div>
                <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
              </div>
            </div>

          </div>
          
        


        <div class="tab-pane fade" id="pills-wednesday" role="tabpanel" aria-labelledby="pills-wednesday-tab">
            
          <div class="row-wrap">
            <div class="row bg-white p-4 align-items-center">
              <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Pilates</h3></div>
              <div class="col-sm-3 col-md-3 col-lg-3">9:00am &mdash; 10:00am</div>
              <div class="col-sm-3 col-md-3 col-lg-3">James Buffer</div>
              <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
            </div>
          </div>
          <div class="row-wrap">
            <div class="row bg-white p-4 align-items-center">
              <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Yoga</h3></div>
              <div class="col-sm-3 col-md-3 col-lg-3">14:00am &mdash; 15:00pm</div>
              <div class="col-sm-3 col-md-3 col-lg-3">Maricar Collins</div>
              <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
            </div>
          </div>
          <div class="row-wrap">
            <div class="row bg-white p-4 align-items-center">
              <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">CrossFit</h3></div>
              <div class="col-sm-3 col-md-3 col-lg-3">17:00pm &mdash; 18:00pm</div>
              <div class="col-sm-3 col-md-3 col-lg-3">Leonard Smith</div>
              <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
            </div>
          </div>
          <div class="row-wrap">
            <div class="row bg-white p-4 align-items-center">
              <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Weight Lifting</h3></div>
              <div class="col-sm-3 col-md-3 col-lg-3">19:30pm &mdash; 21:00pm</div>
              <div class="col-sm-3 col-md-3 col-lg-3">Travor James</div>
              <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
            </div>
          </div>
          <div class="row-wrap">
            <div class="row bg-white p-4 align-items-center">
              <div class="col-sm-3 col-md-3 col-lg-3"><h3 class="schedule_h5">Cardio</h3></div>
              <div class="col-sm-3 col-md-3 col-lg-3">21:00pm &mdash; 22:00pm</div>
              <div class="col-sm-3 col-md-3 col-lg-3">James Buffer</div>
              <div class="col-sm-3 col-md-3 col-lg-3 text-md-right"><a href="#" class="btn btn-primary pill px-4 mt-3 mt-md-0 joinBtn">Join Now</a></div>     
            </div>
          </div>

        </div>
      </div>
      </div>
      </div> 

    
  		  
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
                <li><a href="<c:url value="/programs" />" class="py-2 d-block">Crossfit</a></li>
              <li><a href="<c:url value="/programs" />" class="py-2 d-block">Aerobics</a></li>
              <li><a href="<c:url value="/programs" />" class="py-2 d-block">Fitness</a></li>
              <li><a href="<c:url value="/programs" />" class="py-2 d-block">Yoga</a></li>
             </ul>
           </div>
         </div>
          <div class="col-lg-2 col-md-6 mb-5 mb-md-5">
             <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Products</h2>
              <ul class="list-unstyled">
                <li><a href="<c:url value="/products" />" class="py-2 d-block">Jump Ropes</a></li>
                <li><a href="<c:url value="/products" />" class="py-2 d-block">Equipment</a></li>
                <li><a href="<c:url value="/products" />" class="py-2 d-block">Creatine</a></li>
                <li><a href="<c:url value="/products" />" class="py-2 d-block">Protein</a></li>
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
        <!-- <div class="row">
          <div class="col-md-12 text-center">

            <p>Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
   Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. </p>
          </div>
        </div> -->
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/scrollax.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/main.js"></script>
  </body>
</html>