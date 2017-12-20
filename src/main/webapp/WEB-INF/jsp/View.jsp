<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

		<title>View</title>
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
		
		<head/>

	<body id="page2">
		<div class="body1">
			<div class="main">
<!--header -->
				<header/>
			
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
								<h2 class="pad_bot1 pad_top1">Take a look</h2>
								<p class="pad_bot1 color2">There are many different places that you can stay at take a look and pick from you options.</p>
								<p class="pad_bot1 color2">You can pick from any of our house or hotels that are near the airport or your prefer relaxing spot.</p>
							</div>
							</div>
							<div class="pad_left1">
								<div class="wrapper pad_bot3">
									<article class="cols">
										<ul class="list2">
										<c:forEach items="${houseList}" var="house">
												 <img src="data:image/jpg;base64,${house.showPicture()}" class="img-circle" height="200" width="200" alt="House">
													<h6>${house.description}</h6>
													<h6>${house.price}</h6>
													
													<a href="/book?name=${house.name}">Book Now</a>
													
										</c:forEach>
										</ul>
									</article>
									</div>
								</div>
							</div>
						</article>
			
<!-- / content -->
		<div class="body4">
			<div class="main">
<!-- footer -->
				
<!-- / footer -->
			</div>
		</div>
		<script type="text/javascript"> Cufon.now(); </script>
		
		<div class="body2">
			<div class="main">
				<section id="content">
					<div class="wrapper">
						<article class="col1">
							<div class="pad2">
								<h2 class="pad_bot1 pad_top1">Detail of different places</h2>
								<p class="pad_bot1 color2">  </p>
								<p class="pad_bot2">   </p>
							</div>
							<div class="pad_left1">
								<div class="wrapper pad_bot3">
									<article class="cols">
										<ul class="list2">
											<li><a href="#">Hotel options</a></li>
											<li><a href="#">Where you be staying?</a></li>
											<li><a href="#">How many stars?</a></li>
											<li><a href="#">Any preferable hotel?</a></li>
											<li><a href="#">How many are staying?</a></li>
										</ul>
									</article>
									<article class="cols pad_left1">
										<ul class="list2">
											<li><a href="#">Hotels specs</a></li>
											<li><a href="#">Dubai City Skyline and close to Airport, Dubai World Trade Centre, Dubai Mall and Burj Khalifa, 13 authentic Restaurants. Meetings, Incentives, Conferences and Events: several outdoor venues, art Fitness Centre; 4 Swimming Pools, Ahasees Spa & Club.</a></li>
											<figure class="left marg_right1"><a href="#"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8Y7r3Y8OAiN2PDWi1BqLFCiXr_IcY5C25qhi7MJVXXe94DQKpnA" alt=""></a></figure>
											<li><a href="#">Hard Rock Hotel Cancun, include ocean or lagoon views and balconies, pools with two swim up bars, three Jacuzzis, fully equipped fitness center, sporting games and new outdoor amphithiter and five bars and lounges.</a></li>
											<figure class="left marg_right1"><a href="#"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMh1o2eWPbvww4c871DFIrh2HfV4wtu-nIzErzofQNyIkAnedj" alt=""></a></figure>
											<li><a href="#">Snorkeling Adventure, paddle boarding originated, daily Sunrise AND SUNSET Canoe Voyage, Dining, Fitness center, and beach club activities</a></li>
											<figure class=""><a href="#"><img src="https://i.pinimg.com/236x/95/45/88/954588b1d03d85d54d1e4e8c3647c5b2--moon-hotel-deathstar.jpg" alt=""></a></figure>
										</ul>
									</article>
									<article class="cols pad_left1">
										<ul class="list2">
											<li><a href="#">Housing options</a></li>
											<li><a href="#">2 rooms, 1 baths, 2 beds, building size: 3000 sq.</a></li>
											<li><a href="#">4 rooms, 2 baths, 4 beds, building size: 2500 sq. ft.</a></li>
											<li><a href="#">3 rooms, 2 baths, 2 beds, building size: 4000 sq. ft.</a></li>
											<li><a href="#">5 rooms, 3 baths, 4 beds, building size: 5000 sq. ft.</a></li>
										</ul>
									</article>
								</div>
							<article class="col1">
							<div class="pad2">
								
		<style>
			body {
    	background-color: black;
			}
		</style>
	
</html>
</body>
</html>
