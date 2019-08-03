<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html  lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In</title>
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
                    <img src="${pageContext.request.contextPath}/static/images/signup.png" alt="form">


                </div>
                <c:url var="loginUrl" value="/login" />
                <form class="form-detail" action="#" method="post" id="myform">
                    <c:if test="${param.error != null}">
                        <div class="alert alert-danger">
                            <p>Invalid username and password.</p>
                        </div>
                    </c:if>
                    <div class="form-row">
                        <label for="username">USERNAME</label>
                        <input type="text" name="ssoId" id="username" class="input-text">
                    </div>
                    <div class="form-row">
                        <label for="password">PASSWORD</label>
                        <input type="password" name="password" id="password" class="input-text" required>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                    <div class="form-row-last">
                        <input type="submit" class="register" value="Sign In">
                        <p>or<a href="<c:url value="/newuser" />">Sign Up</a></p>
                    </div>
                </form>
            </div>
        </div>

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
        <script src="${pageContext.request.contextPath}/static/js/main1.js"></script>

    </body>
</html>
