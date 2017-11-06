<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<style>
.opTable{width: 1000px; border-style:solid none solid none;}
.opHeader{width: 1000px; text-align:center; border-bottom:solid 1px;}
.opCheckHeader{float:left; height:25px; margin-right:1px; padding-top: 3%;}
.opImgHeader{float:left; width:12%; height:50px; margin-right:1px;}
.opNameHeader{display:inline-block; width:35%; height:50px; margin-right:1px;}
.opNumHeader{display:inline-block; width:8%; height:50px; margin-right:1px;}
.opPriceHeader{display:inline-block; width:12%; height:50px; margin-right:1px;}
.opFeeHeader{display:inline-block; width:12%; height:50px; margin-right:1px;}
.opLastAmountHeader{display:inline-block; width:12%; height:50px; margin-right:1px;}
.opRows{width: 1000px;}
.opCheck{float:left; height:30px; margin-right:1px; margin-top: 1px;}
.opImg{display:inline-block; width:12%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.opName{display:inline-block; width:35%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.opNum{display:inline-block; width:8%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.opPrice{display:inline-block; width:12%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.opFee{display:inline-block; width:12%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.opLastAmount{display:inline-block; width:12%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.opTotalAmount{width: 1000px; height: 50px; border-style:solid none solid none; margin-top: 10px; }
.opPayTitle{display:inline-block; width: 10%;}
.opPayPrice{display:inline-block; width: 20%; text-align: right;}
.opNoneBlock{display:inline-block; width: 68%;}
.opNoneRow{margin: 5% 38%;}
.order_btn{float:right; margin-top: 1%;}
.basket_btn{float:left;  margin-top: 1%;}
.prod_num{width: 35px; text-align: center;}
.changeBtn{margin-top: 5px;}
.main{
    margin: 50px 400px 0 400px;
}

thead th{
	text-align: center;
}

thead th.bottom{
	vertical-align: middle;
    padding: 5px 0;
}

thead th.total{
	text-align: right;
    padding-right: 100px;
}

tbody td{
	vertical-align: middle;
}

table th td.right{
	text-align: right;
}

.header_total{
	width: 180px;
}

.header_fee{
	width: 150px;
}

.header_num{
	width: 100px;
}

.header_price{
    width: 180px;
}

.row_img{
	width: 100px;
}

.address_header{
    vertical-align: middle;
    width: 155px;
    padding: 10px 0 0 20px;
}

input[type="checkbox"] + label, input[type="radio"] + label {
    display: block;
    font-size: 0.9em;
    font-weight: 900;
    margin: 0 0 1em 0;
    color: #585858;
}
</style>


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
//장바구니 확인 페이지
function orderCheck() {
	var url = "orderCheck";
	var windowW = 450;  // 창의 가로 길이
    var windowH = 200;  // 창의 세로 길이
    var left = (window.screen.width - windowW)/2;
    var top = (window.screen.height - windowH)/3;
    
    var sb_index = [];
    
    var hiddenBox = document.getElementsByName("basket_id");
	for(var i = 0; i < hiddenBox.length; i++) {
		sb_index[i] = hiddenBox[i].value;
	}

	if(sb_index != 0){
		jQuery.ajaxSettings.traditional = true;
	
		$.ajax({
	           data : {
	        	   sb_index : sb_index
	           }, 
	           url : "orderProductPro",
	           success : function(data) {
				    open(url,"결제 완료 페이지","top="+top+", left="+left+", height="+windowH+", width="+windowW);
	           },
	           error : function(err){
	           		console.log(err.status);
	           		alert("잠시 후에 다시 시도해주세요.");
	           }
	    });			
	} else {
		
		var p_index = document.getElementById("product_index").value;
		var sb_num = document.getElementById("product_num").value;
		
		$.ajax({
	           data : {
	        	   p_index : p_index,
	        	   new_num : sb_num
	           }, 
	           url : "immedOrderProductPro",
	           success : function(data) {
				    open(url,"결제 완료 페이지","top="+top+", left="+left+", height="+windowH+", width="+windowW);
	           },
	           error : function(err){
	           		console.log(err.status);
	           		alert("잠시 후에 다시 시도해주세요.");
	           }
	    });
	}
}
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
						<li><a href="#"><i class="fa fa-question-circle-o" aria-hidden="true">&nbsp;Customer Service</i></a></li>
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
						
						<li><a href="#"><i class="fa fa-question-circle-o" aria-hidden="true">&nbsp;Customer Service</i></a></li>
						
					</ul>
				</c:when>
				
			</c:choose>
		</nav>
		
		<!-- Main -->
		<div class="main">
			<h2>주문 결제</h2>
			<div class="orderProduct_main">
				<div class="product_info" style="margin-top: 50px">
					<h3>주문상품 정보</h3>
				</div>
				<div class="product_info">
					<table class="table-wrapper">
						<thead>
							<tr>
								<th colspan="2">상 품 정 보</th>
								<th class="header_num">수량</th>
								<th class="header_price">금액</th>
								<th class="header_fee">배송료</th>
								<th class="header_total">최종금액</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<c:set var="i" value="${0 }"></c:set>
								<c:forEach items="${ orderProduct_list}" var="orderProduct">
									<input id="product${i}" type="hidden" name="basket_id" value="${orderProduct.sb_index }">
									<input id="product_index" type="hidden" value="${orderProduct.p_index }">
									<input id="product_num" type="hidden" value="${orderProduct.sb_num }">
									<td class="row_img">
										<img src="downloadProductImg?p_index=${orderProduct.p_index}" style="width: 92px;">
									</td>
									<td class="row_name">${orderProduct.p_name }</td>
									<td class="row_num right">${orderProduct.sb_num }<span>개</span></td>
									<td class="row_price right"><fmt:formatNumber value="${orderProduct.p_price }" pattern="###,###,###,###원"></fmt:formatNumber></td>
									<td class="row_fee right"><fmt:formatNumber value="${orderProduct.p_fee }" pattern="###,###,###,###원"></fmt:formatNumber></td>
									<td class="row_total right"><fmt:formatNumber value="${(orderProduct.p_price * orderProduct.sb_num) + orderProduct.p_fee}" pattern="###,###,###,###원"></fmt:formatNumber></td>
									<c:set var="TotalAmount" value="${TotalAmount = TotalAmount + ((orderProduct.p_price * orderProduct.sb_num) + orderProduct.p_fee)}"></c:set>
									<c:set var="i" value="${i = i + 1 }"></c:set>	
								</c:forEach>
							</tr>
						</tbody>
						<thead>
							<tr>
								<th class="bottom total" colspan="5">결제금액</th>
								<th class="bottom price right"><fmt:formatNumber value="${TotalAmount }" pattern="###,###,###,###원"></fmt:formatNumber></th>
							</tr>
						</thead>
					</table>
				</div>
			</div>	
		
			<div class="shippingAddress_info" style="margin-top: 50px">
				<h3>배송지 정보</h3>
			</div>
			<div class="address_info">
				<table class="table-wrapper address">
					<tr>
						<th class="address_header">수령인</th>
						<td><input type="text" name="" style="width: 200px;"></td>
					</tr>
					<tr>
						<th class="address_header">구매자 연락처</th>
						<td><input type="text" name="" style="width: 200px;"></td>
					</tr>
					<tr>
						<th class="address_header">배송지</th>
						
							<td><input type="text" name=""></td>
						
					</tr>
					<tr>
						<th class="address_header">배송 메모</th>
						<td><input type="text" name="" ></td>
					</tr>
				</table>				
			</div>
			
			<div class="paymentMethod_info" style="margin-top: 50px">
				<h3>결제수단</h3>
			</div>
			
			<div class="opTable">
				<div class="paymentCard" style="display: inline-block; width: 30%;">
					<input type="radio" name="paymentMethod" value="card" id="payment_card"><label class="payment_label" for="payment_card">카드결제</label><br>
				</div>
				<div class="paymentAccount" style="display: inline-block; width: 30%;">
					<input type="radio" name="paymentMethod" value="account" id="payment_bank"><label class="payment_label" for="payment_bank">무통장 입금</label><br>
				</div>
				<div class="paymentPhone" style="display: inline-block; width: 30%;">
					<input type="radio" name="paymentMethod" value="phone" id="payment_phon"><label class="payment_label" for="payment_phon">휴대폰 결제</label><br>
				</div>
			</div>	
			<div class="opTable" style="display: inline-block; width: 1103px; margin-top: 100px;">
				<div class="order_btn">
					<input class="button special" type="button" value="결제하기" onclick="orderCheck()">
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