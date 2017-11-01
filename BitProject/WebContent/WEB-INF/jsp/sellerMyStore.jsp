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

<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->

<!-- Scripts -->
<script src="/js/skel.min.js"></script>
<script src="/js/util.js"></script>
<script src="/js/main.js"></script>

<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
</head>

<body>
	<div id="wrapper">		
		<div id="main">
			<div class="inner-store">			
				<div class="row" id="row-sellerMyStore">								
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
					<div class="social-icons" id="sellerMyStore-social-icons">
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
				</div>			
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