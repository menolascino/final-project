<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Contact Us</title>
		
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
		<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
		<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
		<script type="text/javascript" src="js/jquery-1.6.js" ></script>
		<script type="text/javascript" src="js/cufon-yui.js"></script>
		<script type="text/javascript" src="js/cufon-replace.js"></script>
		<script type="text/javascript" src="js/Didact_Gothic_400.font.js"></script>
		<script type="text/javascript" src="js/atooltip.jquery.js"></script>
		<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
		<script type="text/javascript" src="js/script.js"></script>
		<!--[if lt IE 9]>
			<script type="text/javascript" src="js/html5.js"></script>
			<style type="text/css">
				.bg{ behavior: url(js/PIE.htc); }
			</style>
		<![endif]-->
		<!--[if lt IE 7]>
			<div style=' clear: both; text-align:center; position: relative;'>
				<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
			</div>
		<![endif]-->
	</head>
	<body id="page6">
		<div class="body1">
			<div class="main">
<!-- header -->
				<header>
					<h1><a href="index.html" id="logo"></a></h1>
					<div class="wrapper">
						<ul id="icons">
							<li><a href="#" class="normaltip" title="Facebook"><img src="images/icon1.jpg" alt=""></a></li>
							<li><a href="#" class="normaltip" title="Twitter"><img src="images/icon2.jpg" alt=""></a></li>
							<li><a href="#" class="normaltip" title="Linkedin"><img src="images/icon3.jpg" alt=""></a></li>
						</ul>
					</div>
					<nav>
						<ul id="menu">
						<li id="menu_active"><a href="index">HomePage</a></li>
							<li id="menu_active"><a href="viewHouse">View</a></li>
							<li id="menu_active"><a href="SignIn">Sign-up</a></li>
							<li id="menu_active"><a href="Login">Login</a></li>
							<li id="menu_active"><a href="Finance">Finance</a></li>
							<li id="menu_active" class="end"><a href="Contacts">Contact Us</a></li>
						</ul>
					</nav>
					
				</header>
<!-- / header -->
			</div>
		</div>
<!-- content -->
		<div class="body2">
			<div class="main">
				<section id="content">
					<div class="wrapper">
						<article class="col1">
							<div class="pad2">
								<h2 class="pad_bot1 pad_top1">Contact Form</h2>
								<form id="ContactForm">
									<div>
										<div  class="wrapper">
											<span>Your Name:</span>
											<input type="text" class="input" >
										</div>
										<div  class="wrapper">
											<span>Your E-mail:</span>
											<input type="text" class="input" >
										</div>
										<div  class="textarea_box">
											<span>Your Message:</span>
											<textarea name="textarea" cols="1" rows="1"></textarea>
										</div>
										<span>&nbsp;</span>
										<a href="#" class="button" onClick="document.getElementById('ContactForm').reset()">Clear</a>
										<a href="#" class="button" onClick="document.getElementById('ContactForm').submit()">Send</a>
									</div>
								</form>
							</div>
						</article>
						
					</div>
					<div class="wrapper">
						<article class="col1">
							<div class="pad2">
							
							
						</article>
						<article class="col2">
							<div class="pad1">
								<h3>Our Contacts</h3>
								<div class="address">
									2119 Olive St.<br>
									St. Louis, MO 63103<br>
									<span>
										
										Telephone:<br>
										E-mail:
									</span>
										  619-764-9645<br>
										 
										  <a href="mailto:">chrismenolascino@rocketmail.com</a>
									</div>
						</article>
					</div>
				</section>
			</div>
		</div>
<!-- / content -->
		
			
	<style>
			body {
    	background-color: black;
			}
	</style>
	</body>
</html>