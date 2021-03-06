﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
	$("#menu ul.sub").hide();//카테고리 하위메뉴 hide
	$("#menu ul.subMy").hide();//마이페이지 하위메뉴 hide
	$("#menu ul.subms").hide();//내상점 하위메뉴 hide
	
	$("#menu ul.menu li").click(function(){
		$("ul",this).slideToggle("fast");
	});
	$("#header ul.main_icons_o li").click(function(){
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
				<div class="menubar">				
					<a href="main" class="logo">
						<span class="symbol"><i class="fa fa-paw fa-2x" aria-hidden="true"></i></span><span class="title">FreeHaGae</span>
					</a>
						<c:choose>
							<c:when test="${empty sessionScope.m_index }"><!-- login X -->
								
							<ul class="main_icons_x">
								<li> <i class="fa fa-home" aria-hidden="true" onclick="location='main'"> <span>&nbsp;Home&nbsp;|&nbsp;</span> </i> </li>
								<li> <i class="fa fa-sign-in" aria-hidden="true" onclick="location='loginForm'"> <span>&nbsp;Sign In&nbsp;|&nbsp;</span> </i> </li>
								<li> <i class="fa fa-pencil-square-o" aria-hidden="true" onclick="location='joinForm'"> <span>&nbsp;Sign Up&nbsp;|&nbsp;</span> </i> </li>
								<li> <i class="fa fa-building-o" aria-hidden="true" onclick="location='loginForm'"> <span>&nbsp;Store Open&nbsp;|&nbsp;</span> </i> </li>
								<li> <i class="fa fa-shopping-cart" aria-hidden="true" onclick="location='mapTest'"> <span>&nbsp;Off-Line Store&nbsp;|</span> </i> </li>
							</ul>
							
							</c:when>
							<c:when test="${not empty sessionScope.m_index }"><!-- login O -->
							<ul class="main_icons_o" id="main_icons_o">
								<li> <i class="fa fa-home" aria-hidden="true" onclick="location='main'"> <span>&nbsp;Home&nbsp;|&nbsp;</span> </i> </li>
								<li> <i class="fa fa-sign-out" aria-hidden="true" onclick="location='logoutPro'"> <span>&nbsp;Sign out&nbsp;|&nbsp;</span> </i> </li>
								<li> <i class="fa fa-user" aria-hidden="true" onclick="location='memberInfo'"> <span>&nbsp;My page&nbsp;|&nbsp;</span> </i> 
									<ul class="mypagesub">
										<li><a href="memberInfo"><i class="fa fa-user" aria-hidden="true">&nbsp;내정보</i></a></li>
										<li><a href="followingNotiMain"><i class="fa fa-user" aria-hidden="true">&nbsp;관심스토어 알림</i></a></li>
										<li><a href="productFavorite"><i class="fa fa-user" aria-hidden="true">&nbsp;찜한 상품</i></a></li>
										<li><a href="productBasket"><i class="fa fa-user" aria-hidden="true">&nbsp;장바구니</i></a></li>
										<li><a href="consumerContractList"><i class="fa fa-user" aria-hidden="true">&nbsp;주문/배송</i></a></li>
										<li><a href="qAndAMain"><i class="fa fa-user" aria-hidden="true">&nbsp;문의사항</i></a></li>
										<li><a href="deleteMember"><i class="fa fa-user" aria-hidden="true">&nbsp;탈퇴하기</i></a></li>
										
									</ul>
								</li>
								<c:choose>
									<c:when test="${empty sessionScope.s_index}"><!-- store open X -->
										<li> <i class="fa fa-building-o" aria-hidden="true" onclick="location='sellerRegForm'"> <span>&nbsp;Store Open&nbsp;|&nbsp;</span> </i> </li>									
									</c:when>
									<c:when test="${not empty sessionScope.s_index}"><!-- store open O -->
										<li> <i class="fa fa-building-o" aria-hidden="true" onclick="location='sellerMyStore'"> <span>&nbsp;My Store&nbsp;|&nbsp;</span> </i> 
											<ul>
												<li><a href="sellerMyStore"><i class="fa fa-building-o" aria-hidden="true">&nbsp;상점 정보</i></a></li>
												<li><a href="customerNotice"><i class="fa fa-building-o" aria-hidden="true">&nbsp;공지 사항</i></a></li>
												<li><a href="managementProduct"><i class="fa fa-building-o" aria-hidden="true">&nbsp;상품관리</i></a></li>
												<li><a href="customerOrderDelivery"><i class="fa fa-building-o" aria-hidden="true">&nbsp;주문/배송 관리</i></a></li>
												<li><a href="customerProductInquiry"><i class="fa fa-building-o" aria-hidden="true">&nbsp;문의관리</i></a></li>
											</ul>
										</li>
									</c:when>
								</c:choose>
								<li> <i class="fa fa-shopping-cart" aria-hidden="true" onclick="location='mapTest'"> <span>&nbsp;Off-Line Store&nbsp;|</span> </i> </li>
							</ul>
							</c:when>
						</c:choose>
				</div>
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
			<c:choose>
				<c:when test="${empty sessionScope.m_index }"><!-- login X -->
					
					<ul class="menu">
						<li><a href="main" class="product_list"><i class="fa fa-home" aria-hidden="true">&nbsp;Home</i></a></li>
						<li><p class="p_cate"><i class="fa fa-paw" aria-hidden="true">&nbsp;Category</i></p>
							<ul class="sub">
								<li><a href="productList?major_num=1" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;전체</i></a></li>
								<li><a href="productList?major_num=2" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;사료/간식</i></a></li>
								<li><a href="productList?major_num=3" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;배변용품</i></a></li>
								<li><a href="productList?major_num=4" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;건강관리</i></a></li>
								<li><a href="productList?major_num=5" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;미용/목욕</i></a></li>
								<li><a href="productList?major_num=6" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;장난감</i></a></li>
								<li><a href="productList?major_num=7" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;리빙</i></a></li>
								<li><a href="productList?major_num=8" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;패션</i></a></li>
								<li><a href="productList?major_num=9" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;야외용품</i></a></li>
							</ul>
						</li>
						<li><a href="loginForm"><i class="fa fa-sign-in" aria-hidden="true">&nbsp;Sign in</i></a></li>
						<li><a href="joinForm"><i class="fa fa-pencil-square-o" aria-hidden="true">&nbsp;Sign up</i></a></li>
						<li><a href="loginForm"><i class="fa fa-building-o" aria-hidden="true">&nbsp;Store Open</i></a></li>
						<li><a href="mapTest"><i class="fa fa-shopping-cart" aria-hidden="true">&nbsp;Off-Line Store</i></a></li>
					</ul>
				
				</c:when>
				<c:when test="${not empty sessionScope.m_index }"><!-- login O -->
					<ul class="menu">
						<li><a href="main" class="product_list"><i class="fa fa-home" aria-hidden="true">&nbsp;Home</i></a></li>
						<li><p class="p_cate"><i class="fa fa-paw" aria-hidden="true">&nbsp;Category</i></p>
							<ul class="sub">
								<li><a href="productList?major_num=1" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;전체</i></a></li>
								<li><a href="productList?major_num=2" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;사료/간식</i></a></li>
								<li><a href="productList?major_num=3" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;배변용품</i></a></li>
								<li><a href="productList?major_num=4" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;건강관리</i></a></li>
								<li><a href="productList?major_num=5" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;미용/목욕</i></a></li>
								<li><a href="productList?major_num=6" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;장난감</i></a></li>
								<li><a href="productList?major_num=7" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;리빙</i></a></li>
								<li><a href="productList?major_num=8" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;패션</i></a></li>
								<li><a href="productList?major_num=9" class="product_list"><i class="fa fa-paw" aria-hidden="true">&nbsp;야외용품</i></a></li>
							</ul>
						</li>
						<li><a href="logoutPro"><i class="fa fa-sign-out" aria-hidden="true">&nbsp;Sign out</i></a></li>
						<li><p class="p_mypage"><i class="fa fa-user" aria-hidden="true">&nbsp;My page</i></p>
							<ul class="subMy">
								<li><a href="memberInfo" class="product_list"><i class="fa fa-user" aria-hidden="true">&nbsp;내정보</i></a></li>
								<c:choose>
									<c:when test="${empty sessionScope.s_index}"><!-- store open X -->
										<li><a href="sellerRegForm" class="product_list"><i class="fa fa-user" aria-hidden="true">&nbsp;판매자 등록</i></a></li>
									</c:when>
									<c:when test="${not empty sessionScope.s_index}"><!-- store open O -->
										<li><a href="sellerMyMain" class="product_list"><i class="fa fa-user" aria-hidden="true">&nbsp;내상점</i></a></li>						
									</c:when>
								</c:choose>
								<li><a href="followingNotiMain" class="product_list"><i class="fa fa-user" aria-hidden="true">&nbsp;관심스토어 알림</i></a></li>
								<li><a href="productFavorite" class="product_list"><i class="fa fa-user" aria-hidden="true">&nbsp;찜한 상품</i></a></li>
								<li><a href="productBasket" class="product_list"><i class="fa fa-user" aria-hidden="true">&nbsp;장바구니</i></a></li>
								<li><a href="consumerContractList" class="product_list"><i class="fa fa-user" aria-hidden="true">&nbsp;주문/배송</i></a></li>
								<li><a href="qAndAMain" class="product_list"><i class="fa fa-user" aria-hidden="true">&nbsp;문의사항</i></a></li>
								<li><a href="deleteMember" class="product_list"><i class="fa fa-user" aria-hidden="true">&nbsp;탈퇴하기</i></a></li>
							</ul>
						</li>
						<c:choose>
							<c:when test="${empty sessionScope.s_index}"><!-- store open X -->
								<li><a href="sellerRegForm"><i class="fa fa-building-o" aria-hidden="true">&nbsp;Store Open</i></a></li>
							</c:when>
							<c:when test="${not empty sessionScope.s_index}"><!-- store open O -->
								<li><p><i class="fa fa-building-o" aria-hidden="true">&nbsp;My Store</i></p>
									<ul class="subms">
										<li><a href="sellerMyStore"><i class="fa fa-building-o" aria-hidden="true">&nbsp;상점 정보</i></a></li>
										<li><a href="customerNotice"><i class="fa fa-building-o" aria-hidden="true">&nbsp;공지 사항</i></a></li>
										<li><a href="managementProduct"><i class="fa fa-building-o" aria-hidden="true">&nbsp;상품관리</i></a></li>
										<li><a href="customerOrderDelivery"><i class="fa fa-building-o" aria-hidden="true">&nbsp;주문/배송 관리</i></a></li>
										<li><a href="customerProductInquiry"><i class="fa fa-building-o" aria-hidden="true">&nbsp;문의관리</i></a></li>
										
									</ul>
								</li>						
							</c:when>
						</c:choose>
						
						<li><a href="mapTest"><i class="fa fa-shopping-cart" aria-hidden="true">&nbsp;Off-Line Store</i></a></li>
						
					</ul>
				</c:when>
				
			</c:choose>
		</nav>
	
		<!-- Main -->
		<div id="main">
			<div class="inner">
				<header>
					<c:choose>
						<c:when test="${empty sessionScope.m_index  }"><!-- login X -->
							<div class="petbg"> 
									<img alt="" src="/images/petinfobtn.jpg">
								</div>
								<div class="petbtn">
									<button class="special fit" onclick="location='loginForm'">대표 반려견 등록<i class="fa fa-heart" aria-hidden="true" style="color: red;"></i></button>
								</div>
						</c:when>
					
						<c:when test="${not empty sessionScope.m_index  }"><!-- login O -->
							<c:choose>
								<c:when test="${pet_info != null }">
									<div class="petbg"> 
										<img alt="" src="/images/pet2.jpg">
									</div>
									<div class="petimg">
									
											<ul>
												<li>
													<img alt="" src="downloadPetImg">
												</li>
											</ul>
										
									</div>
									<div class="petinfo">
										<ul>
											<li><label><i class="fa fa-paw" aria-hidden="true">&nbsp;${pet_info.pet_name}</i></label></li>
											<li><label><i class="fa fa-paw" aria-hidden="true">&nbsp;<fmt:formatDate value="${pet_info.pet_birthday}" pattern="yyyy-MM-dd"/> </i></label></li>
											<li><label><i class="fa fa-paw" aria-hidden="true">&nbsp;${pet_info.pet_breeds}</i></label></li>
											<li> <c:choose>
													<c:when test="${pet_info.pet_gender == 1}">
														<label><i class="fa fa-paw" aria-hidden="true">&nbsp;남아</i></label>
													</c:when>
													<c:when test="${pet_info.pet_gender != 1 }">
														<label><i class="fa fa-paw" aria-hidden="true">&nbsp;여아</i></label>
													</c:when>
												 </c:choose>
											</li>
										</ul>
									</div>
								</c:when>
								<c:when test="${pet_info == null }">
									<div class="petbg"> 
										<img alt="" src="/images/petinfobtn.jpg">
									</div>
									<div class="petbtn">
										<button class="special fit" onclick="location='petInfo'">대표 반려견 등록<i class="fa fa-heart" aria-hidden="true" style="color: red;"></i></button>
									</div>
								</c:when>
							</c:choose>
						</c:when>
					</c:choose>
					
				</header>
				
				<section class="tiles">
									
					<article class="style1">
						<span class="image">
							<img src="/images/all.png" alt="" />
						</span>
						<a href="productList?major_num=1">
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
						<a href="productList?major_num=2">
							<h2>사료/간식</h2>
							<div class="content">
								<p>건식사료, 소프트사료, 캔사료, 개껌, <br>사사미, 수제간식, 비스켓/시리얼/쿠키, 동결/건조간식, 캔/파우치, 저키/스틱</p>
							</div>
						</a>
					</article>
					
					<article class="style3">
						<span class="image">
							<img src="/images/defecate.png" alt="" />
						</span>
						<a href="productList?major_num=3">
							<h2>배변용품</h2>
							<div class="content">
								<p>배변패드, 배변판, 기저귀/팬티, <br>탈취제/소독제, 배변봉투/집게</p>
							</div>
						</a>
					</article>
					
					<article class="style4">
						<span class="image">
							<img src="/images/health.png" alt="" />
						</span>
						<a href="productList?major_num=4">
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
						<a href="productList?major_num=5">
							<h2>미용/목욕</h2>
							<div class="content">
								<p>샴푸/린스/비누, 에센스/향수, <br>브러쉬/빗, 이발기, 미용가위, <br>발톱/발 관리, 타월/가운, <br>기타미용/목욕용품</p>
							</div>
						</a>
					</article>
					
					<article class="style6">
						<span class="image">
							<img src="/images/toy.png" alt="" />
						</span>
						<a href="productList?major_num=6">
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
						<a href="productList?major_num=7">
							<h2>리빙</h2>
							<div class="content">
								<p>울타리, 식기/식탁, 급수병/물병, <br>쿠션/방석, 하우스, 매트, <br>강아지 계단/스텝</p>
							</div>
						</a>
					</article>
					
					<article class="style3">
						<span class="image">
							<img src="/images/fashion.png" alt="" />
						</span>
						<a href="productList?major_num=8">
							<h2>패션</h2>
							<div class="content">
								<p>패딩/아우터, 올인원/원피스, 티셔츠, <br>기타의류, 악세서리</p>
							</div>
						</a>
					</article>
					
					<article class="style1">
						<span class="image">
							<img src="/images/outdoor.png" alt="" />
						</span>
						<a href="productList?major_num=9">
							<h2>야외용품</h2>
							<div class="content">
								<p>목줄, 가슴줄, 목걸이/인식표, 리드줄, <br>캐리어, 유모자, 카시트</p>
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
