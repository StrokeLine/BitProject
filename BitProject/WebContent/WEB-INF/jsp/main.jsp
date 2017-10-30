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
										
						<c:choose>
							<c:when test="${empty sessionScope.m_index }"><!-- login X -->
								
							<ul class="main_icons_x">
								<li> <i class="fa fa-home" aria-hidden="true" onclick="location='main'"> <span>Home</span> </i> </li>
								<li> <i class="fa fa-sign-in" aria-hidden="true" onclick="location='loginForm'"> <span>Sign In</span> </i> </li>
								<li> <i class="fa fa-pencil-square-o" aria-hidden="true" onclick="location='joinForm'"> <span>Sign Up</span> </i> </li>
								<li> <i class="fa fa-building-o" aria-hidden="true"> <span>Store Open</span> </i> </li>
							</ul>
							
							</c:when>
							<c:when test="${not empty sessionScope.m_index }"><!-- login O -->
							<ul class="main_icons_o">
								<li> <i class="fa fa-home" aria-hidden="true" onclick="location='main'"> <span>Home</span> </i> </li>
								<li> <i class="fa fa-sign-out" aria-hidden="true" onclick="location='logoutPro'"> <span>Sign out</span> </i> </li>
								<li> <i class="fa fa-user" aria-hidden="true" onclick="location='myPageMain'"> <span>My page</span> </i> </li>
								<li> <i class="fa fa-building-o" aria-hidden="true"> <span>Store Open</span> </i> </li>
							</ul>
							</c:when>
						</c:choose>
						
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
				<li><p>Category<i class="fa fa-chevron-down" aria-hidden="true"></i></p>
					<ul class="sub">
						<li><a href="#" class="product_list">전체</a></li>
						<li><a href="#" class="product_list">사료/간식</a></li>
						<li><a href="#" class="product_list">배변용품</a></li>
						<li><a href="#" class="product_list">건강관리</a></li>
						<li><a href="#" class="product_list">미용/목욕</a></li>
						<li><a href="#" class="product_list">장난감</a></li>
						<li><a href="#" class="product_list">리빙</a></li>
						<li><a href="#" class="product_list">패션</a></li>
						<li><a href="#" class="product_list">야외용품</a></li>
					</ul>
				</li>
				<li><a href="loginForm">Sign in</a></li>
				<li><a href="joinForm">Sign up</a></li>
				<li><a href="#">My Store</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">
			<div class="inner">
				<header>
					<h1>Hand Made - Pet Product<br />
					<a href="main">FreeHaGae</a>.</h1>
					<p>Etiam quis viverra lorem, in semper lorem. Sed nisl arcu euismod sit amet nisi euismod sed cursus arcu elementum ipsum arcu vivamus quis venenatis orci lorem ipsum et magna feugiat veroeros aliquam. Lorem ipsum dolor sit amet nullam dolore.</p>
				</header>
				<section class="tiles">
									
					<article class="style1">
						<span class="image">
							<img src="/images/all.png" alt="" />
						</span>
						<a href="#">
							<h2>전체</h2>
							<div class="content">
								<p>Hand Made - Pet Product</p>
							</div>
						</a>
					</article>
					
					<article class="style2">
						<span class="image">
							<img src="/images/food.png" alt="" />
						</span>
						<a href="#">
							<h2>사료/간식</h2>
							<div class="content">
								<p>건식사료, 소프트사료, 캔사료, 개껌, 사사미, 수제간식, 비스켓/시리얼/쿠키, 동결/건조간식, 캔/파우치, 저키/스틱</p>
							</div>
						</a>
					</article>
					
					<article class="style3">
						<span class="image">
							<img src="/images/defecate.png" alt="" />
						</span>
						<a href="#">
							<h2>배변용품</h2>
							<div class="content">
								<p>배변패드, 배변판, 기저귀/팬티, 탈취제/소독제, 배변봉투/집게</p>
							</div>
						</a>
					</article>
					
					<article class="style4">
						<span class="image">
							<img src="/images/health.png" alt="" />
						</span>
						<a href="#">
							<h2>건강관리</h2>
							<div class="content">
								<p>영양제, 눈/귀 관리용품</p>
							</div>
						</a>
					</article>
					
					<article class="style5">
						<span class="image">
							<img src="/images/beautybath.png" alt="" />
						</span>
						<a href="#">
							<h2>미용/목욕</h2>
							<div class="content">
								<p>샴푸/린스/비누, 에센스/향수, 브러쉬/빗, 이발기, 미용가위, 발톱/발 관리, 타월/가운, 기타미용/목욕용품</p>
							</div>
						</a>
					</article>
					
					<article class="style6">
						<span class="image">
							<img src="/images/toy.png" alt="" />
						</span>
						<a href="#">
							<h2>장난감</h2>
							<div class="content">
								<p>노즈워크, 장남감/토이, 공/원반</p>
							</div>
						</a>
					</article>
					
					<article class="style2">
						<span class="image">
							<img src="/images/living.png" alt="" />
						</span>
						<a href="#">
							<h2>리빙</h2>
							<div class="content">
								<p>울타리, 식기/식탁, 급수병/물병, 쿠션/방석, 하우스, 매트, 강아지 계단/스텝</p>
							</div>
						</a>
					</article>
					
					<article class="style3">
						<span class="image">
							<img src="/images/fashion.png" alt="" />
						</span>
						<a href="#">
							<h2>패션</h2>
							<div class="content">
								<p>패딩/아우터, 올인원/원피스, 티셔츠, 기타의류, 악세서리</p>
							</div>
						</a>
					</article>
					
					<article class="style1">
						<span class="image">
							<img src="/images/outdoor.png" alt="" />
						</span>
						<a href="#">
							<h2>야외용품</h2>
							<div class="content">
								<p>목줄, 가슴줄, 목걸이/인식표, 리드줄, 캐리어, 유모자, 카시트</p>
							</div>
						</a>
					</article>
					
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
