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
	
<style type="text/css">
	.main{
		margin: 5em 20em;
	}
	.pbNoneRow{
		margin: 5% 38%;
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
	
	a{
		border-bottom: none;
	}
	
	a:focus, a:hover {
		text-decoration: none;
	}
	
</style>

<script type="text/javascript">
	function addtNotice(){
		var	title = document.getElementById("activityArea");
		
		title.innerHTML = '<div class="title"><h2 style="text-align: center; margin-top: 100px;">공지사항 작성</h2></div>'
						+ '	<form action="addStoreNoticePro" method="post">'
						+ '		<table class="table-wrapper">'
						+ '			<thead>'
						+ '				<tr>'
						+ '					<th style="vertical-align: middle; padding: 0px 0 0 80px;">제목</th>'
						+ '					<td>'
						+ '						<input type="text" name="sn_subject" style="width: 400px; height: 30px;">'
						+ '					</td>'						
						+ '				</tr>'
						+ '			</thead>'
						+ '			<tbody>'
						+ '				<tr>'
						+ '					<th style="vertical-align: middle; padding: 0px 0 0 80px;">내용</th>'
						+ '					<td>'
						+ '						<textarea name="sn_content" rows="100" cols="40" wrap="hard" style="width: 600px; height: 500px; resize: none;"></textarea>'
						+ '					</td>'
						+ '				</tr>'
						+ '			</tbody>'
						+ '		</table>'
						+ '		<div class="addStoreNotiBtn">'
						+ '			<ul style="margin-left: auto; margin-right: auto; display: table;">'
						+ '				<li style="float: left;">'
						+ '					<input class="button special small" type="submit" value="확인">'							
						+ '				</li>'
						+ '				<li style="float: left;">'
						+ '					<input class="button special small" type="button" value="취소" onclick="clearArea()">'							
						+ '				</li>'
						+ '			</ul>'
						+ '		</div>'
						+ '</form>';
						
		title.scrollIntoView(true);
	}
	
	function modifyNotice(sn_index){
		var	title = document.getElementById("activityArea");
		$.ajax({
			data : {
				sn_index : sn_index
			}, 
			url : "getStoreNotice",
			success : function(data) {
				console.log(data);
				title.innerHTML = '<div class="title"><h2 style="text-align: center; margin-top: 100px;">공지사항 수정</h2></div>'
					+ '	<form action="modifyStoreNoticePro" method="post">'
					+ '		<input type="hidden" name="sn_index" value="'+data.sn_index+'">'
					+ '		<table class="table-wrapper">'
					+ '			<thead>'
					+ '				<tr>'
					+ '					<th style="vertical-align: middle; padding: 0px 0 0 80px;">제목</th>'
					+ '					<td>'
					+ '						<input type="text" name="sn_subject" style="width: 400px; height: 30px;" value="'+data.sn_subject+'">'
					+ '					</td>'						
					+ '				</tr>'
					+ '			</thead>'
					+ '			<tbody>'
					+ '				<tr>'
					+ '					<th style="vertical-align: middle; padding: 0px 0 0 80px;">내용</th>'
					+ '					<td>'
					+ '						<textarea name="sn_content" rows="100" cols="40" wrap="hard" style="width: 600px; height: 500px; resize: none;">'+data.sn_content+'</textarea>'
					+ '					</td>'
					+ '				</tr>'
					+ '			</tbody>'
					+ '		</table>'
					+ '		<div class="addStoreNotiBtn">'
					+ '			<ul style="margin-left: auto; margin-right: auto; display: table;">'
					+ '				<li style="float: left;">'
					+ '					<input class="button special small" type="submit" value="확인">'							
					+ '				</li>'
					+ '				<li style="float: left;">'
					+ '					<input class="button special small" type="button" value="취소" onclick="clearArea()">'							
					+ '				</li>'
					+ '			</ul>'
					+ '		</div>'
					+ '</form>';		
				title.scrollIntoView(true);
			},
			error : function(err){
				console.log(err.status);
			}
		});
			
		itle.scrollIntoView(true);
	}

	function infoContent(sn_index){
		var	title = document.getElementById("activityArea");
		
		$.ajax({
			data : {
				sn_index : sn_index
			}, 
			url : "getStoreNotice",
			success : function(data) {
				console.log(data);
				title.innerHTML = '<table class="table-wrapper">'
								+ '	<thead>'
								+ '		<tr>'
								+ '			<th style="text-align: left;padding: 15px 100px; font-size: x-large;">'+ data.sn_subject +'</th>'
								+ '			<th style="vertical-align: bottom;">'+ data.sn_date +'</th>'	
								+ '		</tr>'
								+ '	</thead>'
								+ '	<tbody>'
								+ '		<tr>'
								+ '			<td colspan="2" style="text-align: left;padding: 15px 100px;"><pre style="background-color: white;">'+ data.sn_content +'</pre></td>'
								+ '		</tr>'
								+ '	</tbody>'
								+ '</table>'
								+ '<div class="storeNotice-btn">'
								+ '	<ul>'
								+ '		<li style="float: right;">'
								+ '			<input class="button special small" type="button" value="삭제" onclick="deleteNoti('+ data.sn_index +')">'
								+ '		</li>'
								+ '		<li style="float: right;">'
								+ '			<input class="button special small" type="button" value="수정" onclick="modifyNotice('+ data.sn_index +')">'
								+ '		</li>'
								+ '	</ul>'
								+ '</div>';
				title.scrollIntoView(true);
			},
			error : function(err){
				console.log(err.status);
			}
		});
	}
	
	function deleteNoti(sn_index){
		
		if(!confirm("해당 공지사항 게시글을 삭제하시겠습니까?")){
			return false;
		}	
		
		$.ajax({
			data : {
				sn_index : sn_index
			}, 
			url : "deleteStoreNoti",
			success : function(data) {
				if(data){
					alert("정상적으로 삭제되었습니다.");
					location.replace("customerNotice");
				}
			},
			error : function(err){
				console.log(err.status);
			}
		});
		
	}
	
	function clearArea(){
		var	area = document.getElementById("activityArea");
		area.innerHTML = "";
		
		window.scrollTo(0,0);
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

		<!-- main -->
		<div class="main">
			<div class="customerNotice_title" style="width: 100%;">
				<h2>공지사항</h2>
			</div>
			<table class="table-wrapper">
				<thead>
					<tr>
						<th style="width: 100px;">번호</th>
						<th>제목</th>
						<th style="width: 200px;">등록일</th>					
					</tr>
				</thead>
				<tbody>
					<c:if test='${notice_view_list == ""}'>
						<tr>
							<td colspan="3">
								<div class="pbNoneRow">등록 된 정보가 없습니다.</div>						
							</td>
						</tr>
					</c:if>
					<c:set var="i" value="${fn:length(notice_view_list)}"/>
					<c:forEach var="notice_view" items="${ notice_view_list }">
						<tr>
							<td>${i }</td>
							<td style="text-align: left;"><a href="javaScript:infoContent(${notice_view.sn_index })">${notice_view.sn_subject }</a></td>
							<td>${notice_view.sn_date }</td>
						</tr>
					<c:set var="i" value="${ i - 1 }"/>
					</c:forEach>
				</tbody>
			</table>
			<div class="storeNotiBtn">
				<input class="button special small" type="button" value="글쓰기" onclick="addtNotice()" style="float: right;">
			</div>
			
			<div class="activityArea" id="activityArea">
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
