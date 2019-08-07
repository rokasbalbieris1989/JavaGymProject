<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Programs</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
              integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
        <script src="${pageContext.request.contextPath}/static/js/store.js"></script>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="<c:url value="/welcome2" />">Java Gym</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span><i class="fas fa-bars"></i></span>
                </button>
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="<c:url value="/welcome2" />" class="nav-link">Home</a></li>
                        <li class="nav-item active"><a href="<c:url value="/commerce#programs" />" class="nav-link">Programs</a></li>
                        <li class="nav-item"><a href="<c:url value="/" />" class="nav-link">Products</a></li>
                        <li class="nav-item"><a href="#contact" class="nav-link">Contact</a></li>
                        <li class="nav-item"><a href="<c:url value="/chat" />" class="nav-link">Chat</a></li>
                        <li class="nav-item dropdown"><a href="<c:url value="/myprofile-${loggedinuser}" />" class="nav-link dropbtn"><i
                                    class="fas fa-user"></i>&nbsp;${loggedinuser}&nbsp;<i class="fas fa-sort-down"></i></a>
                            <div class="dropdown-content">
                                <a href="<c:url value="/myprofile-${loggedinuser}" />">My Profile</a>
                                <a href="<c:url value="/logout" />">Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <button id="shopBag" type="button"><a href="<c:url value="/commerce#cart" />" class="nav-link"><i
                            class="fas fa-lg fa-shopping-bag"></i></a></button>
            </div>
        </nav>
        <!-- END nav -->

        <!-- Section Hero -->
        <section class="hero-wrap js-fullheight">
            <div class="overlay" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_2.jpg);" data-stellar-background-ratio="0.5"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-end">
                    <div class="col-md-12 text-center ftco-animate">
                        <h1 class="mb-3 bread" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_1.jpg);" data-stellar-background-ratio="0.5">
                            Programs</h1>
                        <p class="breadcrumbs"><span>Programs</span></p>
                    </div>
                </div>
            </div>
        </section>

        <!--Main Programs-->
        <section id="programs" class="ftco-section">
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-10 heading-section text-center ftco-animate">
                        <h2 class="mb-3">Pricing For Our Programs</h2>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${programs}" var="program">
                        <div class=" shop-item col-md-4">
                            <div class="pricing-wrap ftco-animate img">
                                <img class="shop-item-image" src="${pageContext.request.contextPath}/${program.images}" style="width: 100%; height: 100%;">
                                <div class="title p-4" style="background-color: red;">
                                    <h3 class="shop-item-title">${program.sports}</h3>
                                </div>
                                <div class="text p-4 d-flex align-items-end" style="background-color: rgba(0, 0, 0, 0.849);">
                                    <a href="#" class="shop-item-button btn-custom px-4 py-2">Join Now</a>

                                    <div>
                                        <span class="shop-item-price price">&#36;${program.prices}</span>
                                        <h3><a href="#">${program.sports}&nbsp;<i class="fas fa-chevron-circle-down"></i></a></h3>
                                        <p class="shop-item-detail" style="color: white;">${program.description}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </section>



        <!-- Section Hero Products-->
        <section id="products" class="hero-wrap js-fullheight">
            <div class="overlay" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_2.jpg);" data-stellar-background-ratio="0.5"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-end">
                    <div class="col-md-12 text-center ftco-animate">
                        <h1 class="mb-3 bread" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_1.jpg);" data-stellar-background-ratio="0.5">
                            Products</h1>
                        <p class="breadcrumbs"><span>Products</span></p>
                    </div>
                </div>
            </div>
        </section>




        <!-- Filters -->

        <div class="container">
            <form>
                <div class="row filter-row">
                    <p style="color: white;"><i class="fas fa-filter fa-lg"></i></p>
                    <div class="form-group col-md-3">
                        <select data-filter="make" class="filter-category filter form-control">
                            <option class="filter-option" value="">Show All Categories</option>
                            <c:forEach items="${products}" var="product">
                                <option class="filter-option" value="">${product.category}</option>
                            </c:forEach>
                            <!--                            <option class="filter-option" value="">Equipment</option>
                                                        <option class="filter-option" value="">Jump Ropes</option>
                                                        <option class="filter-option" value="">Creatine</option>
                                                        <option class="filter-option" value="">Protein</option>-->
                        </select>
                    </div>
                    <div class="form-group col-md-3">
                        <select data-filter="model" class="filter-brand filter form-control">
                            <option class="filter-option" value="">Show All Brands</option>
                            <c:forEach items="${products}" var="product">
                                <option class="filter-option" value="">${product.brand}</option>
                            </c:forEach>
                            <!--                            <option class="filter-option" value="">Show All</option>
                                                        <option class="filter-option" value="">MuscleTech</option>
                                                        <option class="filter-option" value="">Optimum Nutrition</option>
                                                        <option class="filter-option" value="">Befect</option>
                                                        <option class="filter-option" value="">Monkey</option>
                                                        <option class="filter-option" value="">Beeyeo</option>
                                                        <option class="filter-option" value="">Yeego</option>-->
                        </select>
                    </div>
                </div>
            </form>
        </div>

        <!-- end Filters -->


        <div class="container page-wrapper">

            <div class="shop-items page-inner">
                <div class="row">
                    <c:forEach items="${products}" var="product">
                        <div class="shop-item el-wrapper col-md-3">
                            <div class="box-up">
                                <img class="shop-item-image img" src="${pageContext.request.contextPath}/${product.image}">
                                <div class="img-info">
                                    <div class="info-inner">
                                        <span class="shop-item-title p-name">${product.name}</span>
                                        <span class="p-company">Description: ${product.description}</span>
                                    </div>
