<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Post A House</title>
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">

<script type="text/javascript" src="js/jquery-1.6.js" ></script>
		<script type="text/javascript" src="js/cufon-yui.js"></script>
		<script type="text/javascript" src="js/cufon-replace.js"></script>
  		<script type="text/javascript" src="js/Didact_Gothic_400.font.js"></script>
		<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
		<script type="text/javascript" src="js/atooltip.jquery.js"></script>
		<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
		<script type="text/javascript" src="js/script.js"></script>
		<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<style>
body {
    background-color: black;;
}

</style>
</head>
<body id="page1">
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
							<li id="menu_active"><a href="login">Login</a></li>
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
				<h2 class="pad_bot1 pad_top1">Post a house</h2>

<form:form action="/postHouse" method="POST" class="login-form" modelAttribute="house">
<form:hidden path="pic" value="${house.pic}"/>
	
							<div class="wrapper">
								<span>Name: </span>
								<input type="text" class="input" name="name" id="name" />
									
							</div>
<br>
						<div class="wrapper">
								<span>Email</span>
								<input type="text" class="input" name="email" id="email"/>
						</div>
<br>
						<div class="wrapper">
								<span>City: </span>
								<input type="text" class="input" name="address" id="address" />
						</div>
						<br>
						
						<div class="wrapper">
								<span>Price Per Hour</span>
								<input type="text" class="input" name="price" id="price" />
						</div>
						<br>
						
						<div class="wrapper">
								<span>Category</span>
								<input type="text" class="input" name="Category" id="Category" />
						</div>
<br>
						<div class="wrapper">
								<span>Description</span>
								<input type="text" class="input" name="Description" id="Description"/>
						</div>
						<br>

						<div class="wrapper">
								<span>Bedrooms</span>
									<input type="text" class="input" name="Bedrooms" id="Bedrooms"/>
						</div>
						<br>
						<div class="wrapper">
								<span>Size</span>
									<input type="text" class="input" name="Size" id="Size"/>
						</div>
						<br>
						<div class="wrapper">
								<span>Bath</span>
									<input type="text" class="input" name="Bath" id="Bath"/>
						</div>
						<br>
								
	Washer:
	  <form:radiobutton path="washer" value="true"/> yes
 	 <form:radiobutton  path="washer" value="false"/> no<br>
  
  dryer:
  <form:radiobutton path="dryer" value="true"/> yes
  <form:radiobutton  path="dryer" value="false"/> no<br>
  
  kitchen:
  <form:radiobutton path="kitchen" value="true"/> yes
  <form:radiobutton path="kitchen" value="false"/> no<br>
  
  WIFI:
  <form:radiobutton path="WIFI" value="true"/> yes
  <form:radiobutton path="WIFI" value="false"/> no<br>
  
  pool:
  <form:radiobutton path="pool" value="true"/> yes
  <form:radiobutton path="pool" value="false"/> no<br>
		
	<input type="submit" value="Register" class="button">

</form:form>
</div></article></div></section></div></div>
</body>
</html>