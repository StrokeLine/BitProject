<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
					<div class="social-icons" style="margin-bottom: 45px;">
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

	<div class="contact text-center">
		<div class="container">
			<div class="row">
				<div class="inquiry_wrap">
					<div class="inquiry_title">상점문의</div>
					<div class="inquiry_subTitle">GET IN TOUCH</div>
					<form action="?" class="form-horizontal">
						<select class="form-control">
							<option>--- 문의 유형 ---</option>							
							<option>상 품</option>
							<option>주 문</option>
							<option>오프라인 상점</option>
							<option>Others</option>					
						</select>
						<input type="text" class="form-control" placeholder="문의 제목" required>					
						<textarea rows="5" class="form-control" placeholder="문의 내용" required></textarea>					
						<input type="submit" class="form-control" value="등록하기">
					</form>
				</div>
			</div>
		</div>
	</div>



<!-- <div class="customerProductInquiry_Main" style="margin: 100px 200px 0px 200px;">
	<div class="customerProductInquiry_top">
		<div class="customerProductInquiry_title">
			<h3>상점문의</h3>
		</div>
		<div class="customerProductInquiry_middle">
			<div class="customerProductInquiry_list" style="border: 1px solid black;">
				<div class="customerProductInquiry_subTitle">
					<div class="customerProductInquiry_user_id" style="width: 30%; display: inline-block;"><h4>구매자 아이디</h4></div>
					<div class="customerProductInquiry_date" style="width: 30%; display: inline-block;"><h4>등록일</h4></div>
				</div>
			</div>
			<div class="customerProductInquiry_button">
				<input type="button" value="등록" style="float: right">
			</div>
		</div>
	</div>
</div> -->

	<script src="/bootstrap2/js/jquery-2.1.1.js"></script>
	<script src="/bootstrap2/js/smoothscroll.js"></script>
	<script src="/bootstrap2/js/bootstrap.min.js"></script>
	<script src="/bootstrap2/js/custom.js"></script>	
	<script src="/bootstrap2/js/html5shiv.js"></script>		
	<script src="/bootstrap2/js/respond.js"></script>	

</body>
</html>