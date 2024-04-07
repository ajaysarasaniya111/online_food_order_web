﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Aahar_Food_Delivery.checkout" %>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Checkout || Aahar Food Delivery</title>
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

    <!-- Cusom css -->
   <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer js -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
</head>
<body>
    
<form id="form1" runat="server">
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
                                        <li><a href="Login/login.aspx">Sign Up</a></li>
                                        <li class="drop"><a href="#">Pages</a>
                                            <ul class="dropdown__menu">
                                                <li><a href="cart.aspx">Cart..</a></li>
                                                <li><a href="checkout.aspx">Checkout..</a></li>
                                                <li><a href="service.aspx">Service..</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-lg-1 col-sm-4 col-md-4 order-2 order-lg-3">
                            <div class="header__right d-flex justify-content-end">
                               <div class="log__in">
                                      <a href="User_Profile.aspx">
                                        <asp:DataList ID="DataList2" runat="server">
                                            <ItemTemplate>
                                        <img src="Client_userProfile/<%#Eval("image") %>" width="40" height="40" class="d-inline-block align-top">
                                            </ItemTemplate>
                                        </asp:DataList>
                                       </a>
                                    </div>
                                    <div class="shopping__cart">
                                     <a>
                                        <asp:Button ID="Button2" runat="server" Text="" class="btn btn-light" OnClick="Button2_Click" />
                                     </a>
                                    </div>
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
        <div class="ht__bradcaump__area bg-image--18">
            <div class="ht__bradcaump__wrap d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">Checkout</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.aspx">Home</a>
                                  <span class="brd-separetor"><i class="zmdi zmdi-long-arrow-right"></i></span>
                                  <span class="breadcrumb-item active">Checkout</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area --> 
        <section class="htc__checkout bg--white section-padding--lg">
            <!-- Checkout Section Start-->
            <div class="checkout-section">
                <div class="container">
                    <div class="row">
                       
                        <div class="col-lg-6 col-12 mb-30">
                                <!-- Checkout Accordion Start -->
                                <div id="checkout-accordion">
                                    <!-- Billing Method -->
                                    <div class="single-accordion">
                                        <a class="accordion-head collapsed">1. billing informatioon</a>
                                        <div >
                                            <div class="accordion-body billing-method fix">
                                                <div class="billing-form checkout-form">
                                                    <div class="row">
                                                        <asp:GridView ID="GridView1" Visible="false" runat="server">
                                                                <Columns></Columns>
                                                            </asp:GridView>
                                                        <div class="row">                                                  
                                                        <div class="col-12 mb--20">
                                                            <asp:TextBox ID="TextBox2" placeholder=" Name" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="col-12 mb--20">    
                                                         <asp:TextBox ID="TextBox3" placeholder="Company Name" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="col-12 mb--20">
                                                          <asp:TextBox ID="TextBox4" placeholder="Street Address" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="col-12 mb--20">
                                                            <asp:TextBox ID="TextBox5" placeholder="Appartment" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="col-12 mb--20">
                                                            <asp:TextBox ID="TextBox6" placeholder="State" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6 col-12 mb--20"> 
                                                            <asp:TextBox ID="TextBox7" placeholder="City" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6 col-12 mb--20"> 
                                                            <asp:TextBox ID="TextBox8" placeholder="Pin Code" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6 col-12">
                                                            <asp:TextBox ID="TextBox9" placeholder="Email" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6 col-12"> 
                                                            <asp:TextBox ID="TextBox10" placeholder="Mobile Number" runat="server"></asp:TextBox>
                                                        </div>                          
                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <!-- Checkout Accordion Start -->
                            </div>
                           
                       </div>
                         <!-- Order Details -->
                            <div class="col-lg-6 col-12 mb-30">
                                <div class="order-details-wrapper">
                                    <h2>your order</h2>
                                    <div class="order-details">
                                        <div>
                                            <ul>
                                                <li><p class="strong">Product Name</p>
                                                    <p class="strong"> <asp:Label ID="Label1" runat="server" Text=""></asp:Label></p></li>
                                                <li><p>Quantity</p><p>
                                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label></p></li>
                                                <li><p>Price </p><p>
                                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label></p></li>
                                                <li><p class="strong">Total</p><p class="strong">
                                                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label></p></li>
                                                
                                                <li>
                                                    <asp:Button ID="Button1" runat="server" Text="place order" class="food__btn" OnClick="Button1_Click" />

                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div><!-- Checkout Section End-->             
         </section>    
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
