﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="service.aspx.cs" Inherits="Aahar_Food_Delivery.service" %>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Service ||  Aahar Food Delivery Html5 Template</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

     <!-- material-design-iconic-font Start-->
       <link rel="stylesheet" href="icon/css/material-design-iconic-font.css">
       <link rel="stylesheet" href="icon/css/material-design-iconic-font.min.css">
     <!-- material-design-iconic-font end -->
     
     <!-- Fontawesome Start -->
       <link rel="stylesheet" href="font/css/font-awesome.css">
       <link rel="stylesheet" href="font/css/font-awesome.min.css">
     <!-- Fontawesome end -->

	<!-- Favicons -->
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="apple-touch-icon" href="images/icon.png">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/plugins.css">
	<link rel="stylesheet" href="style.css">

     <!-- Fontawesome Start -->
    <link rel="stylesheet" href="fontss/css/font-awesome.css">
    <link rel="stylesheet" href="fontss/css/font-awesome.min.css">

    <link rel="stylesheet" href="icon/css/material-design-iconic-font.css">
    <link rel="stylesheet" href="icon/css/material-design-iconic-font.min.css">

    <!-- Fontawesome end -->

	<!-- Cusom css -->
   <link rel="stylesheet" href="css/custom.css">

	<!-- Modernizer js -->
	<script src="js/vendor/modernizr-3.5.0.min.js"></script>
