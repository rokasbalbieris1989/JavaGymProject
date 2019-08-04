<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Products</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css" />
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
  </head>

  <body>
    <!--================Header Menu Area =================-->
   
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="<c:url value="/welcome2" />">Java Gym</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span><i class="fas fa-bars"></i></span>
        </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="<c:url value="/welcome2" />" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="programs.html" class="nav-link">Programs</a></li>
	          <li class="nav-item active"><a href="products.html" class="nav-link">Products</a></li>
            <li class="nav-item"><a href="#contact" class="nav-link">Contact</a></li>
            <li class="nav-item dropdown"><a href="<c:url value="/myprofile" />" class="nav-link dropbtn"><i class="fas fa-user"></i>&nbsp;Username&nbsp;<i class="fas fa-sort-down"></i></a>
              <div class="dropdown-content">
                <a href="<c:url value="/myprofile" />">My Profile</a>
                <a href="<c:url value="/logout" />">Logout</a>
              </div>
            </li>
          </ul>
        </div>
        <button id = "shopBag" type="button"><a href="#" class="nav-link"><i class="fas fa-lg fa-shopping-bag"></i></a></button>
		  </div>
	  </nav>
               
    <!--================Header Menu Area =================-->

        <!-- Section Hero -->
    <section class="hero-wrap js-fullheight">
      <div class="overlay" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_2.jpg);" data-stellar-background-ratio="0.5"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-end">
          <div class="col-md-12 text-center ftco-animate">
            <h1 class="mb-3 bread" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_1.jpg);" data-stellar-background-ratio="0.5">Products</h1>
            <p class="breadcrumbs"><span>Products</span></p>
          </div>
        </div>
      </div>
    </section>            
    

    <!-- Main Body -->

  <!-- Cards -->
  
      <div class="container page-wrapper">
        

          
     <!-- Filters -->
     
     <div class="product-filters col-md-6">
        <div class="product-filters-tab">
          <h4 class="filterTtl">Category</h4>
          <ul class="categories-menu menu vertical nested is-active">
             <a href="#" class="clear-all" id="category-clear-all"><i class="fas fa-times"></i>&nbsp;Clear All</a> 
             <li><input class="category-clear-selection" id="category-checkbox1" type="checkbox"><label for="category-checkbox1" style="color:white;">&nbsp;Creatine</label></li>
             <li><input class="category-clear-selection" id="category-checkbox2" type="checkbox"><label for="category-checkbox2" style="color:white;">&nbsp;Protein</label></li>
             <li><input class="category-clear-selection" id="category-checkbox3" type="checkbox"><label for="category-checkbox3" style="color:white;">&nbsp;Jump Ropes</label></li>
             <li><input class="category-clear-selection" id="category-checkbox4" type="checkbox"><label for="category-checkbox4" style="color:white;">&nbsp;Equipment</label></li>
           </ul>
          </div>
       
       <div class="product-filters-tab">
          <h4 class="filterTtl">Brand</h4>
          <ul class="categories-menu menu vertical nested">
            <a href="#" class="clear-all" id="color-clear-all"><i class="fas fa-times"></i>&nbsp;Clear All</a>  
            <li><input id="color-checkbox1" type="checkbox"><label for="color-checkbox1" style="color:white;">&nbsp;MuscleTech</label></li>
            <li><input id="color-checkbox2" type="checkbox"><label for="color-checkbox2" style="color:white;">&nbsp;Optimum Nutrition</label></li>
            <li><input id="color-checkbox3" type="checkbox"><label for="color-checkbox3" style="color:white;">&nbsp;Beeyeo</label></li>
            <li><input id="color-checkbox4" type="checkbox"><label for="color-checkbox4" style="color:white;">&nbsp;Yeego</label></li>
            <li><input id="color-checkbox5" type="checkbox"><label for="color-checkbox5" style="color:white;">&nbsp;Befekt</label></li>
            <li><input id="color-checkbox6" type="checkbox"><label for="color-checkbox6" style="color:white;">&nbsp;Monkey</label></li>
          </ul>
        </div>
       <div class="product-filters-tab"> 
          <h4 class="filterTtl">Price</h4>
          <ul class="categories-menu menu vertical nested">
            <a href="#" class="clear-all" id="price-clear-all"><i class="fas fa-times"></i>&nbsp;Clear All</a> 
            <li><input id="price-checkbox1" type="checkbox"><label for="price-checkbox1" style="color:white;">&nbsp;Under $25</label></li>
            <li><input id="price-checkbox2" type="checkbox"><label for="price-checkbox2" style="color:white;">&nbsp;$25–$50</label></li>
            <li><input id="price-checkbox3" type="checkbox"><label for="price-checkbox3" style="color:white;">&nbsp;$50–$250</label></li>
            <li><input id="price-checkbox4" type="checkbox"><label for="price-checkbox4" style="color:white;">&nbsp;$250–$600</label></li>
            <li><input id="price-checkbox5" type="checkbox"><label for="price-checkbox4" style="color:white;">&nbsp;$600–$1,000</label></li>
          </ul>
        </div>
  </div>

    <!-- end Filters -->

