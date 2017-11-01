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
.consumerContractList{margin: 3em 10em; padding: 0 10em;}
.contractTable{width:700px; border-style:solid none solid none; border-width:3px 0 3px 0;}
.tableHeader{width:700px; height:50px; border-bottom:solid 1px; text-align:center;}
.col1{float:left; width:15%; margin-right:1%; height:20px;}
.col2{display:inline-block; width:46%; margin-right:1%; height:20px;}
.col3{display:inline-block; width:10%; margin-right:1%; height:20px;}
.col4{display:inline-block; width:10%; margin-right:1%; height:20px;}
.col5{display:inline-block; width:10%; height:20px;}
.tableRow{width:100%; height:100px; border-bottom:solid 1px; }
.contractDate{float:left; width:15%; margin-right:1%; height:20px;}
.productImg{display:inline-block; width:30%; margin-right:1%; height:20px;}
.productName{display:inline-block; width:15%; margin-right:1%; height:20px;}
.ProductPrice{display:inline-block; width:10%; margin-right:1%; height:20px;}
.shippingFee{display:inline-block; width:10%; margin-right:1%; height:20px;}
.contractState{display:inline-block; width:10%; height:20px;}
.NoneRow{margin: 5% 37%;}

table th{
	text-align: center;
}

table td{
	text-align: center;
	vertical-align: middle;
}

table{
	font-size: 0.8em;
}
</style>

<script type="text/javascript">
	function cancelContract(om_index) {
		if(confirm("해당 상품의 주문을 취소하시겠습니까?")){
			$.ajax({
		           data : {
		        	   os_index : om_index
		           }, 
		           url : "orderProductCancel",
		           success : function(data) {
						if(data == 1){
							alert("선택한 주문이 취소 되었습니다.");
							location.replace("consumerContractList");
						}				        	    	
		        	    
		           },
		           error : function(err){
		           		console.log(err.status);
		           		alert("잠시 후에 다시 시도해주세요.");
		           }
		    });	
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
	
		<div class="consumerContractList">
			<h2>주문/배송정보</h2>
			<table class="table-wrapper">
				<thead>
					<tr>
						<th style="width: 120px;">주문일자</th>
						<th colspan="2">상품정보</th>
						<th style="width: 170px;">금액</th>
						<th style="width: 80px;">배송비</th>
						<th style="width: 90px;">주문상태</th>
					</tr>
				</thead>
				<tbody>
					<c:if test='${order_statement_list == ""}'>
						<tr>
							<td colspan="6">
									<div class="NoneRow">등록 된 정보가 없습니다.</div>					
							</td>
						</tr>
					</c:if>
					<c:forEach var="order_statement" items="${order_statement_list }">
						<tr>
							<td>${order_statement.om_date }</td>
							<td>
								<c:if test="${order_statement.p_img != null }">
									<img src="downloadProductImg?p_index=${order_statement.p_index }">
								</c:if>
							</td>
							<td>${order_statement.p_name }</td>
							<td><fmt:formatNumber value="${(order_statement.om_num * order_statement.p_price)+order_statement.p_fee}" pattern="###,###,###,###원"></fmt:formatNumber></td>
							<td><fmt:formatNumber value="${order_statement.p_fee }" pattern="###,###,###,###원"></fmt:formatNumber></td>
							<td>${order_statement.om_hs }
								<input class="button special small" type="button" value="주문취소" onclick='cancelContract("${order_statement.om_index}")'>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
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