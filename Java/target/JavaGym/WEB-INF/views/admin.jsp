<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>



<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Required meta tags-->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="au theme template">
        <meta name="author" content="Hau Nguyen">
        <meta name="keywords" content="au theme template">

        <!-- Title Page-->
        <title>Admin Dashboard</title>

        <!-- Fontfaces CSS-->
        <link href="${pageContext.request.contextPath}/static/css/font-face.css" rel="stylesheet" media="all">
        <link href="${pageContext.request.contextPath}/static/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <link href="${pageContext.request.contextPath}/static/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
        <link href="${pageContext.request.contextPath}/static/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

        <!-- Bootstrap CSS-->
        <link href="${pageContext.request.contextPath}/static/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

        <!-- FONT AWESOME -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

        <!-- Vendor CSS-->
        <link href="/static/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
        <link href="${pageContext.request.contextPath}/static/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
        <link href="${pageContext.request.contextPath}/static/vendor/wow/animate.css" rel="stylesheet" media="all">
        <link href="${pageContext.request.contextPath}/static/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
        <link href="${pageContext.request.contextPath}/static/vendor/slick/slick.css" rel="stylesheet" media="all">
        <link href="${pageContext.request.contextPath}/static/vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="${pageContext.request.contextPath}/static/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

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
                            <a class="logo" href="index.html">
                                <img src="${pageContext.request.contextPath}/static/images/icon/logo.png" alt="CoolAdmin" />
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
                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                                <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                    <li>
                                        <a href="index.html">Dashboard 1</a>
                                    </li>
                                    <li>
                                        <a href="index2.html">Dashboard 2</a>
                                    </li>
                                    <li>
                                        <a href="index3.html">Dashboard 3</a>
                                    </li>
                                    <li>
                                        <a href="index4.html">Dashboard 4</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="chart.html">
                                    <i class="fas fa-chart-bar"></i>Charts</a>
                            </li>
                            <li>
                                <a href="table.html">
                                    <i class="fas fa-table"></i>Tables</a>
                            </li>
                            <li>
                                <a href="form.html">
                                    <i class="far fa-check-square"></i>Forms</a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fas fa-calendar-alt"></i>Calendar</a>
                            </li>
                            <li>
                                <a href="map.html">
                                    <i class="fas fa-map-marker-alt"></i>Maps</a>
                            </li>
                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-copy"></i>Pages</a>
                                <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                    <li>
                                        <a href="login.html">Login</a>
                                    </li>
                                    <li>
                                        <a href="register.html">Register</a>
                                    </li>
                                    <li>
                                        <a href="forget-pass.html">Forget Password</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-desktop"></i>UI Elements</a>
                                <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                    <li>
                                        <a href="button.html">Button</a>
                                    </li>
                                    <li>
                                        <a href="badge.html">Badges</a>
                                    </li>
                                    <li>
                                        <a href="tab.html">Tabs</a>
                                    </li>
                                    <li>
                                        <a href="card.html">Cards</a>
                                    </li>
                                    <li>
                                        <a href="alert.html">Alerts</a>
                                    </li>
                                    <li>
                                        <a href="progress-bar.html">Progress Bars</a>
                                    </li>
                                    <li>
                                        <a href="modal.html">Modals</a>
                                    </li>
                                    <li>
                                        <a href="switch.html">Switchs</a>
                                    </li>
                                    <li>
                                        <a href="grid.html">Grids</a>
                                    </li>
                                    <li>
                                        <a href="fontawesome.html">Fontawesome Icon</a>
                                    </li>
                                    <li>
                                        <a href="typo.html">Typography</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- END HEADER MOBILE-->

            <!-- MENU SIDEBAR-->
            <aside class="menu-sidebar d-none d-lg-block">
                <div class="logo">
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/images/icon/logo.png" alt="Cool Admin" />
                    </a>
                </div>
                <div class="menu-sidebar__content js-scrollbar1">
                    <nav class="navbar-sidebar">
                        <ul class="list-unstyled navbar__list">
                            <li class="active has-sub">
                                <a class="js-arrow" href="#">Dashboard</a>
                                <ul class="list-unstyled navbar__sub-list js-sub-list">
                                    <li>
                                        <a href="index.html">Dashboard 1</a>
                                    </li>
                                    <li>
                                        <a href="index2.html">Dashboard 2</a>
                                    </li>
                                    <li>
                                        <a href="index3.html">Dashboard 3</a>
                                    </li>
                                    <li>
                                        <a href="index4.html">Dashboard 4</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="chart.html">Charts</a>
                            </li>
                            <li>
                                <a href="table.html">Tables</a>
                            </li>
                            <li>
                                <a href="form.html">Forms</a>
                            </li>
                            <li>
                                <a href="#">Calendar</a>
                            </li>
                            <li>
                                <a href="map.html">Maps</a>
                            </li>
                            <li class="has-sub">
                                <a class="js-arrow" href="#">Pages</a>
                                <ul class="list-unstyled navbar__sub-list js-sub-list">
                                    <li>
                                        <a href="login.html">Login</a>
                                    </li>
                                    <li>
                                        <a href="register.html">Register</a>
                                    </li>
                                    <li>
                                        <a href="forget-pass.html">Forget Password</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="has-sub">
                                <a class="js-arrow" href="#">UI Elements</a>
                                <ul class="list-unstyled navbar__sub-list js-sub-list">
                                    <li>
                                        <a href="button.html">Button</a>
                                    </li>
                                    <li>
                                        <a href="badge.html">Badges</a>
                                    </li>
                                    <li>
                                        <a href="tab.html">Tabs</a>
                                    </li>
                                    <li>
                                        <a href="card.html">Cards</a>
                                    </li>
                                    <li>
                                        <a href="alert.html">Alerts</a>
                                    </li>
                                    <li>
                                        <a href="progress-bar.html">Progress Bars</a>
                                    </li>
                                    <li>
                                        <a href="modal.html">Modals</a>
                                    </li>
                                    <li>
                                        <a href="switch.html">Switchs</a>
                                    </li>
                                    <li>
                                        <a href="grid.html">Grids</a>
                                    </li>
                                    <li>
                                        <a href="fontawesome.html">Fontawesome Icon</a>
                                    </li>
                                    <li>
                                        <a href="typo.html">Typography</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>
            <!-- END MENU SIDEBAR-->

            <!-- PAGE CONTAINER-->
            <div class="page-container">
                <!-- HEADER DESKTOP-->
                <header class="header-desktop">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="header-wrap">
                                <form class="form-header" action="" method="POST">
                                    <input class="au-input au-input--xl" type="text" name="search" placeholder="Search for datas &amp; reports..." />
                                    <button class="au-btn--submit" type="submit">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </form>
                                <div class="header-button">
                                    <div class="noti-wrap">
                                        <div class="noti__item js-item-menu">
                                            <i class="far fa-comment-dots"></i>
                                            <span class="quantity">1</span>
                                            <div class="mess-dropdown js-dropdown">
                                                <div class="mess__title">
                                                    <p>You have 2 news message</p>
                                                </div>
                                                <div class="mess__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="${pageContext.request.contextPath}/static/images/icon/avatar-06.jpg" alt="Michelle Moreno" />
                                                    </div>
                                                    <div class="content">
                                                        <h6>Michelle Moreno</h6>
                                                        <p>Have sent a photo</p>
                                                        <span class="time">3 min ago</span>
                                                    </div>
                                                </div>
                                                <div class="mess__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="${pageContext.request.contextPath}/static/images/icon/avatar-04.jpg" alt="Diane Myers" />
                                                    </div>
                                                    <div class="content">
                                                        <h6>Diane Myers</h6>
                                                        <p>You are now connected on message</p>
                                                        <span class="time">Yesterday</span>
                                                    </div>
                                                </div>
                                                <div class="mess__footer">
                                                    <a href="#">View all messages</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="noti__item js-item-menu">
                                            <i class="far fa-envelope"></i>
                                            <span class="quantity">1</span>
                                            <div class="email-dropdown js-dropdown">
                                                <div class="email__title">
                                                    <p>You have 3 New Emails</p>
                                                </div>
                                                <div class="email__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="${pageContext.request.contextPath}/static/images/icon/avatar-06.jpg" alt="Cynthia Harvey" />
                                                    </div>
                                                    <div class="content">
                                                        <p>Meeting about new dashboard...</p>
                                                        <span>Cynthia Harvey, 3 min ago</span>
                                                    </div>
                                                </div>
                                                <div class="email__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="${pageContext.request.contextPath}/static/images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
                                                    </div>
                                                    <div class="content">
                                                        <p>Meeting about new dashboard...</p>
                                                        <span>Cynthia Harvey, Yesterday</span>
                                                    </div>
                                                </div>
                                                <div class="email__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="${pageContext.request.contextPath}/static/images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
                                                    </div>
                                                    <div class="content">
                                                        <p>Meeting about new dashboard...</p>
                                                        <span>Cynthia Harvey, April 12,,2018</span>
                                                    </div>
                                                </div>
                                                <div class="email__footer">
                                                    <a href="#">See all emails</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="noti__item js-item-menu">
                                            <i class="far fa-bell"></i>
                                            <span class="quantity">3</span>
                                            <div class="notifi-dropdown js-dropdown">
                                                <div class="notifi__title">
                                                    <p>You have 3 Notifications</p>
                                                </div>
                                                <div class="notifi__item">
                                                    <div class="bg-c1 img-cir img-40">
                                                        <i class="zmdi zmdi-email-open"></i>
                                                    </div>
                                                    <div class="content">
                                                        <p>You got a email notification</p>
                                                        <span class="date">April 12, 2018 06:50</span>
                                                    </div>
                                                </div>
                                                <div class="notifi__item">
                                                    <div class="bg-c2 img-cir img-40">
                                                        <i class="zmdi zmdi-account-box"></i>
                                                    </div>
                                                    <div class="content">
                                                        <p>Your account has been blocked</p>
                                                        <span class="date">April 12, 2018 06:50</span>
                                                    </div>
                                                </div>
                                                <div class="notifi__item">
                                                    <div class="bg-c3 img-cir img-40">
                                                        <i class="zmdi zmdi-file-text"></i>
                                                    </div>
                                                    <div class="content">
                                                        <p>You got a new file</p>
                                                        <span class="date">April 12, 2018 06:50</span>
                                                    </div>
                                                </div>
                                                <div class="notifi__footer">
                                                    <a href="#">All notifications</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="account-wrap">
                                        <div class="account-item clearfix js-item-menu">
                                            <div class="image">
                                                <img src="${pageContext.request.contextPath}/static/images/icon/avatar-01.jpg" alt="Admin" />
                                            </div>
                                            <div class="content">
                                                <a class="js-acc-btn" href="#" style="color: white">Admin</a>
                                            </div>
                                            <div class="account-dropdown js-dropdown">
                                                <div class="info clearfix">
                                                    <div class="image">
                                                        <a href="#">
                                                            <img src="${pageContext.request.contextPath}/static/images/icon/avatar-01.jpg" alt="John Doe" />
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <h5 class="name">
                                                            <a href="#">john doe</a>
                                                        </h5>
                                                        <span class="email">johndoe@example.com</span>
                                                    </div>
                                                </div>
                                                <div class="account-dropdown__body">
                                                    <div class="account-dropdown__item">
                                                        <a href="admin/products/">
                                                            <i class="far fa-user"></i>Products</a>
                                                    </div>
                                                    <div class="account-dropdown__item">
                                                        <a href="admin/programs/">
                                                            <i class="far fa-user"></i>Programs</a>
                                                    </div>
                                                    <div class="account-dropdown__item">
                                                        <a href="admin/trainers/">
                                                            <i class="far fa-user"></i>Trainers</a>
                                                    </div>
                                                    <div class="account-dropdown__item">
                                                        <a href="admin/users/">
                                                            <i class="fas fa-cog"></i></i>Users</a>
                                                    </div>
                                                    <div class="account-dropdown__item">
                                                        <a href="admin/messages/">
                                                            <i class="fas fa-cog"></i></i>Messages</a>
                                                    </div>
                                                    <div class="account-dropdown__item">
                                                        <a href="welcome2">
                                                            <i class="fas fa-wallet"></i>Go to Welcome Page</a>
                                                    </div>
                                                </div>
                                                <div class="account-dropdown__footer">
                                                    <a href="logout">
                                                        <i class="fas fa-sign-out-alt"></i>Logout</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                                        <h2 class="title-1">overview</h2>
                                        <button class="au-btn au-btn-icon au-btn--blue">
                                            <i class="zmdi zmdi-plus"></i>add item</button>
                                    </div>
                                </div>
                            </div>
                            <div class="row m-t-25">
                                <div class="col-sm-6 col-lg-3">
                                    <div class="overview-item overview-item--c1">
                                        <div class="overview__inner">
                                            <div class="overview-box clearfix">
                                                <div class="icon">
                                                    <i class="zmdi zmdi-account-o"></i>
                                                </div>
                                                <div class="text">
                                                    <h2>10368</h2>
                                                    <span>members online</span>
                                                </div>
                                            </div>
                                            <div class="overview-chart">
                                                <canvas id="widgetChart1"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-3">
                                    <div class="overview-item overview-item--c2">
                                        <div class="overview__inner">
                                            <div class="overview-box clearfix">
                                                <div class="icon">
                                                    <i class="zmdi zmdi-shopping-cart"></i>
                                                </div>
                                                <div class="text">
                                                    <h2>388,688</h2>
                                                    <span>items sold</span>
                                                </div>
                                            </div>
                                            <div class="overview-chart">
                                                <canvas id="widgetChart2"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-3">
                                    <div class="overview-item overview-item--c3">
                                        <div class="overview__inner">
                                            <div class="overview-box clearfix">
                                                <div class="icon">
                                                    <i class="zmdi zmdi-calendar-note"></i>
                                                </div>
                                                <div class="text">
                                                    <h2>1,086</h2>
                                                    <span>this week</span>
                                                </div>
                                            </div>
                                            <div class="overview-chart">
                                                <canvas id="widgetChart3"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-3">
                                    <div class="overview-item overview-item--c4">
                                        <div class="overview__inner">
                                            <div class="overview-box clearfix">
                                                <div class="icon">
                                                    <i class="zmdi zmdi-money"></i>
                                                </div>
                                                <div class="text">
                                                    <h2>$1,060,386</h2>
                                                    <span>total earnings</span>
                                                </div>
                                            </div>
                                            <div class="overview-chart">
                                                <canvas id="widgetChart4"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--                            <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="au-card recent-report">
                                                                    <div class="au-card-inner">
                                                                        <h3 class="title-2">recent reports</h3>
                                                                        <div class="chart-info">
                                                                            <div class="chart-info__left">
                                                                                <div class="chart-note">
                                                                                    <span class="dot dot--blue"></span>
                                                                                    <span>products</span>
                                                                                </div>
                                                                                <div class="chart-note mr-0">
                                                                                    <span class="dot dot--green"></span>
                                                                                    <span>services</span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="chart-info__right">
                                                                                <div class="chart-statis">
                                                                                    <span class="index incre">
                                                                                        <i class="zmdi zmdi-long-arrow-up"></i>25%</span>
                                                                                    <span class="label">products</span>
                                                                                </div>
                                                                                <div class="chart-statis mr-0">
                                                                                    <span class="index decre">
                                                                                        <i class="zmdi zmdi-long-arrow-down"></i>10%</span>
                                                                                    <span class="label">services</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="recent-report__chart">
                                                                            <canvas id="recent-rep-chart"></canvas>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="au-card chart-percent-card">
                                                                    <div class="au-card-inner">
                                                                        <h3 class="title-2 tm-b-5">char by %</h3>
                                                                        <div class="row no-gutters">
                                                                            <div class="col-xl-6">
                                                                                <div class="chart-note-wrap">
                                                                                    <div class="chart-note mr-0 d-block">
                                                                                        <span class="dot dot--blue"></span>
                                                                                        <span>products</span>
                                                                                    </div>
                                                                                    <div class="chart-note mr-0 d-block">
                                                                                        <span class="dot dot--red"></span>
                                                                                        <span>services</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-xl-6">
                                                                                <div class="percent-chart">
                                                                                    <canvas id="percent-chart"></canvas>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>-->
                            <div class="row">
                                <div class="col-lg-9">
                                    <h2 class="title-1 m-b-25">Products</h2>
                                    <div class="table-responsive table--no-card m-b-40">
                                        <table class="table table-borderless table-striped table-earning">
                                            <thead>
                                                <tr>
                                                    <th>product ID</th>
                                                    <th>description</th>
                                                    <th class="text-right">price</th>
                                                    <th class="text-right">quantity</th>
                                                    <th class="text-right">image</th>
                                                    <th class="text-right">Edit</th>
                                                    <th class="text-right">Delete</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${products}" var="product">
                                                    <tr>
                                                        <td>${product.idproduct}</td>
                                                        <td>${product.description}</td>
                                                        <td>${product.price}</td>
                                                        <td>${product.name}</td>
                                                        <td>${product.image}</td>
                                                        <td><a href="<c:url value='/edit-product-{${product.idproduct}}' />" class="btn btn-success custom-width">edit</a></td>
                                                        <td><a href="<c:url value='/delete-product-{${product.idproduct}}' />" class="btn btn-danger custom-width">delete</a></td>

                                                    </tr>
                                                </c:forEach>                                 
                                            </tbody>
                                        </table>                                  
                                    </div>  
                                    <div class="well">
                                        <a href="<c:url value='/newproduct' />">Add New Product</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-9">
                                        <h2 class="title-1 m-b-25">Programs</h2>
                                        <div class="table-responsive table--no-card m-b-40">
                                            <table class="table table-borderless table-striped table-earning">
                                                <thead>
                                                    <tr>
                                                        <th>Program ID</th>
                                                        <th>sports</th>
                                                        <th>prices</th>
                                                        <th>access</th>
                                                            <sec:authorize access="hasRole('ADMIN')">
                                                            <th width="100"></th>
                                                            </sec:authorize>
                                                            <sec:authorize access="hasRole('ADMIN')">
                                                            <th width="100"></th>
                                                            </sec:authorize>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${programs}" var="program">
                                                        <tr>
                                                            <td>${program.idprogram}</td>
                                                            <td>${program.sports}</td>
                                                            <td>${program.prices}</td>
                                                            <td>${program.access}</td>
                                                            <sec:authorize access="hasRole('ADMIN')">
                                                                <td><a href="<c:url value='/edit-product-${program.idprogram}' />" class="btn btn-success custom-width">edit</a></td>
                                                            </sec:authorize>
                                                            <sec:authorize access="hasRole('ADMIN')">
                                                                <td><a href="<c:url value='/delete-product-${program.idprogram}' />" class="btn btn-danger custom-width">delete</a></td>
                                                            </sec:authorize>
                                                        </tr>
                                                    </c:forEach>                                 
                                                </tbody>
                                            </table>                                  
                                        </div>  
                                        <div class="well">
                                            <a href="<c:url value='/newprogram' />">Add New Program</a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-9">
                                            <h2 class="title-1 m-b-25">Users</h2>
                                            <a href="userlist">Users</a>

                                            <div class="table-responsive table--no-card m-b-40">
                                                <table class="table table-borderless table-striped table-earning">
                                                    <thead>
                                                        <tr>
                                                            <th>User ID</th>
                                                            <th>First Name</th>
                                                            <th>Last Name</th>
                                                            <th>Username</th>
                                                            <th>Email</th>
                                                            <th>Edit</th>
                                                            <th>Delete</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${users}" var="user">
                                                            <tr>
                                                                <td>${user.id}</td>
                                                                <td>${user.firstName}</td>
                                                                <td>${user.lastName}</td>
                                                                <td>${user.ssoId}</td>
                                                                <td>${user.email}</td>
                                                                <sec:authorize access="hasRole('ADMIN')">
                                                                    <td><a href="edit-user-${user.ssoId}" class="btn btn-success custom-width">edit</a></td>
                                                                </sec:authorize>
                                                                <sec:authorize access="hasRole('ADMIN')">
                                                                    <td><a href="delete-user-${user.ssoId}" class="btn btn-danger custom-width">delete</a></td>
                                                                </sec:authorize>
                                                            </tr>
                                                        </c:forEach>                                 
                                                    </tbody>
                                                </table>                                  
                                            </div>  
                                            <div class="well">
                                                <a href="<c:url value='/newprogram' />">Add New User</a>
                                            </div>
                                        </div>
                                        <!--                                <div class="col-lg-3">
                                                                            <h2 class="title-1 m-b-25">Top countries</h2>
                                                                            <div class="au-card au-card--bg-blue au-card-top-countries m-b-40">
                                                                                <div class="au-card-inner">
                                                                                    <div class="table-responsive">
                                                                                        <table class="table table-top-countries">
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <td>United States</td>
                                                                                                    <td class="text-right">$119,366.96</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Australia</td>
                                                                                                    <td class="text-right">$70,261.65</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>United Kingdom</td>
                                                                                                    <td class="text-right">$46,399.22</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Turkey</td>
                                                                                                    <td class="text-right">$35,364.90</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Germany</td>
                                                                                                    <td class="text-right">$20,366.96</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>France</td>
                                                                                                    <td class="text-right">$10,366.96</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Australia</td>
                                                                                                    <td class="text-right">$5,366.96</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Italy</td>
                                                                                                    <td class="text-right">$1639.32</td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>-->
                                    </div>
                                    <!--                            <div class="row">
                                                                    <div class="col-lg-6">
                                                                        <div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
                                                                            <div class="au-card-title" style="background-image:url('images/bg-title-01.jpg');">
                                                                                <div class="bg-overlay bg-overlay--blue"></div>
                                                                                <h3>
                                                                                    <i class="zmdi zmdi-account-calendar"></i>26 April, 2018</h3>
                                                                                <button class="au-btn-plus">
                                                                                    <i class="zmdi zmdi-plus"></i>
                                                                                </button>
                                                                            </div>
                                                                            <div class="au-task js-list-load">
                                                                                <div class="au-task__title">
                                                                                    <p>Tasks for John Doe</p>
                                                                                </div>
                                                                                <div class="au-task-list js-scrollbar3">
                                                                                    <div class="au-task__item au-task__item--danger">
                                                                                        <div class="au-task__item-inner">
                                                                                            <h5 class="task">
                                                                                                <a href="#">Meeting about plan for Admin Template 2018</a>
                                                                                            </h5>
                                                                                            <span class="time">10:00 AM</span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="au-task__item au-task__item--warning">
                                                                                        <div class="au-task__item-inner">
                                                                                            <h5 class="task">
                                                                                                <a href="#">Create new task for Dashboard</a>
                                                                                            </h5>
                                                                                            <span class="time">11:00 AM</span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="au-task__item au-task__item--primary">
                                                                                        <div class="au-task__item-inner">
                                                                                            <h5 class="task">
                                                                                                <a href="#">Meeting about plan for Admin Template 2018</a>
                                                                                            </h5>
                                                                                            <span class="time">02:00 PM</span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="au-task__item au-task__item--success">
                                                                                        <div class="au-task__item-inner">
                                                                                            <h5 class="task">
                                                                                                <a href="#">Create new task for Dashboard</a>
                                                                                            </h5>
                                                                                            <span class="time">03:30 PM</span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="au-task__item au-task__item--danger js-load-item">
                                                                                        <div class="au-task__item-inner">
                                                                                            <h5 class="task">
                                                                                                <a href="#">Meeting about plan for Admin Template 2018</a>
                                                                                            </h5>
                                                                                            <span class="time">10:00 AM</span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="au-task__item au-task__item--warning js-load-item">
                                                                                        <div class="au-task__item-inner">
                                                                                            <h5 class="task">
                                                                                                <a href="#">Create new task for Dashboard</a>
                                                                                            </h5>
                                                                                            <span class="time">11:00 AM</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="au-task__footer">
                                                                                    <button class="au-btn au-btn-load js-load-btn">load more</button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
                                                                            <div class="au-card-title" style="background-image:url('images/bg-title-02.jpg');">
                                                                                <div class="bg-overlay bg-overlay--blue"></div>
                                                                                <h3>
                                                                                    <i class="zmdi zmdi-comment-text"></i>New Messages</h3>
                                                                                <button class="au-btn-plus">
                                                                                    <i class="zmdi zmdi-plus"></i>
                                                                                </button>
                                                                            </div>
                                                                            <div class="au-inbox-wrap js-inbox-wrap">
                                                                                <div class="au-message js-list-load">
                                                                                    <div class="au-message__noti">
                                                                                        <p>You Have
                                                                                            <span>2</span>
                                    
                                                                                            new messages
                                                                                        </p>
                                                                                    </div>
                                                                                    <div class="au-message-list">
                                                                                        <div class="au-message__item unread">
                                                                                            <div class="au-message__item-inner">
                                                                                                <div class="au-message__item-text">
                                                                                                    <div class="avatar-wrap">
                                                                                                        <div class="avatar">
                                                                                                            <img src="images/icon/avatar-02.jpg" alt="John Smith">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="text">
                                                                                                        <h5 class="name">John Smith</h5>
                                                                                                        <p>Have sent a photo</p>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="au-message__item-time">
                                                                                                    <span>12 Min ago</span>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="au-message__item unread">
                                                                                            <div class="au-message__item-inner">
                                                                                                <div class="au-message__item-text">
                                                                                                    <div class="avatar-wrap online">
                                                                                                        <div class="avatar">
                                                                                                            <img src="images/icon/avatar-03.jpg" alt="Nicholas Martinez">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="text">
                                                                                                        <h5 class="name">Nicholas Martinez</h5>
                                                                                                        <p>You are now connected on message</p>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="au-message__item-time">
                                                                                                    <span>11:00 PM</span>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="au-message__item">
                                                                                            <div class="au-message__item-inner">
                                                                                                <div class="au-message__item-text">
                                                                                                    <div class="avatar-wrap online">
                                                                                                        <div class="avatar">
                                                                                                            <img src="images/icon/avatar-04.jpg" alt="Michelle Sims">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="text">
                                                                                                        <h5 class="name">Michelle Sims</h5>
                                                                                                        <p>Lorem ipsum dolor sit amet</p>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="au-message__item-time">
                                                                                                    <span>Yesterday</span>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="au-message__item">
                                                                                            <div class="au-message__item-inner">
                                                                                                <div class="au-message__item-text">
                                                                                                    <div class="avatar-wrap">
                                                                                                        <div class="avatar">
                                                                                                            <img src="images/icon/avatar-05.jpg" alt="Michelle Sims">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="text">
                                                                                                        <h5 class="name">Michelle Sims</h5>
                                                                                                        <p>Purus feugiat finibus</p>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="au-message__item-time">
                                                                                                    <span>Sunday</span>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="au-message__item js-load-item">
                                                                                            <div class="au-message__item-inner">
                                                                                                <div class="au-message__item-text">
                                                                                                    <div class="avatar-wrap online">
                                                                                                        <div class="avatar">
                                                                                                            <img src="images/icon/avatar-04.jpg" alt="Michelle Sims">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="text">
                                                                                                        <h5 class="name">Michelle Sims</h5>
                                                                                                        <p>Lorem ipsum dolor sit amet</p>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="au-message__item-time">
                                                                                                    <span>Yesterday</span>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="au-message__item js-load-item">
                                                                                            <div class="au-message__item-inner">
                                                                                                <div class="au-message__item-text">
                                                                                                    <div class="avatar-wrap">
                                                                                                        <div class="avatar">
                                                                                                            <img src="images/icon/avatar-05.jpg" alt="Michelle Sims">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="text">
                                                                                                        <h5 class="name">Michelle Sims</h5>
                                                                                                        <p>Purus feugiat finibus</p>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="au-message__item-time">
                                                                                                    <span>Sunday</span>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="au-message__footer">
                                                                                        <button class="au-btn au-btn-load js-load-btn">load more</button>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="au-chat">
                                                                                    <div class="au-chat__title">
                                                                                        <div class="au-chat-info">
                                                                                            <div class="avatar-wrap online">
                                                                                                <div class="avatar avatar--small">
                                                                                                    <img src="images/icon/avatar-02.jpg" alt="John Smith">
                                                                                                </div>
                                                                                            </div>
                                                                                            <span class="nick">
                                                                                                <a href="#">John Smith</a>
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="au-chat__content">
                                                                                        <div class="recei-mess-wrap">
                                                                                            <span class="mess-time">12 Min ago</span>
                                                                                            <div class="recei-mess__inner">
                                                                                                <div class="avatar avatar--tiny">
                                                                                                    <img src="images/icon/avatar-02.jpg" alt="John Smith">
                                                                                                </div>
                                                                                                <div class="recei-mess-list">
                                                                                                    <div class="recei-mess">Lorem ipsum dolor sit amet, consectetur adipiscing elit non iaculis</div>
                                                                                                    <div class="recei-mess">Donec tempor, sapien ac viverra</div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="send-mess-wrap">
                                                                                            <span class="mess-time">30 Sec ago</span>
                                                                                            <div class="send-mess__inner">
                                                                                                <div class="send-mess-list">
                                                                                                    <div class="send-mess">Lorem ipsum dolor sit amet, consectetur adipiscing elit non iaculis</div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="au-chat-textfield">
                                                                                        <form class="au-form-icon">
                                                                                            <input class="au-input au-input--full au-input--h65" type="text" placeholder="Type a message">
                                                                                            <button class="au-input-icon">
                                                                                                <i class="zmdi zmdi-camera"></i>
                                                                                            </button>
                                                                                        </form>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>-->
                                </div>
                            </div>
                        </div>
                        <!-- END MAIN CONTENT-->
                        <!-- END PAGE CONTAINER-->
                    </div>

                </div>

                <!-- Jquery JS-->
                <script src="${pageContext.request.contextPath}/static/vendor/jquery-3.2.1.min.js"></script>
                <!-- Bootstrap JS-->
                <script src="${pageContext.request.contextPath}/static/vendor/bootstrap-4.1/popper.min.js"></script>
                <script src="${pageContext.request.contextPath}/static/vendor/bootstrap-4.1/bootstrap.min.js"></script>
                <!-- Vendor JS       -->
                <script src="${pageContext.request.contextPath}/static/vendor/slick/slick.min.js">
                </script>
                <script src="${pageContext.request.contextPath}/static/vendor/wow/wow.min.js"></script>
                <script src="${pageContext.request.contextPath}/static/vendor/animsition/animsition.min.js"></script>
                <script src="${pageContext.request.contextPath}/static/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
                </script>
                <script src="${pageContext.request.contextPath}/static/vendor/counter-up/jquery.waypoints.min.js"></script>
                <script src="/static/vendor/counter-up/jquery.counterup.min.js">
                </script>
                <script src="${pageContext.request.contextPath}/static/vendor/circle-progress/circle-progress.min.js"></script>
                <script src="${pageContext.request.contextPath}/static/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
                <script src="${pageContext.request.contextPath}/static/vendor/chartjs/Chart.bundle.min.js"></script>
                <script src="${pageContext.request.contextPath}/static/vendor/select2/select2.min.js">
                </script>

                <!-- Main JS-->
                <script src="${pageContext.request.contextPath}/static/js/main.js"></script>

                </body>

                </html>
                <!-- end document-->

