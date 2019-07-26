<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign Up</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

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
    <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/icomoon.css">-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
  </head>
  <body class="form-v7">
  	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="<c:url value="/welcome" />">Java Gym</a>
		  </div>
	  </nav>
    <!-- END nav -->


    <div class="page-content">
        <div class="form-v7-content">
          <div class="form-left">
            <img src="${pageContext.request.contextPath}/static/images/lift.jpg" alt="form">
          
            
          </div>
          <form class="form-detail" action="" method="post" id="myform">
            <div class="form-row">
              <label for="username">USERNAME</label>
              <input type="text" name="username" id="username" class="input-text">
            </div>
            <div class="form-row">
              <label for="your_email">E-MAIL</label>
              <input type="text" name="your_email" id="your_email" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
            </div>
            <div class="form-row">
              <label for="password">PASSWORD</label>
              <input type="password" name="password1" id="password" class="input-text" autocomplete ="off" required onchange="checkPassword()>
            </div>
            <div class="form-row">
              <label for="comfirm_password">CONFIRM PASSWORD</label>
              <input type="password" name="password2" id="password2" class="input-text" onkeyup="checkPassword()"  title="Passwords must match"  autocomplete="off" required>
            </div>
            <div class="form-row-last">
              <input type="submit" name="register" class="register" value="Sign Up">
              <p>or<a href="<c:url value="/login" />"">Sign In</a></p>
            </div>
          </form>
        </div>
      </div>
    
  <script>
    function checkPassword(){
      if ($('#password2').val() !== $('#password').val()) {
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