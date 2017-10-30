<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Hand Made - Pet Product</title>

<!-- Bootstrap core JavaScript -->
<script src="/jquery/jquery.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>

<!-- Bootstrap core CSS -->
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link rel="stylesheet" href="/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->

<!-- Scripts -->
<script src="/js/skel.min.js"></script>
<script src="/js/util.js"></script>
<script src="/js/main.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->


</head>
<style>
html, body{margin:0; width:100%;	height:100%;}
.wrap{
	width:100%;	height:700px;	position: relative;
}
.myPageMenu{
	display:inline-block;	float:left;	width:200px;	height:100%;
}
.myPageContent{
	display: inline-block;	position: absolute;	left:200px;	right: 0;	height:100%; overflow:hidden;
}
</style>

<body>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<div class="inner">

				<!-- Logo -->
					<a href="main" class="logo">
						<span class="symbol"><i class="fa fa-paw fa-2x" aria-hidden="true"></i></span><span class="title">FreeHaGae</span>
					</a>
					
					<ul class="main_icons">
						<li> <i class="fa fa-home" aria-hidden="true" onclick="location='main'"> <span>Home</span> </i> </li>
						<c:choose>
							<c:when test="${empty sessionScope.m_index }"><!-- login X -->
								<li> <i class="fa fa-sign-in" aria-hidden="true" onclick="location='loginForm'"> <span>Sign In</span> </i> </li>
								<li> <i class="fa fa-pencil-square-o" aria-hidden="true" onclick="location='joinForm'"> <span>Sign Up</span> </i> </li>
							</c:when>
							<c:when test="${not empty sessionScope.m_index }"><!-- login O -->
								<li> <i class="fa fa-sign-in" aria-hidden="true" onclick="location='logoutPro'"> <span>Sign out</span> </i> </li>
								<li> <i class="fa fa-pencil-square-o" aria-hidden="true" onclick="location='myPageMain'"> <span>My page</span> </i> </li>
							</c:when>
						</c:choose>
						<li> <i class="fa fa-building-o" aria-hidden="true"> <span>Store Open</span> </i> </li>
					</ul>
				<!-- Nav -->
					<nav>
						<ul>
							<li><a href="#menu">Menu</a></li>
						</ul>
					</nav>

			</div>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<h2>Menu</h2>
			<ul class="menu">
				<li><a href="main">Home</a></li>
				<li><a href="#">Category</a>
					<ul class="sub">
						<li><a href="#">성</a></li>
						<li><a href="#">공</a></li>
					</ul>
				</li>
				<li><a href="loginForm">Sign in</a></li>
				<li><a href="joinForm">Sign up</a></li>
				<li><a href="#">My Store</a></li>
			</ul>
		</nav>
	
	<section>
	<div class="wrap">
		<div class="myPageMenu">	
			<iframe name="myPageMenu" src="myPageMenu" width="100%" height="100%" style="border:0px;"></iframe>
		</div>
		<div class="myPageContent">
			<iframe name="myPageContent" src="memberInfo" width="100%" height="100%" style="border: 0px;"></iframe>
		</div>
	</div>
	</section>
	
	<!-- Footer -->
		<footer id="footer">
			<div class="inner">
				<section>
					<h2>Get in touch</h2>
					<form method="post" action="#">
						<div class="field half first">
							<input type="text" name="name" id="name" placeholder="Name" />
						</div>
						<div class="field half">
							<input type="email" name="email" id="email" placeholder="Email" />
						</div>
						<div class="field">
							<textarea name="message" id="message" placeholder="Message"></textarea>
						</div>
						<ul class="actions">
							<li><input type="submit" value="Send" class="special" /></li>
						</ul>
					</form>
				</section>
				<section>
					<h2>Follow</h2>
					<ul class="icons">
						<li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon style2 fa-github"><span class="label">GitHub</span></a></li>
						<li><a href="#" class="icon style2 fa-500px"><span class="label">500px</span></a></li>
						<li><a href="#" class="icon style2 fa-phone"><span class="label">Phone</span></a></li>
						<li><a href="#" class="icon style2 fa-envelope-o"><span class="label">Email</span></a></li>
					</ul>
				</section>
				<ul class="copyright">
					<li>&copy; Untitled. All rights reserved</li>
				</ul>
			</div>
		</footer>

	</div>

</body>

</html>
