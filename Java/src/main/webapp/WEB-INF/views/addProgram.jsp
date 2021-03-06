<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="au theme template">
        <meta name="author" content="Hau Nguyen">
        <meta name="keywords" content="au theme template">

        <!-- Title Page-->
        <title>Admin</title>

        <!-- Fontfaces CSS-->
        <link href="${pageContext.request.contextPath}/static/css/font-face.css" rel="stylesheet" media="all">

        <!-- Bootstrap CSS-->
        <link href="${pageContext.request.contextPath}/static/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

        <!-- FONT AWESOME -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
              integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

        <!-- Vendor CSS-->
        <link href="${pageContext.request.contextPath}/static/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="${pageContext.request.contextPath}/static/css/theme.css" rel="stylesheet" media="all">

    </head>

    <body class="animsition">
        <div class="page-wrapper">
            <!-- HEADER MOBILE-->
            <header class="header-mobile d-block d-lg-none">
                <div class="header-mobile__bar">
                    <div class="container-fluid">
                        <div class="header-mobile-inner">
                            <a class="logo" href="<c:url value="/welcome2" />">
                                <img src="${pageContext.request.contextPath}/static/images/logo.png" alt="Java Gym" />
                            </a>
                            <button class="hamburger hamburger--slider" type="button">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
                <nav class="navbar-mobile">
                    <div class="container-fluid">
                        <ul class="navbar-mobile__list list-unstyled">
                            <li>
                                <a href="<c:url value="/admin/products/" />">Products</a>
                            </li>
                            <li>
                                <a href="<c:url value="/admin/programs/" />">Programs</a>
                            </li>
                            <li>
                                <a href="<c:url value="/admin/trainers/" />">Trainers</a>
                            </li>
                            <li>
                                <a href="<c:url value="/admin/users/" />">Users</a>
                            </li>
                            <li>
                                <a href="<c:url value="/admin/sales/" />">Sales</a>
                            </li>
                    </div>
                </nav>
            </header>
            <!-- END HEADER MOBILE-->

            <!-- MENU SIDEBAR-->
            <aside class="menu-sidebar d-none d-lg-block">
                <div class="logo">
                    <a href="<c:url value="/welcome2" />">
                        <img src="${pageContext.request.contextPath}/static/images/logo.png" alt="Java Gym" />
                    </a>
                </div>
                <div class="menu-sidebar__content js-scrollbar1">
                    <nav class="navbar-sidebar">
                        <ul class="list-unstyled navbar__list">
                            <li>
                                <a href="<c:url value="/admin/products/" />">Products</a>
                            </li>
                            <li class="active">
                                <a href="<c:url value="/admin/programs/" />">Programs</a>
                            </li>
                            <li>
                                <a href="<c:url value="/admin/trainers/" />">Trainers</a>
                            </li>
                            <li>
                                <a href="<c:url value="/admin/users/" />">Users</a>
                            </li>
                            <li>
                                <a href="<c:url value="/admin/sales/" />">Sales</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>
            <!-- END MENU SIDEBAR-->

            <!-- PAGE CONTAINER-->
            <div class="page-container" style="background-image: url('${pageContext.request.contextPath}/static/images/rope1.jpg');">
                <!-- HEADER DESKTOP-->
                <header class="header-desktop">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="header-wrap">
                                <ul class="list-unstyled navbar__list ml-auto">
                                    <li class="headerLinks"><a href="<c:url value="/admin/" />">Admin</a></li>
                                    <li class="headerLinks"><a href="<c:url value="/logout" />">Log Out</a></li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </header>
                <!-- HEADER DESKTOP-->

                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="overview-wrap">
                                        <h2 class="title-1">Add New Program</h2>
                                    </div>
                                </div>
                            </div>
                            <br>

                            <!-- FORM -->
                            <div id="formContainer" class="container-fluid">
                                <form:form  method="POST" modelAttribute="program" class="appointment-form horizontal-form">
                                    <form:input type="hidden" path="idprogram" id="idprogram"/>

                                    <div class="row form-group">
                                        <label class="col col-md-2 form-control-label">Program Name:</label>
                                        <div class="col-12 col-md-10">
                                            <form:input type="text" class="form-control" path="sports" id="sports" />
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col col-md-2 form-control-label">Description:</label>
                                        <div class="col-12 col-md-10">
                                            <form:textarea class="form-control" path="description" id="description" cols="70" rows="4" />
                                        </div>
                                    </div>
                                    <div class=" row form-group">
                                        <label class="col col-md-2 form-control-label">Image URL:</label>
                                        <div class="col-12 col-md-10">
                                            <form:input type="text" class="form-control" path="images" id="images" />
                                        </div>
                                    </div>
                                    <div class=" row form-group">
                                        <label class="col col-md-2 form-control-label">Category:</label>
                                        <div class="col-12 col-md-10">
                                            <form:input type="text" class="form-control" path="category" id="category" />
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col col-md-2 form-control-label">Price:</label>
                                        <div class="col-12 col-md-10">
                                            <form:input type="number" path="prices" id="prices" class="form-control" />
                                        </div>
                                    </div>
                                    <div id="btnsForm" class="form-group pull-right">
                                        <input type="submit" value="Add" class="btn" id="editBtn">
                                        <a href="<c:url value="/admin/programs/" />"><button type="button" class="btn btn-secondary">Cancel</button></a>

                                    </div>
                                </form:form>
                            </div>
                        </div>
                        <!-- END OF FORM -->


                    </div>
                </div>

                <!-- END OF MAIN CONTENT -->

                <!-- Jquery JS-->
                <script src="${pageContext.request.contextPath}/static/vendor/jquery-3.2.1.min.js"></script>
                <!-- Bootstrap JS-->
                <script src="${pageContext.request.contextPath}/static/vendor/bootstrap-4.1/popper.min.js"></script>
                <script src="${pageContext.request.contextPath}/static/vendor/bootstrap-4.1/bootstrap.min.js"></script>
                <!-- Vendor JS       -->
                <script src="${pageContext.request.contextPath}/static/vendor/circle-progress/circle-progress.min.js"></script>

                <!-- Main JS-->
                <script src="${pageContext.request.contextPath}/static/js/main2.js"></script>

                </body>

                </html>
                <!-- end document-->