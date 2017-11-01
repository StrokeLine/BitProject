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

<script type="text/javascript">
	$(document).ready(function(){
		$("#menu ul.sub").hide();
		$("#menu ul.menu li").click(function(){
			$("ul",this).slideToggle("fast");
		});
	});
</script>

</head>

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
					
					<ul class="main_icons_signin">
						<li> <i class="fa fa-home" aria-hidden="true" onclick="location='main'"> <span>&nbsp;Home&nbsp;|</span> </i> </li>
						<li> <i class="fa fa-pencil-square-o" aria-hidden="true" onclick="location='joinForm'"> <span>&nbsp;Sign Up&nbsp;|</span> </i> </li>
						<li> <i class="fa fa-building-o" aria-hidden="true"> <span>&nbsp;Store Open&nbsp;|</span> </i> </li>
						<li> <i class="fa fa-question-circle-o" aria-hidden="true"> <span>&nbsp;Customer Service&nbsp;|</span> </i> </li>
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
				<li><a href="main" class="product_list"><i class="fa fa-home" aria-hidden="true">&nbsp;Home</i></a></li>
				<li><p class="p_cate"><i class="fa fa-paw" aria-hidden="true">&nbsp;Category</i></p>
					<ul class="sub">
						<li><a href="#" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;전체</i></a></li>
						<li><a href="#" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;사료/간식</i></a></li>
						<li><a href="#" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;배변용품</i></a></li>
						<li><a href="#" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;건강관리</i></a></li>
						<li><a href="#" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;미용/목욕</i></a></li>
						<li><a href="#" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;장난감</i></a></li>
						<li><a href="#" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;리빙</i></a></li>
						<li><a href="#" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;패션</i></a></li>
						<li><a href="#" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;야외용품</i></a></li>
					</ul>
				</li>
				<li><a href="joinForm"><i class="fa fa-pencil-square-o" aria-hidden="true">&nbsp;Sign up</i></a></li>
				<li><a href="#"><i class="fa fa-building-o" aria-hidden="true">&nbsp;Store Open</i></a></li>
				<li><a href="#"><i class="fa fa-question-circle-o" aria-hidden="true">&nbsp;Customer Service</i></a></li>
			</ul>
		</nav>
		
		<!-- Container -->
		<div class="main">
			
			<div class="inner">
				
				<section class="signin">
					<img src="/images/signin.png" class="img-responsive" alt="" />
					<br>
					<form action="loginPro" method="post">
						<div class="4u 12u$(xsmall)">
							<input type="email" class="form-control input-lg" name="m_email" placeholder="Email" required  /> 
							<input type="password" class="form-control input-lg" id="password" name="m_password" placeholder="Password" required="" />
						</div>
						<div>
							<ul class="actions">
								<li><input type="submit" value="Sign in" class="special" /></li>
								<li><input type="reset" value="Cancel" /></li>
							</ul>
						</div>
					</form> 
				</section>
				
			</div>
		
		</div>
		
		
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

