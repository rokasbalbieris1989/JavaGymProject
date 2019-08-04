<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html  lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
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
                       <li class="nav-item"><a href="<c:url value="/programs" />" class="nav-link">Programs</a></li>
	          <li class="nav-item"><a href="<c:url value="/products" />" class="nav-link">Products</a></li>
                        <li class="nav-item"><a href="#contact" class="nav-link">Contact</a></li>
                        <li class="nav-item"><a href="<c:url value="/myprofile-${loggedinuser}" />" class="nav-link">My Profile</a></li>
                        <li class="nav-item"><a href="<c:url value="/logout" />" class="nav-link">Log Out</a></li>
                    </ul>
                </div>
                <button id = "shopBag" type="button"><a href="#" class="nav-link"><i class="fas fa-lg fa-shopping-bag"></i></a></button>      
            </div>
        </nav>
        <!-- END nav -->


        <section class="hero-wrap js-fullheight">
            <div class="overlay" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_2.jpg);" data-stellar-background-ratio="0.5">

                <div class="col-lg-11">
                    <div class="heading-section ftco-animate">
                        <h2 class="p-t-100 p-b-100 p-l-60">My Orders</h2>
                    </div>

                    <div class="table-responsive p-l-60">
                        <table class="table table-dark table-hover">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Programs/Products</th>
                                    <th>Price</th>
                                    <th>Sum</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Yoga</td>
                                    <td>$240.00</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <td>Jump Rope</td>
                                    <td>$20.00</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-lg-7 appointment ftco-animate">
                <div class="heading-section ftco-animate">
                    <h2 class="mb-3">Edit My Profile</h2>
                    <div class="row">
                        <div class="col-sm-4">
                            <a class="edit" href="<c:url value="/editUserProfile-${loggedinuser}" />"><i class="fas fa-edit"></i>&nbsp;Edit personal info</a>
                        </div>
                        <div class="col-sm-4">
                            <a class="edit" href="<c:url value="/changePassword-${loggedinuser}" />"><i class="fas fa-lock"></i>&nbsp;Change password</a>
                        </div>
                    </div>
                </div>
                <br>
                <br>

                <form:form modelAttribute="user" class="appointment-form" method = "POST">
                    <form:input type="hidden" path="id" id="id"/>
                    <div class="form-group">
                        <label for="firstName">First Name</label>
                        <form:input type="text" path="firstName" id="firstName" class="form-control"/>
                        <label for="lastName">Last Name</label>
                        <form:input type="text" path="lastName" id="lastName" class="form-control" />
                        <label for="email">Email</label>
                        <form:input type="text" path="email" id="email" class="form-control" />
                        <label for="ssoId">Username</label>
                        <form:input type="text" path="ssoId" id="ssoId" class="form-control" />
                        <input type="submit" value="Save" class="btn btn-primary py-3 px-4">
                    </div>
                </form:form>
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
        
                    <p><Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
          Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
          Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.</p>
                  </div>
                </div> -->
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
        <script src="${pageContext.request.contextPath}/static/js/main.js"></script>
    </body>
</html>