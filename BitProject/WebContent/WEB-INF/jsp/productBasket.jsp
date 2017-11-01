<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
.pbNoneBlock{display:inline-block; width: 68%;}
.pbNoneRow{margin: 5% 38%;}
.remove_btn{float:right; margin-top: 1%;}
.basket_btn{float:left;  margin-top: 1%;}
.prod_num{width: 35px; text-align: center;}

.productBasket{
	margin: 3em 10em; padding: 0 10em;
}

table th{
	text-align: center;
}

table td{
	text-align: center;
	vertical-align: middle;
}

table{
	font-size: 0.7em;
}

input[type="text"], input[type="password"], input[type="email"], select{
	height: 1.5em;
}

input[type="text"], input[type="password"], input[type="email"], input[type="tel"], select, textarea {
	width: 1.5em;
    margin-left: auto;
   	margin-right: auto;
}
input[type="submit"], input[type="reset"], input[type="button"], button, .button {
	font-size: 0.6em;
}

</style>
<script type="text/javascript">

	function selectOrder(){
		var selectList = [];
		
		var allchdBox = document.getElementsByName("checkRow");
		var c = 0;
		for(var i = 0; i < allchdBox.length; i++) {
			if(allchdBox[i].checked){
				c += 1;
				selectList[i] = allchdBox[i].value;
			}
		}
		
		if(c == 0) {
			alert("1개 이상의 상품을 선택하셔야 합니다.");
			return false;
		}
		
		var form = document.createElement("form");
		form.setAttribute("methed", "post");
		form.setAttribute("action", "orderProduct");
		form.setAttribute("target", "_parent");
		document.body.appendChild(form);
		
		for(var i = 0; i < allchdBox.length; i++) {
			if(allchdBox[i].checked){
				var input_tag = document.createElement("input");
				input_tag.setAttribute("type", "hidden");
				input_tag.setAttribute("name", "selectList");
				input_tag.setAttribute("value", allchdBox[i].value);
				form.appendChild(input_tag);
			}
		}
		
		form.submit();
	}
	
	function updateNum(tag_num){
		var sb_num = document.getElementById(tag_num).value;
		var sb_index = tag_num.split("_")[1];
		
		$.ajax({
	           data : {
	        	   sb_index : sb_index,
	        	   sb_num	: sb_num
	           }, 
	           url : "updateBasketNum",
	           success : function(data) {
					if(data == 1){
						location.href="productBasket";
					}
	           },
	           error : function(err){
	           		console.log(err.status);
	           		alert("잠시 후에 다시 시도해주세요.");
	           }
	    });

	}

	function deleteBasket() {
		var allchdBox = document.getElementsByName("checkRow");
		
		var c = 0;
		for(var i = 0; i < allchdBox.length; i++) {
			if(allchdBox[i].checked){
				c += 1;
			}
		}
		
		if(c == 0) {
			alert("1개 이상의 상품을 선택하셔야 합니다.");
			return false;
		}
		
		var check = confirm("선택한 상품을 삭제하시겠습니까?");
		
		var j = 0;
		if(check) {
			for(var i = 0; i < allchdBox.length; i++) {
				if(allchdBox[i].checked){
					var boxId = document.getElementById("product"+i);
					var sb_index = boxId.value;
					$.ajax({
				           data : {
				        	   sb_index : sb_index
				           }, 
				           url : "deleteShoppingBasket",
				           success : function(data) {
				        	    j += 1;
				        	    if(c == j){
									if(data == 1){
										alert("선택한 상품이 삭제 되었습니다.");
										location.href="productBasket";
									}				        	    	
				        	    }
				           },
				           error : function(err){
				           		console.log(err.status);
				           		alert("잠시 후에 다시 시도해주세요.");
				           }
				    });	
				}
			}
		}		
	}
	
	function totalAmount(){
		var others = document.getElementsByName("checkRow");
		var total_tag = document.getElementById("pbPayPrice");
		var total = 0;
		
		var c = 0;
		var j = 0;
		for(var i = 0; i < others.length; i++) {
			if(others[i].checked){
				j += 1;
				var boxId = document.getElementById("product"+i);
				var sb_index = boxId.value;
				$.ajax({
			           data : {
			        	   sb_index : sb_index
			           }, 
			           url : "getPrice",
			           success : function(data) {
			        		total += ((data.p_price * data.sb_num) + data.p_fee);
			        		c += 1;
			        		if(j == c) {
			        			total_tag.innerHTML = total.toLocaleString() + "원";
			        		}
			           },
			           error : function(err){
			           		console.log(err.status);
			           		alert("잠시 후에 다시 시도해주세요.");
			           }
			    });
			} else {
				total_tag.innerHTML = "<span>원</span>";
			}
		}
		
	}

	function allCheck() {
		var allchd = document.getElementById("checkAll");
		var others = document.getElementsByName("checkRow");
		
		if(allchd.checked){
			for(var i = 0; i < others.length; i++) {
				others[i].checked = true;
			}
			totalAmount();
		} else {
			for(var i = 0; i < others.length; i++) {
				others[i].checked = false;
			}
			totalAmount();
		}	
	}

	window.onload = function(){
		var allchd = document.getElementById("checkAll");
		var others = document.getElementsByName("checkRow");
		
		if(others.length != 0) {
			allchd.checked = true;
			for(var i = 0; i < others.length; i++) {
				others[i].checked = true;
			}
			totalAmount();			
		}
	}
