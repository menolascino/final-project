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

		
	<head/>

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
				<h2 class="pad_bot1 pad_top1">Login Form</h2>
						<form:form action="/login" method="POST" class="input-group" modelAttribute="user">
							<div class="wrapper">
								<span>Username: </span>
								<form:input name="username" class="center-align" path="username"></form:input>
							</div>
							<br>
							<div class="wrapper">
								<span>Password: </span>
								<form:input name="password" class="center-align" path="password"></form:input>
							</div><br>
							<input class="button" type="submit" value="Login">
						</form:form>
								</div>
								</article></div></section></div></div>

		
		<style>
			body {
    	background-color: black;
			}
	</style>
	</body>
</html>
