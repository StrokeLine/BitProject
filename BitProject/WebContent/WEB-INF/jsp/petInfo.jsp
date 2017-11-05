<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
s
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

<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>

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
	
	$("#pet_breeds").select2({
    	width : "300px",
    	language: {
   		    noResults: function (params) {
   		      return "찾을 수 없는 견종입니다.";
   		    }
   		}
    });
    
    $.ajax({
           url : "breedsList",
           success : function(data) {
            	$.each(data, function(k, v) {
        			$('<option>').val(k.db_index).text(v.db_breeds).appendTo("#pet_breeds");
            	});
           },
           error : function(err){
           		console.log(err.status);
           }
    });
	
});

//데이터베이스에 펫추가 부분
function addPet() {
	var pet_name = document.getElementById("pet_name").value;
	var pet_gender = null;
	var pet_birthday = null;
	var pet_breeds = null;
	
	
	var radio = document.getElementsByName("pet_gender");
	for(var i = 0; i < radio.length; i++) {
		if(radio[i].checked == true) {
			pet_gender = radio[i].value;
		}
	}
	
	var date = document.getElementById("pet_birthday").value;
	pet_birthday = new Date(date.split("-")[0], date.split("-")[1]-1, date.split("-")[2]);
	
	var select = document.getElementById("pet_breeds");
	pet_breeds = select.options[select.selectedIndex].text;
	
	if(pet_name == null || pet_name == "") {
		alert("반려견의 이름을 입력해주세요.");
		return false;
	} else if(pet_gender == null){
		alert("반려견의 성별을 선택해 주세요.");
		return false;
	} else if(pet_birthday == null || pet_birthday == "") {
		alert("반려견의 생일을 선택해 주세요.");
		return false;
	} else if(pet_breeds == null || pet_breeds == "" || select.selectedIndex == 0){
		alert("반려견의 견종을 선택해 주세요.");
		return false;
	} 
	$.ajax({
        data : {
        	pet_name : pet_name,
        	pet_gender : pet_gender,
        	pet_birthday : pet_birthday,
        	pet_breeds : pet_breeds
        },
        url : "addPet",
        success : function(data) {
        	if(data){
        		console.log(data);
        		var addPetForm = document.getElementById("imgForm");
        		var input_tag = document.createElement("input");
        		input_tag.type="hidden";
        		input_tag.name = "pet_index";
        		input_tag.value = data;
        		addPetForm.appendChild(input_tag);
        		addPetForm.submit();
        	} else {
        		alert("펫 정보가 추가되지 않았습니다. 잠시 후 다시 시도해주세요");
        	}
        }
    });
		
		document.getElementById("addPetBtn").disabled = false;
}
		


// select 태그에 견종 추가
function addSelectOptions(){
   	var selectPetBreeds = document.getElementById("selectPetBreeds").value;
   	
   	$("#pet_breeds").select2({
   		width : "300px",
   		language: {
   		    noResults: function (params) {
   		      return "찾을 수 없는 견종입니다.";
   		    }
   		}
   	});
   	
	$.ajax({
           url : "breedsList",
           success : function(data) {
            	$.each(data, function(k, v) {
            		if(selectPetBreeds == v.db_breeds) {
            			$('<option>').val(k.db_index).text(v.db_breeds).attr("selected", "selected").appendTo("#pet_breeds");
            		} else {
	            		$('<option>').val(k.db_index).text(v.db_breeds).appendTo("#pet_breeds");	            			
            		}
            	});
           },
           error : function(err){
           		console.log(err.status);
           }
    });
	
}

// 웹 페이지 로딩 왼료 후 select 태그에 option을 추가하는 함수 호출
window.onload = function(){
	var select = document.getElementsByName("pet_breeds");
	
	for(var i = 0; i < select.length; i++) {
		addSelectOptions(i);
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
									<c:when test="${s_index == ''}"><!-- store open X -->
										<li> <i class="fa fa-building-o" aria-hidden="true" onclick="location='sellerRegForm'"> <span>&nbsp;Store Open&nbsp;|&nbsp;</span> </i> </li>									
									</c:when>
									<c:when test="${s_index != ''}"><!-- store open O -->
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
						
						<li><a href="#"><i class="fa fa-question-circle-o" aria-hidden="true">&nbsp;Customer Service</i></a></li>
						
					</ul>
				</c:when>
				
			</c:choose>
		</nav>
	
	<!-- Container -->
	<div id="main">
		<div class="inner">
			<section>
				<div class="container">
					<div class="row">
						<div class="col-md-8" id="petf">
							<h1>
								<span><img alt="" src="/images/petinfo.png"></span>
							</h1>
							<hr>
								<!-- pet name -->
								<div class="form-group">
									<dl>
										<dt>
											<label class="control-label col-sm-3">이름 <span class="text-danger">*</span></label>
										</dt>
										<dd>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-heart" aria-hidden="true"></i></span> 
												<input type="text" class="form-control" name="pet_name" 
													id="pet_name" placeholder="Enter your Pet Name" value="">
											</div>
										</dd>
									</dl>
								</div>
								<!-- pet breeds -->
								<div class="form-group">
									<dl>
										<dt>
											<label class="control-label col-sm-3">생일 <span class="text-danger">*</span></label>
										</dt>
										<dd>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-heart" aria-hidden="true"></i></span>
												<input type="date" id="pet_birthday">
											</div>
										</dd>
									</dl>
								</div>
								
								<div class="form-group">
									<dl>
										<dt>
											<label class="control-label col-sm-3">성별 <span class="text-danger">*</span></label>
										</dt>
										<dd>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-heart" aria-hidden="true"></i></span>
												<input type="radio" id="petgender" value="1" name="pet_gender" checked="checked"><label for="petgender"><i class="fa fa-mars" aria-hidden="true">남아</i></label>
												<input type="radio" id="pet_gender" value="2" name="pet_gender"><label for="pet_gender"><i class="fa fa-venus" aria-hidden="true">여아</i></label>
											</div>
										</dd>
									</dl>
								</div>
								
								<div class="form-group">
									<dl>
										<dt>
											<label class="control-label col-sm-3">품종 <span class="text-danger">*</span></label>
										</dt>
										<dd>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-heart" aria-hidden="true"></i></span> 
												<input type="hidden" id="selectPetBreeds">
												<select id="pet_breeds" name="pet_breeds">
													<option selected disabled value="0">견종을 선택해주세요.</option>
												</select>
											</div>
										</dd>
									</dl>
								</div>
								
								<div class="form-group">
									<dl>
										<dt>
											<label class="control-label col-sm-3">프로필이미지 <span class="text-danger">*</span></label>
										</dt>
										<dd>
											<div class="input-group">
												<form id="imgForm" action="PetImgupload" enctype="multipart/form-data" method="post" >
													<span class="input-group-addon"><i class="fa fa-heart" aria-hidden="true"></i></span>
													<input type="file" name="imgSrc" accept=".jpg, .png"> 
												</form>
											</div>
										</dd>
									</dl>
								</div>
								
								<div class="form-group">
									<input type="button" class="button special small" value="등록" onclick="addPet()">
									<input type="button" class="button special small" value="취소" onclick="location='main'">
								</div>
								
						</div><!-- id=petf -->
					</div><!-- row -->
				</div><!-- container -->
			</section>
		</div><!-- inner -->
	</div><!-- main -->
	
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
