<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

Stylesheets	
<link href="/bootstrap2/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="/bootstrap2/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="/bootstrap2/css/style.css" rel="stylesheet" type="text/css">
	
Google fonts
<link href='https://fonts.googleapis.com/css?family=PT+Serif:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

modernizr
<script src="/bootstrap2/js/modernizr.js"></script> -->

<script src="/jquery/jquery.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<!-- Bootstrap core CSS -->
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link rel="stylesheet" href="/css/main.css" />
<link rel="stylesheet" href="/css/customerStore.css" />
<link rel="stylesheet" href="/bootstrap2/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->

<!-- Scripts -->
<script src="/js/skel.min.js"></script>
<script src="/js/util.js"></script>
<script src="/js/main.js"></script>
<script src="bootstrap2/js/main.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
</head>

<style>
.inner-customer{
	margin-left: 330px;
	height: 604px;
}
</style>

<body>
	<div id="wrapper">		
		<div id="main">
			<div class="inner-customer">			
				<div class="row">								
					<div class="seller_wrap">
						<div class="seller_img">
							<img src="/images/home.png" alt="" class="img-circle">
						</div>
						<div class="seller_info">
							<p id="storeName">| ${seller_info_select.s_nick}</p>
							<div class="store_address">
								<a href="">오프라인 상점&nbsp;&nbsp;<i class="fa fa-map-marker"></i></a><br>
								${seller_info_select.s_address}
							</div> 								
							<h4 id="store_grade">평점 ${seller_info_select.s_grade}</h4>
						</div>
					</div>
					<div class="follow">
						<label class="follow-label">
							<a href=""><i class="fa fa-plus-square-o"></i>상점 팔로우 하기</a>
						</label>					
					</div>											
					<div class="social-icons">
						<div class="info_frame">				
							<div class="frame_item" ><i class="fa fa-home"></i>OPEN</div>
							<div class="frame_item"><i class="fa fa-user"></i>VISIT</div>
							<div class="frame_item"><i class="fa fa-shopping-cart"></i>SALES VOLUME</div>
							<div class="frame_item"><i class="fa fa-heart"></i>FOLLOWER</div>
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
						        <li class="nav-item"><a class="active" href="customerStore">상품 보기</a></li>
						        <li class="nav-item"><a href="followingNotiStore">공지/알림</a></li>
						        <li class="nav-item"><a href="customerStoreInquiry">문의하기</a></li>							        
						      </ul>
						    </div><!-- /.navbar-collapse -->
						  </div><!-- /.container-fluid -->
						</nav>
					</div>					
				</div>			
			</div>		
			
			<div class="inner-product">					
				<div class="content_title">이 상점에 등록된 상품들</div>
				<div class="content_subTitle">THE GOODS OF THIS STORE!</div>												
				<section>					
					<div class="posts">				
						<c:forEach items="${productInfoList}" var="product_info">
							<article>
								<a href="#" class="image"><img src="images/pic01.jpg" alt="" /></a>
								<h3 id="productName">${product_info.p_name}</h3>
								<p>[ ${product_info.p_major_value} ]</p>
								<p>${product_info.p_price} 원 &emsp; / &emsp; 배송료 ${product_info.p_fee} 원</p>
								<ul class="actions">
									<li><a href="#" class="button">찜</a></li>
									<li><a href="#" class="button">장바구니</a></li>
								</ul>
							</article>						
						</c:forEach>					
					</div>
				</section>				
			</div>				
		</div>
	</div>	
	
	<!-- <script src="/bootstrap2/js/jquery-2.1.1.js"></script>
	<script src="/bootstrap2/js/smoothscroll.js"></script>
	<script src="/bootstrap2/js/bootstrap.min.js"></script>
	<script src="/bootstrap2/js/custom.js"></script>	
	<script src="/bootstrap2/js/html5shiv.js"></script>		
	<script src="/bootstrap2/js/respond.js"></script>	 -->

</body>
</html>