<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
                    <img src="${pageContext.request.contextPath}/static/images/lift.jpg" alt="form" >


                </div>
                <form:form method="POST" modelAttribute="user" class="form-detail" id="myform">
                    <form:input type="hidden" path="id" id="id"/>
                    <div class="form-row">
                        <label for="firstName">FIRST NAME</label>
                        <form:input path="firstName" type="text" id="firstName" class="input-text" />
                    </div>
                    <div class="form-row">
                        <label for="lastName">LAST NAME</label>
                        <form:input path="lastName" type="text" id="lastName" class="input-text" />
                    </div>
                    <div class="form-row">
                        <label for="ssoId">USERNAME</label>
                        <form:input path="ssoId" type="text" id="ssoId" class="input-text" />
                    </div>
                    <div class="form-row">
                        <label for="email">E-MAIL</label>
                        <form:input type="email" path="email" id="email" class="input-text" />
                    </div>
                    <div class="form-row">
                        <label for="password">PASSWORD</label>
                        <form:input type="password" path="password" id="password" class="input-text" autocomplete ="off" onchange="checkPassword()"/>
                    </div>
                    <div class="form-row">
                        <label for="comfirm_password">CONFIRM PASSWORD</label>
                        <input type="password" id="password2" class="input-text" onkeyup="checkPassword()"  title="Passwords must match"  autocomplete="off" required>
                    </div>
                    <div class="form-row">
                        <label for="userProfiles"></label>
                        <div>
                            <form:input type="hidden" path="userProfiles" id="id" value="1"/>
                        </div>
                    </div>
                    <div class="form-row-last">
                        <input type="submit" name="register" class="register" value="Sign Up">
                        <p>or<a href="<c:url value="/login"/>">Sign In</a></p>
                    </div>
                </form:form>
            </div>
        </div>

        <script>
            function checkPassword() {
                if ($('#password2').val() !== $('#password').val()) {
                    $('#password2')[0].setCustomValidity('Passwords must match.');
                } else {
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
        <script src="${pageContext.request.contextPath}/static/js/main.js"></script>

    </body>
</html>