<div class="page-inner">
          <div class="row ">
            <div class="el-wrapper col-sm-3">
              <div class="box-up">
                <img class="img" src="${pageContext.request.contextPath}/static/images/creatine2.jpg" alt="creatine">
                <div class="img-info">
                  <div class="info-inner">
                    <span class="p-name">MuscleTech</span>
                    <span class="p-company">Platinum Creatine Monohydrate Powder, 100% Pure, 14.1 Oz (80 Svg)</span>
                  </div>
                  <div class="a-size"><button type="button" title="View">View Details<br><i class="fas fa-eye fa-2x"></i></button></div>
                </div>
              </div>
      
              <div class="box-down">
                <div class="h-bg">
                  <div class="h-bg-inner"></div>
                </div>
      
                <a class="cart" href="#">
                  <span class="price">$11.00</span>
                  <span class="add-to-cart">
                    <span class="txt">Add in cart</span>
                  </span>
                </a>
              </div>
            </div>
          
        
          <div class="el-wrapper col-sm-3">
              <div class="box-up">
                <img class="img" src="${pageContext.request.contextPath}/static/images/creatine2.jpg" alt="creatine">
                <div class="img-info">
                  <div class="info-inner">
                    <span class="p-name">MuscleTech</span>
                    <span class="p-company">Platinum Creatine Monohydrate Powder, 100% Pure, 14.1 Oz (80 Svg)</span>
                  </div>
                  <div class="a-size"><button type="button" title="View">View Details<br><i class="fas fa-eye fa-2x"></i></button></div>
                </div>
              </div>
      
              <div class="box-down">
                <div class="h-bg">
                  <div class="h-bg-inner"></div>
                </div>
      
                <a class="cart" href="#">
                  <span class="price">$11.00</span>
                  <span class="add-to-cart">
                    <span class="txt">Add in cart</span>
                  </span>
                </a>
              </div>
            </div>
          
            <div class="el-wrapper col-sm-3">
                <div class="box-up">
                  <img class="img" src="${pageContext.request.contextPath}/static/images/creatine2.jpg" alt="creatine">
                  <div class="img-info">
                    <div class="info-inner">
                      <span class="p-name">MuscleTech</span>
                      <span class="p-company">Platinum Creatine Monohydrate Powder, 100% Pure, 14.1 Oz (80 Svg)</span>
                    </div>
                    <div class="a-size"><button type="button" title="View">View Details<br><i class="fas fa-eye fa-2x"></i></button></div>
                  </div>
                </div>
        
                <div class="box-down">
                  <div class="h-bg">
                    <div class="h-bg-inner"></div>
                  </div>
        
                  <a class="cart" href="#">
                    <span class="price">$11.00</span>
                    <span class="add-to-cart">
                      <span class="txt">Add in cart</span>
                    </span>
                  </a>
                </div>
              </div>


          </div>


          <div class="row ">
              <div class="el-wrapper col-sm-3">
                <div class="box-up">
                  <img class="img" src="${pageContext.request.contextPath}/static/images/creatine2.jpg" alt="creatine">
                  <div class="img-info">
                    <div class="info-inner">
                      <span class="p-name">MuscleTech</span>
                      <span class="p-company">Platinum Creatine Monohydrate Powder, 100% Pure, 14.1 Oz (80 Svg)</span>
                    </div>
                    <div class="a-size"><button type="button" title="View">View Details<br><i class="fas fa-eye fa-2x"></i></button></div>
                  </div>
                </div>
        
                <div class="box-down">
                  <div class="h-bg">
                    <div class="h-bg-inner"></div>
                  </div>
        
                  <a class="cart" href="#">
                    <span class="price">$11.00</span>
                    <span class="add-to-cart">
                      <span class="txt">Add in cart</span>
                    </span>
                  </a>
                </div>
              </div>
            
          
            <div class="el-wrapper col-sm-3">
                <div class="box-up">
                  <img class="img" src="${pageContext.request.contextPath}/static/images/creatine2.jpg" alt="creatine">
                  <div class="img-info">
                    <div class="info-inner">
                      <span class="p-name">MuscleTech</span>
                      <span class="p-company">Platinum Creatine Monohydrate Powder, 100% Pure, 14.1 Oz (80 Svg)</span>
                    </div>
                    <div class="a-size"><button type="button" title="View">View Details<br><i class="fas fa-eye fa-2x"></i></button></div>
                  </div>
                </div>
        
                <div class="box-down">
                  <div class="h-bg">
                    <div class="h-bg-inner"></div>
                  </div>
        
                  <a class="cart" href="#">
                    <span class="price">$11.00</span>
                    <span class="add-to-cart">
                      <span class="txt">Add in cart</span>
                    </span>
                  </a>
                </div>
              </div>
            
              <div class="el-wrapper col-sm-3">
                  <div class="box-up">
                    <img class="img" src="${pageContext.request.contextPath}/static/images/creatine2.jpg" alt="creatine">
                    <div class="img-info">
                      <div class="info-inner">
                        <span class="p-name">MuscleTech</span>
                        <span class="p-company">Platinum Creatine Monohydrate Powder, 100% Pure, 14.1 Oz (80 Svg)</span>
                      </div>
                      <div class="a-size"><button type="button" title="View">View Details<br><i class="fas fa-eye fa-2x"></i></button></div>
                    </div>
                  </div>
          
                  <div class="box-down">
                    <div class="h-bg">
                      <div class="h-bg-inner"></div>
                    </div>
          
                    <a class="cart" href="#">
                      <span class="price">$11.00</span>
                      <span class="add-to-cart">
                        <span class="txt">Add in cart</span>
                      </span>
                    </a>
                  </div>
                </div>
  
  
            </div>


            <div class="row ">
                <div class="el-wrapper col-sm-3">
                  <div class="box-up">
                    <img class="img" src="${pageContext.request.contextPath}/static/images/creatine2.jpg" alt="creatine">
                    <div class="img-info">
                      <div class="info-inner">
                        <span class="p-name">MuscleTech</span>
                        <span class="p-company">Platinum Creatine Monohydrate Powder, 100% Pure, 14.1 Oz (80 Svg)</span>
                      </div>
                      <div class="a-size"><button type="button" title="View">View Details<br><i class="fas fa-eye fa-2x"></i></button></div>
                    </div>
                  </div>
          
                  <div class="box-down">
                    <div class="h-bg">
                      <div class="h-bg-inner"></div>
                    </div>
          
                    <a class="cart" href="#">
                      <span class="price">$11.00</span>
                      <span class="add-to-cart">
                        <span class="txt">Add in cart</span>
                      </span>
                    </a>
                  </div>
                </div>
              
            
              <div class="el-wrapper col-sm-3">
                  <div class="box-up">
                    <img class="img" src="${pageContext.request.contextPath}/static/images/creatine2.jpg" alt="creatine">
                    <div class="img-info">
                      <div class="info-inner">
                        <span class="p-name">MuscleTech</span>
                        <span class="p-company">Platinum Creatine Monohydrate Powder, 100% Pure, 14.1 Oz (80 Svg)</span>
                      </div>
                      <div class="a-size"><button type="button" title="View">View Details<br><i class="fas fa-eye fa-2x"></i></button></div>
                    </div>
                  </div>
          
                  <div class="box-down">
                    <div class="h-bg">
                      <div class="h-bg-inner"></div>
                    </div>
          
                    <a class="cart" href="#">
                      <span class="price">$11.00</span>
                      <span class="add-to-cart">
                        <span class="txt">Add in cart</span>
                      </span>
                    </a>
                  </div>
                </div>
              
                <div class="el-wrapper col-sm-3">
                    <div class="box-up">
                      <img class="img" src="${pageContext.request.contextPath}/static/images/creatine2.jpg" alt="creatine">
                      <div class="img-info">
                        <div class="info-inner">
                          <span class="p-name">MuscleTech</span>
                          <span class="p-company">Platinum Creatine Monohydrate Powder, 100% Pure, 14.1 Oz (80 Svg)</span>
                        </div>
                        <div class="a-size"><button type="button" title="View">View Details<br><i class="fas fa-eye fa-2x"></i></button></div>
                      </div>
                    </div>
            
                    <div class="box-down">
                      <div class="h-bg">
                        <div class="h-bg-inner"></div>
                      </div>
            
                      <a class="cart" href="#">
                        <span class="price">$11.00</span>
                        <span class="add-to-cart">
                          <span class="txt">Add in cart</span>
                        </span>
                      </a>
                    </div>
                  </div>
              </div>

              <div class="row">
                  <div class="col text-center">
                    <div class="block-27">
                      <ul>
                      <li><a href="#">&lt;</a></li>
                      <li class="active"><span>1</span></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                      <li><a href="#">&gt;</a></li>
                    </ul>
                  </div>
                </div>
            </div>
        </div>
      </div>
      


   

    <!--================ start footer Area  =================-->
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
    <!--================ End footer Area  =================-->

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
