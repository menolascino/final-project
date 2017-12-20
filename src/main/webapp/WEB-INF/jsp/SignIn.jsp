<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

		<title>Home Page</title>
		
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
				</div>
				</div>
				
		<div class="body2">
			<div class="main">
				<section id="content">
					<div class="wrapper">
						<article class="col1">
							<div class="pad2">
				<h2 class="pad_bot1 pad_top1">SignUp Form</h2>
				
				<form:form class="" method="post" action="signup" modelAttribute="user">
						<div class="wrapper">
							<span>User Name: </span>
							<form:input   class="input"  name="username" id="username" path="username"/>
						</div>
						<br>
						<div class="wrapper">
							<span>Email: </span>
							<form:input path="email"  class="input"  name="email" id="email" />
						</div>
						<br>						
					<div class="wrapper">
							<span> Phone Number: </span>
									<form:input path="phoneNumber"  class="input"  name="phoneNumber" id="phoneNumber" />
						</div>
						<br>
						<div class="wrapper">
							<span>Password: </span>
									<form:password  class="input"  path="password" name="password" id="password" />
						</div>
						<br>
						<div class="wrapper">
							<span>Retype Password: </span>
									<form:password path="retypePassword"  class="input"  name="retypePassword" id="retypePassword" />
						</div>
				<br>
				<input class="button" type="submit" value="Register">
			
				</form:form>	
					</div>
		</div>
		</article>
		</div>
		</section>
		
		
<!-- / footer -->
			</div>
		</article></div>			
		<script type="text/javascript"> Cufon.now(); </script>
		<script type="text/javascript">
		   $(window).load(function() {
		   $('#slider').nivoSlider({
				effect:'sliceUpDown', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft'
				slices:17,
				animSpeed:500,
				pauseTime:6000,
				startSlide:0, //Set starting Slide (0 index)
				directionNav:false, //Next & Prev
				directionNavHide:false, //Only show on hover
				controlNav:true, //1,2,3...
				controlNavThumbs:false, //Use thumbnails for Control Nav
				controlNavThumbsFromRel:false, //Use image rel for thumbs
				controlNavThumbsSearch: '.jpg', //Replace this with...
				controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
				keyboardNav:true, //Use left & right arrows
				pauseOnHover:true, //Stop animation while hovering
				manualAdvance:false, //Force manual transitions
				captionOpacity:1, //Universal caption opacity
				beforeChange: function(){$('.nivo-caption').animate({bottom:'-110'},400,'easeInBack')},
				afterChange: function(){Cufon.refresh();$('.nivo-caption').animate({bottom:'-20'},400,'easeOutBack')},
				slideshowEnd: function(){} //Triggers after all slides have been shown
			});
		   Cufon.refresh();
		});
		</script>
	<style>
			body {
    	background-color: black;
			}
	</style>
	</body>
</html>
