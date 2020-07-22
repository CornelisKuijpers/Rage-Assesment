<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Rage_Assesment._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="icon" type="image/png" href="Scripts/images/icons/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="Scripts/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Scripts/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="Scripts/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="Scripts/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="Scripts/vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="Scripts/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="Scripts/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="Scripts/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="Scripts/css/util.css">
    <link rel="stylesheet" type="text/css" href="Scripts/css/main.css">

    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
                <form class="login100-form validate-form">
                    <span class="login100-form-title p-b-33">Account Login
                    </span>

                    <div class="wrap-input100 validate-input" data-validate="Valid Username is required">
                        <asp:TextBox ID="txtUsername" runat="server" class="input100" type="text" name="user" placeholder="Username"></asp:TextBox>
                        <span class="focus-input100-1"></span>
                        <span class="focus-input100-2"></span>
                    </div>

                    <div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
                        <asp:TextBox ID="txtPassword" runat="server" class="input100" type="password" name="pass" placeholder="Password"></asp:TextBox>
                        <span class="focus-input100-1"></span>
                        <span class="focus-input100-2"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Valid branch code is required">
                        <asp:TextBox ID="txtBranchCode" runat="server" class="input100" type="text" name="branch" placeholder="Branch Code"></asp:TextBox>
                        <span class="focus-input100-1"></span>
                        <span class="focus-input100-2"></span>
                    </div>

                    <div class="container-login100-form-btn m-t-20">
                        <asp:Button ID="btnSignIn" runat="server" class="login100-form-btn" Text="Sign in"></asp:Button>
                    </div>

                    <div class="container-login100-form-btn m-t-20">
                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                    </div>

                </form>
            </div>
        </div>
    </div>

    <script src="Scripts/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="Scripts/vendor/animsition/js/animsition.min.js"></script>
    <script src="Scripts/vendor/bootstrap/js/popper.js"></script>
    <script src="Scripts/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="Scripts/vendor/select2/select2.min.js"></script>
    <script src="Scripts/vendor/daterangepicker/moment.min.js"></script>
    <script src="Scripts/vendor/daterangepicker/daterangepicker.js"></script>
    <script src="Scripts/vendor/countdowntime/countdowntime.js"></script>
    <script src="Scripts/js/main.js"></script>

</asp:Content>
