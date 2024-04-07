<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot-pass.aspx.cs" Inherits="Aahar_Food_Delivery.Login.forget" %>

<!DOCTYPE html>
<html class="no-js" lang="">
<head  runat="server">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Aahar | Forgot Account</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="css/fontawesome-all.min.css">
    <!-- Flaticon CSS -->
    <link rel="stylesheet" href="font/flaticon.css">
    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
</head>

<body>
   
    <div id="preloader" class="preloader">
        <div class='inner'>
            <div class='line1'></div>
            <div class='line2'></div>
            <div class='line3'></div>
        </div>
    </div>
    <section class="fxt-template-animation fxt-template-layout33">
        <div class="fxt-content-wrap">
            <div class="fxt-heading-content">
                <div class="fxt-inner-wrap fxt-transformX-R-50 fxt-transition-delay-3">
                    <div class="fxt-transformX-R-50 fxt-transition-delay-10">
                        <a href="login.aspx" class="fxt-logo"><img src="img/foody.png" alt="Logo"></a>
                    </div>
                    <div class="fxt-transformX-R-50 fxt-transition-delay-10">
                        <div class="fxt-middle-content">
                            <div class="fxt-sub-title">Welcome to</div>
                            <h1 class="fxt-main-title">Aahar Food Delivery.</h1>
                            <p class="fxt-description">We are glad to see you again! Get access to your Orders, Wishlist and Recommendations.</p>
                        </div>
                    </div>
                    <div class="fxt-transformX-R-50 fxt-transition-delay-10">
                        <div class="fxt-switcher-description">Don't have an account?<a href="login.aspx" class="fxt-switcher-text">Sign In</a></div>
                    </div>
                </div>
            </div>
            <div class="fxt-form-content">
                <div class="fxt-main-form">
                    <div class="fxt-inner-wrap fxt-opacity fxt-transition-delay-13">
                        <h2 class="fxt-page-title">Reset Password</h2>
                        <p class="fxt-description">Enter the email address or mobile number associated with your account.</p>
                        <form id="form1" runat="server">
                            <div class="form-group">
                                <label for="email" class="fxt-label">Email or Mobile Number</label>
                                <input type="email" id="email" class="form-control" name="email" placeholder="Email Or Mobile Number" required="required">
                            </div>
                            <div class="form-group mb-3">
                                <button type="submit" class="fxt-btn-fill">Continue</button>
                            </div>
                        </form>
                        <div class="fxt-switcher-description">Return to?<a href="login.aspx" class="fxt-switcher-text ms-1">Log in</a></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- jquery-->
    <script src="js/jquery-3.5.0.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Imagesloaded js -->
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <!-- Validator js -->
    <script src="js/validator.min.js"></script>
    <!-- Custom Js -->
    <script src="js/main.js"></script>

</body>

</html>