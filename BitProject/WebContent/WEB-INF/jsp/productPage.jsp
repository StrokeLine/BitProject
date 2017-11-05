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
<link rel="stylesheet" href="/css/productPage.css" />
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

<script type="text/javascript">
	function varyNum(check, max, price, fee){
		var num = document.getElementById("text-num");
		var value = num.value;
		if(check){
			num.value = Number(value)+1; 
		} else {
			num.value = Number(value)-1;
		}
		
		if(Number(num.value) > max){
			num.value = max;
		} else if(Number(num.value) < 1) {
			num.value = 1;
		}
		
		var payPrice = document.getElementById("payPrice");
		
		
		
		payPrice.innerHTML = ((price*Number(num.value))+fee).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원";
	}
	
	function onlyNumber(event, price){
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) {
			return;
		} else {
			return false;			
		}
		
		
	}
	
	function removeChar(event, maxNum, price, fee) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) {
			return;			
		} else {
			event.target.value = event.target.value.replace(/[^0-9]/g, "");
			if(event.target.value > maxNum){
				event.target.value = maxNum;				
			}else if( event.target.value < 0 || event.target.value == ''){
				event.target.value = 1;
			}
			
			var payPrice = document.getElementById("payPrice");
			
			payPrice.innerHTML = ((price*Number(event.target.value))+fee).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원";
		}
	}
	
	function shoppingBasketCheck(){
		var p_index = document.getElementById("product_index").value;
		var num = document.getElementById("text-num").value;
		
		$.ajax({
			data : {
				p_index : p_index,
				new_num : num
			}, 
			url : "immedMoveOnBasket",
			success : function(data) {
				if(data){
					if(confirm("선택한 상품이 장바구니에 담겼습니다. \n장바구니로 이동하시겠습니까?")){
						location.href="productBasket";
					}
				}
			}		
		});
	}
	
	function dibsCheck(){
		var p_index = document.getElementById("product_index").value;
		$.ajax({
			data : {
				p_index : p_index
			}, 
			url : "productFavoritePro",
			success : function(data) {
				if(data){
					if(confirm("선택한 상품이 찜에 담겼습니다. \n찜 목록으로 이동하시겠습니까?")){
						location.href="productFavorite";
					}
				}
			}		
		});
	}
	
	function insertInquiry() {
		var pi_type = null;
		
		var p_index = document.getElementById("product_index").value;
		var pi_content = document.getElementById("pi_content").value;
		var select = document.getElementById("i_type");
		
		pi_type = select.options[select.selectedIndex].text;
		
		if(select.selectedIndex == 0){
			alert("문의 항목을 선택해 주세요.");
			return false;
		} else if(pi_content == null || pi_content == "") {
			alert("문의 할 내용을 작성해주세요.");
			return false;
		}
	
		$.ajax({
			data : {
				p_index : p_index,
				pi_content : pi_content,
				pi_type : pi_type
			}, 
			url : "productInquiry",
			success : function(data) {
				if(data){
					alert("정상 처리 되었습니다.");
					location.replace("productPage?p_index="+p_index);
				} else {
					alert("잠시 후 다시 시도해주세요");
				}
			},
			error : function(err){
				console.log(err.status);
			}
		});
	}
	
	window.onload = function(){
		var p_index = document.getElementById("product_index").value;
		
		$.ajax({
			data : {
				p_index : p_index
			}, 
			url : "checkSeller",
			success : function(data) {
				if(data){
 					document.getElementById("p_dibs_btn").disabled = true;
					document.getElementById("p_basket_btn").disabled = true;
					document.getElementById("p_order_btn").disabled = true;
				}
			}		
		});
	}
</script>

