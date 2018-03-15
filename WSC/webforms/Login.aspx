﻿<%@ Page EnableEventValidation="false" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WSC.webforms.Login" %>

<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>WSC</title>

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="../css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="../css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="../css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="../css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="../css/magnific-popup.css">
  
	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="../css/owl.carousel.min.css">
	<link rel="stylesheet" href="../css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="../css/style.css">

	<!-- Modernizr JS -->
	<script src="../js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<form runat="server">
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<div class="page-inner">

	<div id="head-top" style="position: absolute; width: 100%; top: 0; ">
		<div class="gtco-top">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 col-xs-6">
						<div id="gtco-logo"><a href="Home.aspx">WSC<em>.</em></a></div>
					</div>
					<div class="col-md-6 col-xs-6 social-icons">
						<ul class="gtco-social-top">
							<li>
                                <a href="Login.aspx"><i><asp:Label runat="server" ID="LoginLbl">Login</asp:Label></i></a>
							</li>
						</ul>
					</div>
				</div>
			</div>	
		</div>
		<nav class="gtco-nav sticky-banner" role="navigation">
			<div class="gtco-container">
				
				<div class="row">
					<div class="col-xs-12 text-center menu-1">
						<ul>
							<li class="active"><a href="Home.aspx">Home</a></li>
							<li class="has-dropdown">
								<a href="services.html">Services</a>
								<ul class="dropdown">
									<li><a href="#">Branding</a></li>
									<li><a href="#">Development</a></li>
									<li><a href="#">Web Design</a></li>
									<li><a href="#">Marketing</a></li>
								</ul>
							</li>
							<li><a href="portfolio.html">Portfolio</a></li>
							<li><a href="blog.html">Blog</a></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
				</div>
				
			</div>
		</nav>
	</div>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-md" role="banner" style="background-image: url(../images/img_bg_4.jpg)" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row row-mt-15em">
				<div class="col-md-12 mt-text text-center animate-box" data-animate-effect="fadeInUp">
                    <h2><strong><asp:Label ID="lblError" CssClass="col-md-8 col-md-offset-2 text-center gtco-heading" runat="server" Visible="false"></asp:Label></strong></h2>
					<h1><strong>Login</strong></h1>	
					<h2>Please enter your login information below</h2>
					<div class="text-center">         
                         <asp:TextBox ID="txtUserName" runat="server" placeholder="UserName"></asp:TextBox>
                         <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                         <asp:Button ID="submitBtn" OnClick="submitBtn_Click" runat="server" CssClass="btn btn-primary" Text="Submit" />
                         </div>
				</div>
                <div class="col-md-12 mt-text text-center animate-box" data-animate-effect="fadeInUp">
                        <asp:Label ID="txtError" runat="server" Visible="false"></asp:Label>
                </div>
			</div>
		</div>
	</header>

    <div id="gtco-subscribe">
		<div class="gtco-container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>Register</h2>
					<p>If you're a new customer, fill out the form below to register.</p>
				</div>
			</div>
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2">
					<form class="form-inline">
						<div class="col-md-6 col-sm-6">
							<div class="form-group">
                                <asp:label CssClass="col-md-8 col-md-offset-2 text-center gtco-heading" runat="server"><h3>Personal Info</h3></asp:label>
								<asp:TextBox runat="server" cssclass="form-control" id="txtFirstName" placeholder="First Name"> </asp:TextBox>
								<asp:TextBox runat="server" cssclass="form-control" id="txtLastName" placeholder="Last Name"> </asp:TextBox>
                                <asp:TextBox runat="server" cssclass="form-control" TextMode="Phone" id="txtPhoneNumber" placeholder="Phone Number"> </asp:TextBox>
								<asp:TextBox runat="server" cssclass="form-control" id="txtAddressStreetNumber" placeholder="Address Street Number"> </asp:TextBox>
                                <asp:TextBox runat="server" cssclass="form-control" id="txtAddressStreetName" placeholder="Address Street Name"> </asp:TextBox>
								<asp:TextBox runat="server" cssclass="form-control" id="txtCity" placeholder="City"> </asp:TextBox>
								<asp:TextBox runat="server" cssclass="form-control" id="txtState" placeholder="State"> </asp:TextBox>
                                <asp:TextBox runat="server" cssclass="form-control" id="txtZipCode" placeholder="Zip Code"> </asp:TextBox>
                                <asp:TextBox runat="server" cssclass="form-control" id="txtEmail" TextMode="Email" placeholder="Your Email"> </asp:TextBox>
								<asp:TextBox runat="server" cssclass="form-control" id="txtEmailConfirm" TextMode="Email" placeholder="Confirm Email"> </asp:TextBox>
                                <asp:TextBox runat="server" cssclass="form-control" id="txtRegPassword" TextMode="Password" placeholder="Password"> </asp:TextBox>
								<asp:TextBox runat="server" cssclass="form-control" id="txtRegPasswordConfirm" TextMode="Password" placeholder="Confirm Password"> </asp:TextBox>
							</div>
						</div>
                        <div class="col-md-6 col-sm-6">
							<div class="form-group">
                                <asp:label CssClass="col-md-8 col-md-offset-2 text-center gtco-heading" runat="server"><h3>Billing Info</h3></asp:label>
								<asp:TextBox runat="server" cssclass="form-control" id="txtBillingAddressStreetNumber" placeholder="Address Street Number"> </asp:TextBox>
                                <asp:TextBox runat="server" cssclass="form-control" id="txtBillingAddressStreetName" placeholder="Address Street Name"> </asp:TextBox>
								<asp:TextBox runat="server" cssclass="form-control" id="txtBillingCity" placeholder="City"> </asp:TextBox>
								<asp:TextBox runat="server" cssclass="form-control" id="txtBillingState" placeholder="State"> </asp:TextBox>
                                <asp:TextBox runat="server" cssclass="form-control" id="txtBillingZipCode" placeholder="Zip Code"> </asp:TextBox>
                                <asp:CheckBox ID="chckBoxSameAsMailing" CssClass="col-md-8 col-md-offset-2 text-center gtco-heading" OnCheckedChanged="chckBoxSameAsMailing_CheckedChanged" AutoPostBack="true" runat="server" ForeColor="White" Text="Same as personal?"/>
                                <asp:Button runat="server" ID="Button1" OnClick="btnRegister_Click" CssClass="btn btn-default btn-block" Text="Register"/>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-p	b-md">

				<div class="col-md-4">
					<div class="gtco-widget">
						<h3>About Us</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eos molestias quod sint ipsum possimus temporibus officia iste perspiciatis consectetur in fugiat.</p>
						<p><a href="#">Learn more...</a></p>
					</div>
				</div>

				<div class="col-md-4 col-md-push-1">
					<div class="gtco-widget">
						<h3>Services</h3>
						<ul class="gtco-footer-links">
							<li><a href="#">Data Analytics</a></li>
							<li><a href="#">Web Development</a></li>
							<li><a href="#">Branding &amp; Identity</a></li>
							<li><a href="#">eCommerce Development</a></li>
							<li><a href="#">Design &amp; UX</a></li>
							<li><a href="#">Strategt</a></li>
						</ul>
					</div>
				</div>

				

				<div class="col-md-3 col-md-push-1">
					<div class="gtco-widget">
						<h3>Get In Touch</h3>
						<ul class="gtco-quick-contact">
							<li><a href="#"><i class="icon-phone"></i> +1 234 567 890</a></li>
							<li><a href="#"><i class="icon-mail2"></i> info@GetTemplates.co</a></li>
							<li><a href="#"><i class="icon-chat"></i> Live Chat</a></li>
						</ul>
					</div>
				</div>

			</div>

			<div class="row copyright">
				<div class="col-md-12">
					<p class="pull-left">
						<small class="block">Designed by Seal Team 7</small>
					</p>
					<p class="pull-right">
						<ul class="gtco-social-icons pull-right">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>
				</div>
			</div>

		</div>
	</footer>
	</div>

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="../js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="../js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="../js/jquery.waypoints.min.js"></script>
	<script src="../js/sticky.js"></script>
	<!-- Carousel -->
	<script src="../js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="../js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="../js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="../js/jquery.magnific-popup.min.js"></script>
	<script src="../js/magnific-popup-options.js"></script>
	
	<!-- Main -->
	<script src="../js/main.js"></script>
    </form>
	</body>
</html>


