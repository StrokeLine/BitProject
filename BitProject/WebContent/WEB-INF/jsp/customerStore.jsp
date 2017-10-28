<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Stylesheets -->	
<link href="/bootstrap2/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="/bootstrap2/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="/bootstrap2/css/style.css" rel="stylesheet" type="text/css">
	
<!-- Google fonts -->
<link href='https://fonts.googleapis.com/css?family=PT+Serif:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<!-- modernizr -->
<script src="/bootstrap2/js/modernizr.js"></script>

</head>
<body>
	<div class="banner" id="home"></div>
	<header class="header">
		<div class="container-fluid">
			<div class="row"></div>
		</div>
		<div class="container">
			<div class="row">
				<div class="zzz">
					<!-- <div class="col-md-12 text-center user"> -->
						<div class="seller_wrap">
							<div class="seller_img">
								<img src="/images/home.png" alt="" class="img-circle">
							</div>
							<div class="seller_info">
								<h1>| ${seller_info_select.s_nick}</h1>
								<div class="store_address">
									<a href="">오프라인 상점&nbsp;&nbsp;<i class="fa fa-map-marker"></i></a><br>
									${seller_info_select.s_address}
								</div> 								
								<h4>평점 ${seller_info_select.s_grade}</h4>
							</div>
						</div>
						<div class="follow">
							<label class="follow-label">
								<a href=""><i class="fa fa-plus-square-o"></i>상점 팔로우 하기</a>
							</label>					
						</div>											
						<div class="social-icons">
							<div class="info_frame">				
								<div class="frame_item" ><i class="fa fa-home"></i>오픈일</div>
								<div class="frame_item"><i class="fa fa-user"></i>방문자 수</div>
								<div class="frame_item"><i class="fa fa-shopping-cart"></i>판매거래 수</div>
								<div class="frame_item"><i class="fa fa-heart"></i>팔로워</div>
							</div>
							<div class="info_frame">
								<div class="frame_value" style="text-align: center;">
									<fmt:formatDate value="${seller_info_select.s_date}" pattern="yyyy-MM-dd"/>
								</div>
								<div class="frame_value" style="text-align: center;">${seller_info_select.s_sale}</div>
								<div class="frame_value"></div>
								<div class="frame_value"></div>
							</div>														
						</div>
					<!-- </div> -->
					<!-- nav starts here -->					
					<div class="main-nav">
						<nav class="navbar navbar-default">
						  <div class="container-fluid">
						    <!-- Brand and toggle get grouped for better mobile display -->
						    <div class="navbar-header">
						      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						        <span class="sr-only">Toggle navigation</span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						      </button>
						    </div>

						    <!-- Collect the nav links, forms, and other content for toggling -->
						    <div class="collapse navbar-collapse text-center" id="bs-example-navbar-collapse-1">
						      <ul class="nav navbar-nav">
						        <li class="nav-item"><a class="active" href="index.html">상품 보기</a></li>
						        <li class="nav-item"><a href="about.html">공지/알림</a></li>
						        <li class="nav-item"><a href="customerStoreInquiry">문의하기</a></li>							        
						      </ul>
						    </div><!-- /.navbar-collapse -->
						  </div><!-- /.container-fluid -->
						</nav>
					</div>					
				</div>
			</div>
		</div>
	</header>









	<section class="content">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 no-padding">
					<div class="col-md-12">
						<article class="single-post">
							<div class="post-header text-center">
								<h2><a href="#">Welcome to my personal website</a></h2>
								<span>Written by <a href="#">John Doe</a> in <a href="#">Design</a> on October 12, 2015 </span>
							</div>
							<div class="post-content">
								<a href="#"><img src="img/blog-1.jpg" alt="" class="img-responsive"></a>
								<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor dunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justoduo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dol sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmodtempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </p>
								<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no takimata sanctus est Loripsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitsed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed dit luptua. At vero eos et accusam et justo duo dolores et ea rebum.</p>
								<div class="read-more text-center">
									<a href="#">Read the article</a>
								</div>
							</div>
						</article>					

						<article class="single-post">
							<div class="post-header text-center">
								<h2><a href="#">a lovely evening with my beloved</a></h2>
								<span>Written by <a href="#">John Doe</a> in <a href="#">Development</a> on October 20, 2015 </span>
							</div>
							<div class="post-content">
								<a href="#"><img src="img/blog-2.jpg" alt="" class="img-responsive"></a>
								<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor dunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justoduo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dol sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmodtempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </p>
								<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no takimata sanctus est Loripsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitsed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed dit luptua. At vero eos et accusam et justo duo dolores et ea rebum.</p>
								<div class="read-more text-center">
									<a href="#">Read the article</a>
								</div>
							</div>
						</article>

						<article class="single-post">
							<div class="post-header text-center">
								<h2><a href="#">Snacks after hard working</a></h2>
								<span>Written by <a href="#">John Doe</a> in <a href="#">Design</a> on October 23, 2015 </span>
							</div>
							<div class="post-content">
								<a href="#"><img src="img/blog-3.jpg" alt="" class="img-responsive"></a>
								<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor dunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justoduo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dol sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmodtempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </p>
								<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no takimata sanctus est Loripsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitsed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed dit luptua. At vero eos et accusam et justo duo dolores et ea rebum.</p>
								<div class="read-more text-center">
									<a href="#">Read the article</a>
								</div>
							</div>
						</article>

						<article class="single-post">
							<div class="post-header text-center">
								<h2><a href="#">Had a wonderful dinner</a></h2>
								<span>Written by <a href="#">John Doe</a> in <a href="#">Development</a> on October 25, 2015 </span>
							</div>
							<div class="post-content">
								<a href="#"><img src="img/blog-4.jpg" alt="" class="img-responsive"></a>
								<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor dunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justoduo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dol sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmodtempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </p>
								<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no takimata sanctus est Loripsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitsed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed dit luptua. At vero eos et accusam et justo duo dolores et ea rebum.</p>
								<div class="read-more text-center">
									<a href="#">Read the article</a>
								</div>
							</div>
						</article>

						<article class="single-post">
							<div class="post-header text-center">
								<h2><a href="#">Wonderful site view in malaysia</a></h2>
								<span>Written by <a href="#">John Doe</a> in <a href="#">Travel</a> on October 29, 2015 </span>
							</div>
							<div class="post-content">
								<a href="#"><img src="img/blog-5.jpg" alt="" class="img-responsive"></a>
								<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor dunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justoduo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dol sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmodtempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </p>
								<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no takimata sanctus est Loripsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitsed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed dit luptua. At vero eos et accusam et justo duo dolores et ea rebum.</p>
								<div class="read-more text-center">
									<a href="#">Read the article</a>
								</div>
							</div>
						</article>
						<div class="post-pagination">
							<div class="col-md-6 col-sm-6 col-xs-6">
								<ul class="list-inline">
									<li class="current"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
								</ul>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-6 text-right">
								<a href="#">Older Articles <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
 
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-4">
						<h3>about me</h3>
						<p>I'm a Professional Web Developer. I have a great experience for a long time about Front-end and Wordpress theme development. I  try to give the best services.</p>
						<a href="about.html">Read full about me</a>
						<address>
							E-mail: hello@shapedtheme.com <br>
							Phone: +88-0-1723 511 340 <br>
							239/2 NA, Dhaka 1206, BD
						</address>
					</div>
					<div class="col-md-4">
						<h3>Subscribe &amp; Follow</h3>
						<p>Enter your email address to subscribe to this blog and receive notifications.</p>
						<form action="?">
							<input type="email" placeholder="Enter your email">
							<input type="submit" value="SUBSCRIBE NOW">
						</form>
						<div class="socials text-center">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-instagram"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
							<a href="#"><i class="fa fa-google-plus"></i></a>
						</div>
					</div>
					<div class="col-md-4 instagram-photos">
						<h3>Follow @ Instagram</h3>
						<!-- place your instagram widget below -->
						<a href="#"><img src="http://placehold.it/100x100" alt=""></a>
						<a href="#"><img src="http://placehold.it/100x100" alt=""></a>
						<a href="#"><img src="http://placehold.it/100x100" alt=""></a>
						<a href="#"><img src="http://placehold.it/100x100" alt=""></a>
						<a href="#"><img src="http://placehold.it/100x100" alt=""></a>
						<a href="#"><img src="http://placehold.it/100x100" alt=""></a>
					</div>
				</div>
			</div>
		</div>
		<div class="text-right">
			<a href="#home"><i class="fa fa-arrow-up"></i></a>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<p>&copy; 2015 — Designed by <a href="https://www.behance.net/khalilkode">Md. Khalil Uddin</a> &amp; Developed by <a href="http://mostafiz.me">Mostafizur Rahman</a></p>
					</div>
					<div class="col-md-6 footer-menu text-right">
						<ul class="list-inline">
							<li><a href="index.html">home</a></li>
							<li><a href="about.html">about</a></li>
							<li><a href="works.html">my works</a></li>
							<li><a href="contact.html">contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- script tags
	============================================================= -->
	<script src="/bootstrap2/js/jquery-2.1.1.js"></script>
	<script src="/bootstrap2/js/smoothscroll.js"></script>
	<script src="/bootstrap2/js/bootstrap.min.js"></script>
	<script src="/bootstrap2/js/custom.js"></script>	
	<script src="/bootstrap2/js/html5shiv.js"></script>		
	<script src="/bootstrap2/js/respond.js"></script>	
	
</body>
</html>