<style type="text/css">
	a{
		border-bottom: none;
	}
	
	a:focus, a:hover {
	    text-decoration: none;
	}
	
	pre{
		background-color: white;
	    margin-left: 200px;
	    margin-right: 200px;
	    white-space: pre-wrap;
	}
	
	.panel-group{
		margin-bottom: 0px;
	}

	.star_outer {
		float: left;
		margin-top: 5px;
	    display: block;
	    width: 120px;
	    height: 21px;
	    background: url(/images/great_img.png) 0 -825px;
    }
    .star_inner {
	    display: block;
	    height: 21px;
	    font-size: 0;
	    line-height: 0;
	    background: url(/images/great_img.png) 0 -850px;
	    text-indent: -9999px;
	    max-width: 100%;
    }
    
    .non-data{
    	text-align: center; 
    	width: 1200px;
    	padding: 50px 100px;
    }
    
    .assessment_grade{
    	width: 215px;
	    height: 100%;
	    text-align: center;
	    margin: 0 10px 0 10px;
	    display: inline-block;
       	vertical-align: top;	
    }
    
    .grade-text{
   	    font-weight: 600;
	    font-size: large;
	    float: left;
	    margin-left: 5px;
    }
    
    .inquiry_table{
    	width: 600px;
	    margin-left: auto;
	    margin-right: auto;
	    
    }
    
    .product_inquiry_list{
    	width: 1200px;
	    margin: 0px;
	    display: inline-block;
	    
        color: #333;
	    background-color: #f5f5f5;
	    border-color: #ddd;
	    
        padding: 10px 15px;
        border-top-left-radius: 3px;
	    border-top-right-radius: 3px;
    }
    
    .inquiry_type{
   	    width: 100px;
	    height: 100%;
	    text-align: center;
	    margin: 0 10px 0 10px;
	    display: inline-block;
    }
    
    .inquiry_content{
    	width: 600px;
	    margin: 0 10px 0 10px;
	    display: inline-block;
	    overflow:hidden;
	    white-space: nowrap;
	    text-overflow: ellipsis;
    }

	.inquiry_name{
	    width: 200px;
	    text-align: center;
	    margin: 0 10px 0 10px;
	    display: inline-block;
	}
	
	.inquiry_date{
		width: 180px;
	    text-align: center;
	    margin: 0 10px 0 10px;
	    display: inline-block;
	}