</script>

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
									<c:when test="${s_index == ''}"><!-- store open X -->
										<li> <i class="fa fa-building-o" aria-hidden="true" onclick="location='sellerRegForm'"> <span>&nbsp;Store Open&nbsp;|&nbsp;</span> </i> </li>									
									</c:when>
									<c:when test="${s_index != ''}"><!-- store open O -->
										<li> <i class="fa fa-building-o" aria-hidden="true" onclick="location='sellerMyMain'"> <span>&nbsp;My Store&nbsp;|&nbsp;</span> </i> 
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
								<li> <i class="fa fa-question-circle-o" aria-hidden="true" onclick="location='customerCenterInquiry'"> <span>&nbsp;Customer Service&nbsp;|</span> </i> </li>
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
						<li><a href="customerCenterInquiry"><i class="fa fa-question-circle-o" aria-hidden="true">&nbsp;Customer Service</i></a></li>
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
						<li><a href="main"><i class="fa fa-sign-out" aria-hidden="true">&nbsp;Sign out</i></a></li>
						<li><p class="p_mypage"><i class="fa fa-user" aria-hidden="true">&nbsp;My page</i></p>
							<ul class="subMy">
								<li><a href="memberInfo" class="product_list"><i class="fa fa-user" aria-hidden="true">&nbsp;내정보</i></a></li>
								<c:choose>
									<c:when test="${s_index == ''}"><!-- store open X -->
										<li><a href="sellerRegForm" class="product_list"><i class="fa fa-user" aria-hidden="true">&nbsp;판매자 등록</i></a></li>
									</c:when>
									<c:when test="${s_index != ''}"><!-- store open O -->
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
							<c:when test="${s_index == ''}"><!-- store open X -->
								<li><a href="sellerRegForm"><i class="fa fa-building-o" aria-hidden="true">&nbsp;Store Open</i></a></li>
							</c:when>
							<c:when test="${s_index !='' }"><!-- store open O -->
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
						
						<li><a href="customerCenterInquiry"><i class="fa fa-question-circle-o" aria-hidden="true">&nbsp;Customer Service</i></a></li>
						
					</ul>
				</c:when>
				
			</c:choose>
		</nav>

	<div class="main">
		<div class="productBasket">
			<h2>장바구니</h2>
			<table class="table-wrapper">
				<thead>
					<tr>
						<th style="width: 4em;">
							<input id="checkAll" type="checkbox" name="checkAll" onclick="allCheck()">
							<label for="checkAll"></label>
						</th>
						<th colspan="2">상품명</th>
						<th>수량</th>
						<th>금액</th>
						<th style="width: 80px;">배송료</th>
						<th>최종금액</th>
					</tr>
				</thead>
				<tbody>
					<c:if test='${shopping_basket_list == ""}'>
						<tr>
							<td colspan="7">
								<div class="pbNoneRow">등록 된 정보가 없습니다.</div>						
							</td>
						</tr>
					</c:if>
					<c:set var="i" value="${0 }"></c:set>
					<c:forEach items="${ shopping_basket_list}" var="basket_list">
						<tr>
							<td>
								<input id="product${i}" type="checkbox" name="checkRow" value="${basket_list.sb_index }" onclick="totalAmount()">
								<label for="product${i}"></label>					
							</td>
							<td>
								<c:if test='${basket_list.p_img != null }'>
									<img src="downloadProductImg?p_index=${basket_list.p_index}">
								</c:if>							
							</td>
							<td>
								${basket_list.p_name }
							</td>
							<td style="width: 1px;">
								<input class="prod_num" id="prodNum_${basket_list.sb_index }" type="text" value="${basket_list.sb_num }" maxlength="2">
								<input class="button special small" type="button" value="변경" onclick='updateNum("prodNum_${basket_list.sb_index }")' style="margin-top: 5px;">
							</td>
							<td>
								<fmt:formatNumber value="${basket_list.p_price }" pattern="###,###,###,###원"></fmt:formatNumber> 	
							</td>
							<td>
								<fmt:formatNumber value="${basket_list.p_fee }" pattern="###,###,###,###원"></fmt:formatNumber>
							</td>
							<td>
								<fmt:formatNumber value="${(basket_list.p_price * basket_list.sb_num) + basket_list.p_fee}" pattern="###,###,###,###원"></fmt:formatNumber>
							</td>
						</tr>	
						<c:set var="TotalAmount" value="${TotalAmount = TotalAmount + ((basket_list.p_price * basket_list.sb_num) + basket_list.p_fee)}"></c:set>
						<c:set var="i" value="${i = i + 1 }"></c:set>	
					</c:forEach>
				</tbody>
				<thead>
					<tr>
						<th colspan="6" style="text-align: right;">
							결제금액
						</th>
						<th style="text-align: right;">
							<div class="pbPayPrice" id="pbPayPrice"></div>
						</th>
					</tr>
				</thead>
			</table>
	
	
				<div class="remove_btn">
					<input class="special" type="button" value="삭제" onclick="deleteBasket()">
				</div>
				<div class="basket_btn">
					<input class="special" type="button" value="선택한 상품 주문하기" onclick="selectOrder()">	
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