</head>
<body>
     <form id="form1" runat="server">
	<!--[if lte IE 9]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
	<![endif]-->

	<!-- Add your site or application content here -->
	
	<!-- <div class="fakeloader"></div> -->

	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">
		<!-- Start Header Area -->
        <header class="htc__header bg--white">
            <!-- Start Mainmenu Area -->
            <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-sm-4 col-md-6 order-1 order-lg-1">
                            <div class="logo">
                                <a href="index.aspx">
                                    <img src="images/logo/foody.png" alt="logo images">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-9 col-sm-4 col-md-2 order-3 order-lg-2">
                            <div class="main__menu__wrap">
                                <nav class="main__menu__nav d-none d-lg-block">
                                    <ul class="mainmenu">
                                            <li class="drop"><a href="index.aspx">Home</a></li>
                                            <li><a href="about-us.aspx">About</a></li>
                                            <li class="drop"><a href="menu-list.aspx">Menu</a> </li>
                                            <li><a href="gallery.aspx">Gallery</a></li>
                                            <li><a href="contact.aspx">Contact</a></li>
                                            <li class="drop"><a href="#">Pages</a>
                                                <ul class="dropdown__menu">
                                                    <li><a href="service.aspx">Service..</a></li>
                                                    <li><a href="checkout.aspx">Checkout..</a></li>
                                                </ul>
                                            </li>
                                        <li class="drop"><a href="User_Profile.aspx">Profile</a>
                                        </ul>
                                </nav>
                                
                            </div>
                        </div>
                        <div class="col-lg-1 col-sm-4 col-md-4 order-2 order-lg-3">
                            <div class="header__right d-flex justify-content-end">
                                 <div class="log__in">
                                      <a href="User_Profile.aspx">
                                        <asp:DataList ID="DataList1" runat="server">
                                            <ItemTemplate>
                                        <img src="Client_userProfile/<%#Eval("image") %>" width="40" height="40" class="d-inline-block align-top">
                                            </ItemTemplate>
                                        </asp:DataList>
                                       </a>
                                    </div>
                                    <div class="shopping__cart">
                                     <a>
                                        <asp:Button ID="Button1" runat="server" Text="" class="btn btn-light" OnClick="Button1_Click"  />
                                     </a>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <!-- Mobile Menu -->
                        <div class="mobile-menu d-block d-lg-none"></div>
                    <!-- Mobile Menu -->
                </div>
            </div>
            <!-- End Mainmenu Area -->
        </header>
        <!-- End Header Area -->
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area bg-image--19">
            <div class="ht__bradcaump__wrap d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="bradcaump__inner text-center brad__white">
                                <h2 class="bradcaump-title">service</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.aspx">Home</a>
                                  <span class="brd-separetor"><i class="zmdi zmdi-long-arrow-right"></i></span>
                                  <span class="breadcrumb-item active">service</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area --> 
        <!-- Start Service Area -->
        <section class="food__service bg--white section-padding--lg">
            <div class="container service__container">
                <div class="row">
                    <!-- Start Single Service -->
                    <div class="col-lg-6 col-md-12 col-sm-12">
                        <div class="service--2">
                            <div class="service__inner">
                                <div class="service__content">
                                    <h2><a href="service-details.aspx">fast delivery</a></h2>
                                    <div class="ser__icon">
                                        <img src="images/shape/service/1.png" alt="icon images">
                                    </div>
                                </div>
                                <div class="service__hover__action d-flex align-items-center">
                                    <div class="service__hover__inner">
                                        <h4><a href="service-details.aspx">fast delivery</a></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna Ut eniad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                                        <ul>
                                            <li><a href="#">1.Low cost Shipping</a></li>
                                            <li><a href="#">2.On time delivery</a></li>
                                            <li><a href="#">3.Transport : Container Van / By cycle / Others</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Start Single Service -->
                    <!-- Start Single Service -->
                    <div class="col-lg-6 col-md-12 col-sm-12">
                        <div class="service--2">
                            <div class="service__inner">
                                <div class="service__content">
                                    <h2><a href="service-details.aspx">quality food</a></h2>
                                    <div class="ser__icon">
                                        <img src="images/shape/service/3.png" alt="icon images">
                                    </div>
                                </div>
                                <div class="service__hover__action d-flex align-items-center">
                                    <div class="service__hover__inner">
                                        <h4><a href="service-details.aspx">quality food</a></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna Ut eniad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                                        <ul>
                                            <li><a href="#">1.Low cost Shipping</a></li>
                                            <li><a href="#">2.On time delivery</a></li>
                                            <li><a href="#">3.Transport : Container Van / By cycle / Others</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Start Single Service -->
                    <!-- Start Single Service -->
                    <div class="col-lg-6 col-md-12 col-sm-12">
                        <div class="service--2">
                            <div class="service__inner">
                                <div class="service__content">
                                    <h2><a href="service-details.aspx">various menu</a></h2>
                                    <div class="ser__icon">
                                        <img src="images/shape/service/4.png" alt="icon images">
                                    </div>
                                </div>
                                <div class="service__hover__action d-flex align-items-center">
                                    <div class="service__hover__inner">
                                        <h4><a href="service-details.aspx">various menu</a></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna Ut eniad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                                        <ul>
                                            <li><a href="#">1.Low cost Shipping</a></li>
                                            <li><a href="#">2.On time delivery</a></li>
                                            <li><a href="#">3.Transport : Container Van / By cycle / Others</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Start Single Service -->
                    <!-- Start Single Service -->
                    <div class="col-lg-6 col-md-12 col-sm-12">
                        <div class="service--2">
                            <div class="service__inner">
                                <div class="service__content">
                                    <h2><a href="service-details.aspx">well service</a></h2>
                                    <div class="ser__icon">
                                        <img src="images/shape/service/4.png" alt="icon images">
                                    </div>
                                </div>
                                <div class="service__hover__action d-flex align-items-center">
                                    <div class="service__hover__inner">
                                        <h4><a href="service-details.aspx">well service</a></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna Ut eniad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                                        <ul>
                                            <li><a href="#">1.Low cost Shipping</a></li>
                                            <li><a href="#">2.On time delivery</a></li>
                                            <li><a href="#">3.Transport : Container Van / By cycle / Others</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Start Single Service -->
                </div>
            </div>
        </section>
        <!-- End Service Area -->
        <!-- Start Testimonail Area -->
        <section class="fd__testimonial__area section-padding--lg bg-image--5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="testimonial__activation--1 text-center bg--white owl-carousel owl-theme clearfix">
                            <!-- Start Single Testimonial -->
                            <div class="testimonial">
                                <div class="testimonial__thumb">
                                    <img src="images/testimonial/clint/1.png" alt="testimonial images">
                                </div>
                                <div class="testimonial__details">
                                    <h4>Mily Cyrus</h4>
                                    <h6>Food Expert</h6>
                                    <p>Lorem ipsum dolor sit amconsectetuadipisicing elit, kjjnin khk seeiusmod tempor incididunt ut labore et dolore maaliqua. Ut enim ad minim veniam,</p>
                                </div>
                            </div>
                            <!-- End Single Testimonial -->
                            <!-- Start Single Testimonial -->
                            <div class="testimonial">
                                <div class="testimonial__thumb">
                                    <img src="images/testimonial/clint/1.png" alt="testimonial images">
                                </div>
                                <div class="testimonial__details">
                                    <h4>Mily Cyrus</h4>
                                    <h6>Food Expert</h6>
                                    <p>Lorem ipsum dolor sit amconsectetuadipisicing elit, kjjnin khk seeiusmod tempor incididunt ut labore et dolore maaliqua. Ut enim ad minim veniam,</p>
                                </div>
                            </div>
                            <!-- End Single Testimonial -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Testimonail Area -->
        <!-- Start Our Brand Area -->
        <div class="food__brand__area ptb--170 bg-image--22">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="brand__list d-flex flex-wrap flex-lg-nowrap justify-content-between">
                            <li><a href="#"><img src="images/brand/1.png" alt="brand images"></a></li>
                            <li><a href="#"><img src="images/brand/2.png" alt="brand images"></a></li>
                            <li><a href="#"><img src="images/brand/3.png" alt="brand images"></a></li>
                            <li><a href="#"><img src="images/brand/4.png" alt="brand images"></a></li>
                            <li><a href="#"><img src="images/brand/5.png" alt="brand images"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Our Brand Area -->
        <!-- Start Footer Area -->
        <footer class="footer__area footer--1">
            <div class="footer__wrapper bg__cat--1 section-padding--lg">
                <div class="container">
                    <div class="row">
                        <!-- Start Single Footer -->
                        <div class="col-md-6 col-lg-3 col-sm-12">
                            <div class="footer">
                                <h2 class="ftr__title">About Aahar</h2>
                                <div class="footer__inner">
                                    <div class="ftr__details">
                                        <p>Lorem ipsum dolor sit amconsectetur adipisicing elit,</p>
                                        <div class="ftr__address__inner">
                                            <div class="ftr__address">
                                                <div class="ftr__address__icon">
                                                    <i class="zmdi zmdi-home"></i>
                                                </div>
                                                <div class="frt__address__details">
                                                    <p>Elizabeth Tower. 6th Floor Medtown, New York</p>
                                                </div>
                                            </div>
                                            <div class="ftr__address">
                                                <div class="ftr__address__icon">
                                                    <i class="zmdi zmdi-phone"></i>
                                                </div>
                                                <div class="frt__address__details">
                                                    <p><a href="#">+088 01673-453290</a></p>
                                                    <p><a href="#">+088 01773-458290</a></p>
                                                </div>
                                            </div>
                                            <div class="ftr__address">
                                                <div class="ftr__address__icon">
                                                    <i class="zmdi zmdi-email"></i>
                                                </div>
                                                <div class="frt__address__details">
                                                    <p><a href="#">Aahardelivery@email.com</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="social__icon">
                                            <li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
                                            <li><a href="#"><i class="zmdi zmdi-google"></i></a></li>
                                            <li><a href="#"><i class="zmdi zmdi-instagram"></i></a></li>
                                            <li><a href="#"><i class="zmdi zmdi-rss"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer -->
                        <!-- Start Single Footer -->
                        <div class="col-md-6 col-lg-3 col-sm-12 sm--mt--40">
                            <div class="footer gallery">
                                <h2 class="ftr__title">Our Gallery</h2>
                                <div class="footer__inner">
                                    <ul class="sm__gallery__list">
                                        <li><a href="#"><img src="images/gallery/sm-img/1.jpg" alt="gallery images"></a></li>
                                        <li><a href="#"><img src="images/gallery/sm-img/2.jpg" alt="gallery images"></a></li>
                                        <li><a href="#"><img src="images/gallery/sm-img/3.jpg" alt="gallery images"></a></li>
                                        <li><a href="#"><img src="images/gallery/sm-img/4.jpg" alt="gallery images"></a></li>
                                        <li><a href="#"><img src="images/gallery/sm-img/5.jpg" alt="gallery images"></a></li>
                                        <li><a href="#"><img src="images/gallery/sm-img/6.jpg" alt="gallery images"></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer -->
                        <!-- Start Single Footer -->
                        <div class="col-md-6 col-lg-3 col-sm-12 md--mt--40 sm--mt--40">
                            <div class="footer">
                                <h2 class="ftr__title">Opening Time</h2>
                                <div class="footer__inner">
                                    <ul class="opening__time__list">
                                        <li>Saturday<span>.......</span>9am to 11pm</li>
                                        <li>Sunday<span>.......</span>9am to 11pm</li>
                                        <li>Monday<span>.......</span>9am to 11pm</li>
                                        <li>Tuesday<span>.......</span>9am to 11pm</li>
                                        <li>Wednesday<span>.......</span>9am to 11pm</li>
                                        <li>Thursday<span>.......</span>9am to 11pm</li>
                                        <li>Friday<span>.......</span>9am to 11pm</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer -->
                        <!-- Start Single Footer -->
                        <div class="col-md-6 col-lg-3 col-sm-12 md--mt--40 sm--mt--40">
                            <div class="footer">
                                <h2 class="ftr__title">Latest Post</h2>
                                <div class="footer__inner">
                                    <div class="lst__post__list">
                                        <div class="single__sm__post">
                                            <div class="sin__post__thumb">
                                                <a href="blog-details.aspx">
                                                    <img src="images/blog/sm-img/1.jpg" alt="blog images">
                                                </a>
                                            </div>
                                            <div class="sin__post__details">
                                                <h6><a href="blog-details.aspx">Chicken Shawarma </a></h6>
                                                <p>Lordo loram consecte turadip isicing</p>
                                            </div>
                                        </div>
                                        <div class="single__sm__post">
                                            <div class="sin__post__thumb">
                                                <a href="blog-details.aspx">
                                                    <img src="images/blog/sm-img/2.jpg" alt="blog images">
                                                </a>
                                            </div>
                                            <div class="sin__post__details">
                                                <h6><a href="blog-details.aspx">Fruits Desert</a></h6>
                                                <p>Lordo loramcon secte turadipi sicing</p>
                                            </div>
                                        </div>
                                        <div class="single__sm__post">
                                            <div class="sin__post__thumb">
                                                <a href="blog-details.aspx">
                                                    <img src="images/blog/sm-img/3.jpg" alt="blog images">
                                                </a>
                                            </div>
                                            <div class="sin__post__details">
                                                <h6><a href="blog-details.aspx">Vanilla Pastry</a></h6>
                                                <p>Lordo loramcon secte turadip isicing</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer -->
                    </div>
                </div>
            </div>
            <div class="copyright bg--theme">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="copyright__inner">
                                <div class="cpy__right--left">
                                    <p>@All Right Reserved.<a href="https://devitems.com">Devitems</a></p>
                                </div>
                                <div class="cpy__right--right">
                                    <a href="#">
                                        <img src="images/icon/shape/2.png" alt="payment images">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer Area -->
        <!-- //Login Form -->
            <!-- Cartbox -->
        <div class="cartbox-wrap">
            <div class="cartbox text-right">
                <button class="cartbox-close"><i class="zmdi zmdi-close"></i></button>
                <div class="cartbox__inner text-left">
                    <div class="cartbox__items">
                        <!-- Cartbox Single Item -->
                        <div class="cartbox__item">
                            <div class="cartbox__item__thumb">
                                <a href="product-details.aspx">
                                    <img src="images/blog/sm-img/1.jpg" alt="small thumbnail">
                                </a>
                            </div>
                            <div class="cartbox__item__content">
                                <h5><a href="product-details.aspx" class="product-name">Vanila Muffin</a></h5>
                                <p>Qty: <span>01</span></p>
                                <span class="price">$15</span>
                            </div>
                            <button class="cartbox__item__remove">
                                <i class="fa fa-trash"></i>
                            </button>
                        </div><!-- //Cartbox Single Item -->
                        <!-- Cartbox Single Item -->
                        <div class="cartbox__item">
                            <div class="cartbox__item__thumb">
                                <a href="product-details.aspx">
                                    <img src="images/blog/sm-img/2.jpg" alt="small thumbnail">
                                </a>
                            </div>
                            <div class="cartbox__item__content">
                                <h5><a href="product-details.aspx" class="product-name">Wheat Bread</a></h5>
                                <p>Qty: <span>01</span></p>
                                <span class="price">$25</span>
                            </div>
                            <button class="cartbox__item__remove">
                                <i class="fa fa-trash"></i>
                            </button>
                        </div><!-- //Cartbox Single Item -->
                        <!-- Cartbox Single Item -->
                        <div class="cartbox__item">
                            <div class="cartbox__item__thumb">
                                <a href="product-details.aspx">
                                    <img src="images/blog/sm-img/3.jpg" alt="small thumbnail">
                                </a>
                            </div>
                            <div class="cartbox__item__content">
                                <h5><a href="product-details.aspx" class="product-name">Mixed Fruits Pie</a></h5>
                                <p>Qty: <span>01</span></p>
                                <span class="price">$30</span>
                            </div>
                            <button class="cartbox__item__remove">
                                <i class="fa fa-trash"></i>
                            </button>
                        </div><!-- //Cartbox Single Item -->
                    </div>
                    <div class="cartbox__total">
                        <ul>
                            <li><span class="cartbox__total__title">Subtotal</span><span class="price">$70</span></li>
                            <li class="shipping-charge"><span class="cartbox__total__title">Shipping Charge</span><span class="price">$05</span></li>
                            <li class="grandtotal">Total<span class="price">$75</span></li>
                        </ul>
                    </div>
                    <div class="cartbox__buttons">
                        <a class="food__btn" href="cart.aspx"><span>View cart</span></a>
                        <a class="food__btn" href="checkout.aspx"><span>Checkout</span></a>
                    </div>
                </div>
            </div>
        </div><!-- //Cartbox -->   
	</div><!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
         </form>
</body>
</html>
