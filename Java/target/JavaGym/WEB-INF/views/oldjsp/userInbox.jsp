<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Inbox</title>
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
	          <li class="nav-item active"><a href="<c:url value="/welcome2" />" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="<c:url value="/programs" />" class="nav-link">Programs</a></li>
	          <li class="nav-item"><a href="<c:url value="/products" />" class="nav-link">Products</a></li>
            <li class="nav-item"><a href="#contact" class="nav-link">Contact</a></li>
            <li class="nav-item"><a href="<c:url value="/myprofile" />" class="nav-link">My Profile</a></li>
            <li class="nav-item"><a href="<c:url value="/welcome" />" class="nav-link">Log Out</a></li>
          </ul>
        </div>
        <button id = "shopBag" type="button"><a href="#" class="nav-link"><i class="fas fa-lg fa-shopping-bag"></i></a></button>
		  </div>
	  </nav>
    <!-- END nav -->


    <!-- MODAL -->
    <div class="modal fade " id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <div class="modal-dialog form-v7-content" role="document">
      <div class="modal-content">
        <div class="modal-header text-center">
          <h4 class="modal-title w-100 font-weight-bold" style="color: black">YOUR MESSAGE</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form id="modalForm" class="modal-body form-detail" action="#" method="post">
          <div class="form-row">
            <label data-error="wrong" data-success="right" for="form34">Your name</label>
            <input type="text" id="form34" class="input-text">
          </div>
          <div class="form-row">
            <label data-error="wrong" data-success="right" for="form33">To</label>
            <input type="text" id="form33" class="input-text">
          </div>
          <div class="form-row">
            <label data-error="wrong" data-success="right" for="form32">Subject</label>
            <input type="text" id="form32" class="input-text">
          </div>
  
          <div class="form-row">
            <label data-error="wrong" data-success="right" for="form8">Your message</label>
            <textarea type="text" id="form8" cols="50" rows="4" style="border: 2px solid rgb(228, 228, 228);"></textarea>
          </div>
        </form>
        <div class="modal-footer d-flex justify-content-center" style="background-color: red;">
          <button id="inboxBtnSend" class="btn btn-primary btn-lg btn-block" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
<!-- END OF MODAL   -->


<section class="hero-wrap js-fullheight container-fluid">
  <div class="overlay" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_2.jpg);" data-stellar-background-ratio="0.5"></div>
    
      <div class="col-lg-12 appointment ftco-animate">
          <div class="heading-section ftco-animate">
            <h2 class="">Inbox</h2>
            <div class="row">
              <div class="col-sm-2">
                <a class="edit" href="<c:url value="/editUserProfile" />"><i class="fas fa-edit"></i>&nbsp;Edit personal info</a>
              </div>
              <div class="col-sm-2">
                  <a class="edit" href="<c:url value="/changePassword" />"><i class="fas fa-lock"></i>&nbsp;Change password</a>
              </div>
              <div class="col-sm-2">
                <a class="edit" href="<c:url value="/userInbox" />"><i class="fas fa-envelope"></i>&nbsp;Inbox</a>
              </div>
              <div class="col-sm-6"></div>
            </div>

            <div class="row">
              <div class="col-sm-10"></div>
              <div class="col-sm-2">
                  <button id="inboxBtn" class="btn btn-primary mx-auto d-block py-3 px-4" type="button" title="New message" data-toggle="modal" data-target="#modalContactForm"><i class="far fa-edit fa-2x"></i></button>
              </div>
            </div>
      </div>
      <br>
      <br>

      <div class="row">
               
            <!-- DATA TABLE -->
            <div class="table-responsive table-responsive-data2">
                <table class="table table-data2 table-hover">
                    <thead>
                        <tr>
                            <th>
                                <label class="au-checkbox">
                                    <input type="checkbox">
                                    <span class="au-checkmark"></span>
                                </label>
                            </th>
                            <th id="thInbox">name</th>
                            <th class="thInbox">message</th>
                            <th class="thInbox">date</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="tr-shadow">
                            <td>
                                <label class="au-checkbox">
                                    <input type="checkbox">
                                    <span class="au-checkmark"></span>
                                </label>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <div class="table-data-feature">
                                    <button class="item" data-placement="top" title="Reply" data-toggle="modal" data-target="#modalContactForm">
                                        <i class="fas fa-reply"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr class="spacer"></tr>
                        <tr class="tr-shadow">
                            <td>
                                <label class="au-checkbox">
                                    <input type="checkbox">
                                    <span class="au-checkmark"></span>
                                </label>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <div class="table-data-feature">
                                    <button class="item" data-placement="top" title="Reply" data-toggle="modal" data-target="#modalContactForm">
                                        <i class="fas fa-reply"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
      </div>
      </div>
    </section>
    
    

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
        <!-- <div class="row">
          <div class="col-md-12 text-center">

            <p>< Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
   Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.</p>
          </div>
        </div> -->
      </div>
    </footer>
    
    
    <script>
      function checkPassword(){
        if ($('#password2').val() !== $('#password1').val()) {
          $('#password2')[0].setCustomValidity('Passwords must match.');
        }
        else{
          $('#password2')[0].setCustomValidity('');
        }
      }
    </script>
  
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