</style>
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
								<li> <i class="fa fa-question-circle-o" aria-hidden="true"> <span>&nbsp;Customer Service&nbsp;|</span> </i> </li>
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
								<li> <i class="fa fa-question-circle-o" aria-hidden="true" onclick="location='#'"> <span>&nbsp;Customer Service&nbsp;|</span> </i> </li>
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
						<li><a href="loginForm"><i class="fa fa-sign-in" aria-hidden="true">&nbsp;Sign in</i></a></li>
						<li><a href="joinForm"><i class="fa fa-pencil-square-o" aria-hidden="true">&nbsp;Sign up</i></a></li>
						<li><a href="loginForm"><i class="fa fa-building-o" aria-hidden="true">&nbsp;Store Open</i></a></li>
						<li><a href="#"><i class="fa fa-question-circle-o" aria-hidden="true">&nbsp;Customer Service</i></a></li>
					</ul>
				
				</c:when>
				<c:when test="${not empty sessionScope.m_index }"><!-- login O -->
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
						
						<li><a href="#"><i class="fa fa-question-circle-o" aria-hidden="true">&nbsp;Customer Service</i></a></li>
						
					</ul>
				</c:when>
				
			</c:choose>
		</nav>
			
		<div class="main">
			<div class="inner">
				<div class="inner-product">		
					<form action="immedOrderProduct" method="post" class="form-productPage">
						<input id="product_index" type="hidden" name="p_index" value="${product_info.p_index}">				
						<div class="product_img">
							<img src="downloadProductImg?p_index=${product_info.p_index}" style="width: 424px; margin-left: auto; margin-right: auto; display: block;">
						</div>
						<div class="product_info_wrap">							
							<div class="product_info">
								<div class="product_item" style="width: 80%; margin-top: 10px;">
									<h2 style="font-weight: 900; letter-spacing: normal;">${product_info.p_name}</h2>
								</div>	
								<div class="hr_line"></div>				
								<div class="left">
									<div class="product_item">
										<h5>상품 금액</h5> 
									</div>
									<div class="product_item">
										<h5>옵션</h5>
									</div>
									<div class="product_item">
										<h5>수량</h5>
									</div>	
									<div class="product_item">
										<h5>배송비</h5>
									</div>
									<div class="product_item">
										<h5>총 합계금액</h5>
									</div>
								</div>
								<div class="right">
									<div class="product_value">
										 <fmt:formatNumber value="${product_info.p_price}" pattern="###,###,###,###원"></fmt:formatNumber>
									</div>						
									<div class="product_value">	
										<select name="">
											<option>-- 옵션 선택 --</option>
											<option></option>
										</select>
									</div>									
									<div class="product_value">					
										<input type="button" class="button small" value=" - " onclick="varyNum(0, ${product_info.p_num }, ${product_info.p_price }, ${product_info.p_fee})">
											<input type="text" name="new_num" class="btn-num" id="text-num" value="1" maxlength="3" onblur='removeChar(event, ${product_info.p_num })' onkeydown='return onlyNumber(event)' onkeyup='removeChar(event, ${product_info.p_num }, ${product_info.p_price}, ${product_info.p_fee})'>
										<input type="button" class="button small" value=" + " onclick="varyNum(1, ${product_info.p_num }, ${product_info.p_price }, ${product_info.p_fee})">
									</div>							
									<div class="product_value">
										<fmt:formatNumber value="${product_info.p_fee}" pattern="###,###,###,###원"></fmt:formatNumber>
										<%-- <ul style="padding: 0px 0px 0px 0px; list-style-type: none;">
											<li><em style="font-style: normal;">배송비 : ${product_info.p_fee} (주문시 결제)</em></li>						
										</ul> --%>
									</div>						
									<div id="payPrice" class="product_value">
										<fmt:formatNumber value="${ product_info.p_price + product_info.p_fee}" pattern="###,###,###,###원"></fmt:formatNumber>
									</div>	
								</div>									
							</div>
							<div class="product_btn_wrap">
								<c:choose>
									<c:when test="${not empty sessionScope.m_index }">
										<div class="product_btn">
											<input id="p_dibs_btn" type="button" class="button fit" value="찜" onclick="dibsCheck()">
										</div>
										<div class="product_btn">
											<input id="p_basket_btn" type="button" class="button special fit" id="bsk_btn" value="장바구니" onclick="shoppingBasketCheck()">
										</div>
										<div class="product_btn">
											<input id="p_order_btn" type="submit" class="button special fit" id="order_btn" value="주문하기">
										</div>														
									</c:when>
									<c:when test="${empty sessionScope.m_index }">
										<div class="product_btn">
											<input id="p_dibs_btn" type="button" class="button fit" value="찜" onclick="location='loginForm'">
										</div>
										<div class="product_btn">
											<input id="p_basket_btn" type="button" class="button special fit" id="bsk_btn" value="장바구니" onclick="location='loginForm'">
										</div>
										<div class="product_btn">
											<input id="p_order_btn" type="button" class="button special fit" id="order_btn" value="주문하기" onclick="location='loginForm'">
										</div>
									</c:when>
								</c:choose>
							</div>
						</div>
					</form>
				</div>						
				
				<div  class="customerS">
					<a href="customerStore?s_index=${product_info.s_index }"><i class="fa fa-home" id="store-icon"></i>&nbsp;&nbsp; 해당상품의 상점 보러가기</a>				
				</div>
				<div class="inner-product" id="product-info">		
					<h4 class="h4-productPage">상품 정보</h4>
					<div class="detail-product" style="width: 100%; display: inline-grid;">
						<pre style="margin: 50px 100px;">${product_info.p_content }</pre>
						<img src='downloadProductContentImg?content_img=${contentImg.pi_src }' style="margin-left: auto; margin-right: auto;">
					</div>
					<div class="detail-product-img">
						
					</div>
				</div>	
				<div class="inner-product">	
					<div class="product_grade">
						<h4 class="h4-productPage"> 상품평</h4>								
						<div class="grade-content">	
							<div class="list-item">
								<div class="assessment_grade">평점</div>
								<div class="assessment_title">제목</div>
								<div class="assessment_date">등록일</div>
							</div>
							<c:if test='${product_assessment_list == "" }'>
								<div class="non-data">등록 된 정보가 없습니다.</div>
							</c:if>
							<c:set var="i" value="${0 }"></c:set>
							<c:forEach var="product_assessment" items="${product_assessment_list }">
								<div class="panel-group" id="accordion">
									<div class="panel panel-default">
										<div class="panel-heading" id="grade-head">																							
												<div class="assessment_grade">
													<span class="star_outer">
														<span class="star_inner" style='width: ${product_assessment.pa_grade * 10}%;'></span>
													</span>
													<em class="grade-text">( ${product_assessment.pa_grade} / 10 )</em>
												</div>
												<a data-toggle = "collapse" data-parent = "#accordion" href="#collapse${i }">
													<div class="assessment_title" style="text-align: left;">${product_assessment.pa_subject }</div>
												</a>
												<div class="assessment_date">${product_assessment.pa_date }</div>
										</div>											
										<div id="collapse${i }" class="panel-collapse collapse">
											<div class="panel-body" id="grade-content"><pre>${product_assessment.pa_content }</pre></div>
										</div>						
									</div>	
								</div>
								<c:set var="i" value="${ i + 1 }"></c:set>
							</c:forEach>
						</div>
					
							<%-- <c:forEach items="" var="">
								<div class="panel-group" id="accordion">
									<div class="panel panel-default">
										<div class="panel-heading">																							
											<a data-toggle = "collapse" data-parent = "#accordion" href="#collapse1">
												<div class="assessment_title">제목</div>
												<div class="assessment_date">등록일</div>
												<div class="assessment_grade">평점</div>
												<div class="assessment_icon">내용보기</div>
											</a>										
											<div id="collapse1" class="panel-collapse collapse in">
												<div class="panel-body">내용</div>
											</div>
										</div>	
									</div>	
								</div>							
							</c:forEach> --%>
							
							<div class="product_grade_list">
											
							</div>
						
						<div class="product_grade_item" id="grade_list">
							<table>
								<thead>
								
								</thead>					
							</table>
						</div>		
						
						<!-- <div class="product_grade_add">
							<div class="grade_add_form">
								<input type="text" name="" id="g_grade_num">
								<input type="text" name="" id="g_title">
								<input type="text" name="" id="g_content">						
								<input type="file" name="" id="g_img_src">					
								<div class="product_grade_btn" style="float: right;">
									<input type="button" value="등록" onclick="insertGrade()">
								</div>
							</div>
						</div> -->					
					</div>
				</div>
				<div class="inner-product">		
					<div class="product_inquiry" id="inquiry" name="inquiry">
						<h4 class="h4-productPage">상품 문의</h4>
						
						<div class="inquiry-content">	
							<div class="list-item">
								<div class="assessment_grade" style="width: 100px;">문의유형</div>
								<div class="assessment_title">문의/답변</div>
								<div class="assessment_date">작성자</div>
								<div class="assessment_icon" style="width: 180px;">작성일</div>																
							</div>
							<c:if test='${product_inquiry_views == "" }'>
								<div class="non-data">등록 된 정보가 없습니다.</div>
							</c:if>
 								<c:forEach var="inquiry_view" items="${product_inquiry_views }">
 									<div class="panel-group" id="accordion">
 										<div class="panel panel-default">								
											<div class="panel-heading" id="grade-head">
												<div class="inquiry_type">${inquiry_view.pi_type }</div>
												<a data-toggle = "collapse" data-parent = "#accordion" href="#collapse${i }">
													<div class="assessment_title" style="text-align: left; width: 590px; overflow:hidden; white-space: nowrap; text-overflow: ellipsis;">${inquiry_view.pi_content }</div>
												</a>
												<div class="inquiry_name">${inquiry_view.m_name }</div>
												<div class="inquiry_date">${inquiry_view.pi_date }</div>
											</div>
											<div id="collapse${i }" class="panel-collapse collapse">
											<div class="panel-body" id="grade-content"><pre>${inquiry_view.pi_content }</pre></div>
											</div>
										</div>
									</div>
									<c:set var="i" value="${i + 1 }"></c:set>
								</c:forEach>	
							<div class="product_inquiry_add" style="margin-top: 100px;">
								<h5>문의사항 등록하기</h5>
								<div class="inquiry_table">
									<div class="inquiry_type_area" style="width: 600px;">
										<select id="i_type">
											<option value="" style="text-align: center;">-- 문의 항목 선택 --</option>
											<option value="상품">상품</option>
											<option value="배송">배송</option>
											<option value="반품">반품</option>
											<option value="기타">기타</option>
										</select>								
									</div>
									<div class="inquiry_content">
										<textarea id="pi_content" placeholder="문의 내용을 작성해주세요" rows="100" cols="40" wrap="hard" style="margin-top: 20px; height: 350px; resize: none;"></textarea>											
									</div>
									<div class="product_inquiry_btn" style="float: right; margin-top: 15px;">
										<input type="button" class="button special small" value="등록" onclick="insertInquiry()"> 
									</div>																
								</div>							
							</div>
						</div>	
					</div>
				</div>	
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
