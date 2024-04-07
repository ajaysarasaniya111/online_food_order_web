<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Aahar_Food_Delivery.Admin.register" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Aahar Food Delivery Admin</title>
  <!-- base:css -->
  <link rel="stylesheet" href="vendors/typicons/typicons.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.ico" />
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="images/foody.png" alt="logo">
              </div>
              <h4>New here?</h4>
              <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6>
              <form id="form" runat="server" class="pt-3">
                <div class="form-group">

                    <asp:TextBox ID="txtunm" runat="server"  type="text" class="form-control form-control-lg"  placeholder="Username"></asp:TextBox>
                </div>
                <div class="form-group">
               
                   <asp:TextBox ID="txtuem" runat="server" type="email" class="form-control form-control-lg" placeholder="Email"></asp:TextBox>
                </div>
                <div class="form-group">
                  <asp:DropDownList ID="txtcty" runat="server" class="form-control form-control-lg">
                      <asp:ListItem>Rajkot</asp:ListItem>
                      <asp:ListItem>Surat</asp:ListItem>
                      <asp:ListItem>junagadh</asp:ListItem>
                      <asp:ListItem>jamnager</asp:ListItem>
                    </asp:DropDownList>
                 
                </div>
                <div class="form-group">
                  <asp:TextBox ID="txtps" runat="server" type="text" class="form-control form-control-lg"  placeholder="Password"></asp:TextBox>
                  
                </div>
                <div class="form-group">
                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control form-control-lg" />
                </div>
                <div class="mb-4">
                  <div class="form-check">
                    <label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input">
                      I agree to all Terms & Conditions
                    </label>
                  </div>
                </div>
                <div class="mt-3">
                      <asp:Button ID="Button1" runat="server" Text="SIGN UP" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" OnClick="Button1_Click"  />
                </div>
                <div class="text-center mt-4 font-weight-light">
                  Already have an account? <a href="login.aspx" class="text-primary">Login</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>