<!--                                        <div class="a-size"><a href="<c:url value="/singleProduct-${product.idproduct}" />"><button type="button" title="View">View Details<br><i
                                                    class="fas fa-eye fa-2x"></i></button></a></div>-->
                                </div>
                            </div>

                            <div class="shop-item-details box-down">
                                <div class="h-bg">
                                    <div class="h-bg-inner"></div>
                                </div>
                                <a class="cart" href="#">
                                    <span class="shop-item-price price">&#36;${product.price}</span>
                                    <span class="shop-item-button add-to-cart">BUY</span>
                                </a>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </div>





        <!-- Section Hero Cart -->
        <section id="cart" class="hero-wrap js-fullheight">
            <div class="overlay" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_2.jpg);" data-stellar-background-ratio="0.5"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-end">
                    <div class="col-md-12 text-center ftco-animate">
                        <h1 class="mb-3 bread" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_1.jpg);" data-stellar-background-ratio="0.5">
                            Cart</h1>
                        <p class="breadcrumbs"><span>Cart</span></p>
                    </div>
                </div>
            </div>
        </section>
        <section class="container content-section">
            <div class="cart-row">
                <span class="cart-item cart-header cart-column">ITEM</span>
                <span class="cart-price cart-header cart-column">PRICE</span>
                <span class="cart-quantity cart-header cart-column">QUANTITY</span>
            </div>
            <div class="cart-items">
            </div>
            <div class="cart-total">
                <strong class="cart-total-title">Total</strong>
                <span class="cart-total-price"><span>$</span>0</span>
            </div>

            <div id="paypal-button-container" style="width: 200px; float: right;">
                <script src="https://www.paypal.com/sdk/js?client-id=sb"></script>
                <script>
                    paypal.Buttons().render('#paypal-button-container');
                </script>
            </div>
        </section>


        <!--================ start footer Area  =================-->
        <footer class="ftco-footer ftco-section img">
            <div class="overlay"></div>
            <div class="container">
                <div class="row mb-5">
                    <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">About Us</h2>
                            <p>One thing we’ve found is that exercise is always easier when you’ve got people supporting you. Java Gym
                                offers members a community of people who make each other strong. </p>
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
                                <li><a href="<c:url value="/commerce#programs" />" class="py-2 d-block">Crossfit</a></li>
                                <li><a href="<c:url value="/commerce#programs" />" class="py-2 d-block">Aerobics</a></li>
                                <li><a href="<c:url value="/commerce#programs" />" class="py-2 d-block">Fitness</a></li>
                                <li><a href="<c:url value="/commerce#programs" />" class="py-2 d-block">Yoga</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 mb-5 mb-md-5">
                        <div class="ftco-footer-widget mb-4 ml-md-4">
                            <h2 class="ftco-heading-2">Products</h2>
                            <ul class="list-unstyled">
                                <li><a href="<c:url value="/commerce#products" />" class="py-2 d-block">Jump Ropes</a></li>
                                <li><a href="<c:url value="/commerce#products" />" class="py-2 d-block">Equipment</a></li>
                                <li><a href="<c:url value="/commerce#products" />" class="py-2 d-block">Creatine</a></li>
                                <li><a href="<c:url value="/commerce#products" />" class="py-2 d-block">Protein</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Have a Questions?</h2>
                            <div class="block-23 mb-3">
                                <ul>
                                    <li><span><i class="fas fa-map-marker-alt"></i></span><span class="text">&nbsp;9884 Kahakai Rd Waimea,
                                            HI 96796, Hawaii, USA </span></li>
                                    <li><a href="#"><span><i class="fas fa-phone"></i></span><span class="text">&nbsp;+2 392 3929
                                                210</span></a></li>
                                    <li><a href="#"><span><i class="fas fa-envelope"></i></span><span
                                                class="text">&nbsp;info@javagym.com</span></a></li>
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
        <!--================ End footer Area  =================-->

        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                    stroke="#F96D00" /></svg></div>



        <script src="https://www.paypal.com/sdk/js?client-id=SB_AXCd2iEX7_x_rRbB_cfQPKfVOTah1tdxpJYlAN7dKB8K_5R7EzUTrVXNKUf1barqbDVC-UuPkjS-bRP7"></script>
        <script>
            paypal.Button.render({
                // Set up a payment
                payment: function (data, actions) {
                    return actions.payment.create({
                        transactions: [{
                                amount: {
                                    total: document.querySelector(".cart-total-price").value,
                                    currency: 'USD'
                                }
                            }]
                    });
                },
                // Execute the payment
                onAuthorize: function (data, actions) {
                    return actions.payment.execute().then(function () {
                        // Show a confirmation message to the buyer
                        window.alert('Thank you for your purchase!');
                    });
                }
            }, '#paypal-button');

        </script>
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