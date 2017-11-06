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

<!-- select2 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />

<script type="text/javascript" >

	//  아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
	var idCheck = 0;
	var pwdCheck = 0;
	var emailCheck = 0;
	var passwdCheck = 0;
	var telCheck = 0;
	var phoneCheck = 0;
	var nameCheck = 0;
	var nickCheck = 0;
	//아이디 체크하여 가입버튼 비활성화, 중복확인.
	function checkId() {
		var inputed = $('#emailid').val();
		$.ajax({
			data : {
				id : inputed
			},
			url : "checkID",
			success : function(data) {
				if (inputed == "" && data == '0') {
					$("#inputjoin").prop("disabled", true);
					$("#emailid").css("background-color", "#FFCECE");
					idCheck = 0;
				} else if (data == '0') {
					$("#emailid").css("background-color", "#B0F6AC");
					idCheck = 1;
					if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
						$("#inputjoin").prop("disabled", false);
						signupCheck();
					}
				} else if (data == '1') {
					$("#inputjoin").prop("disabled", true);
					$("#emailid").css("background-color", "#FFCECE");
					idCheck = 0;
				}
			}
		});
	}

	function checkPwd() {
		var inputed = $('#password').val();
		var reinputed = $('#cpassword').val();
		if (reinputed == "" && (inputed != reinputed || inputed == reinputed)) {
			$("#inputjoin").prop("disabled", true);
			$("#cpassword").css("background-color", "#FFCECE");
		} else if (inputed == reinputed) {
			$("#cpassword").css("background-color", "#B0F6AC");
			pwdCheck = 1;
			if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#inputjoin").prop("disabled", false);
				signupCheck();
			}
		} else if (inputed != reinputed) {
			pwdCheck = 0;
			$("#inputjoin").prop("disabled", true);
			$("#cpassword").css("background-color", "#FFCECE");

		}
	}
	
	function checkPhone(){
		var inputed = $('#mPhone').val();
		$.ajax({
			data : {
				tel : inputed
			},
			url : "checkTEL",
			success : function(data) {
				if (inputed == "" && data == '0') {
					$("#inputjoin").prop("disabled", true);
					$("#mPhone").css("background-color", "#FFCECE");
					telCheck = 0;
				} else if (data == '0') {
					$("#mPhone").css("background-color", "#B0F6AC");
					telCheck = 1;
					if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
						$("#inputjoin").prop("disabled", false);
						signupCheck();
					}
						
				} else if (data == '1'){
					$("#inputjoin").prop("disabled", true);
					$("#mPhone").css("background-color", "#FFCECE");
					telCheck = 0;
				}
			}
		});
	}
	
	function checkName(){
		var inputed = $('#mName').val();
		$.ajax({
			data : {
				name : inputed
			},
			url : "checkNAME",
			success : function(data) {
				if (inputed == "" && data == '0') {
					$("#inputjoin").prop("disabled", true);
					$("#mName").css("background-color", "#FFCECE");
					nickCheck = 0;
				} else if (data == '0') {
					$("#mName").css("background-color", "#B0F6AC");
					nickCheck = 1;
					if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
						$("#inputjoin").prop("disabled", false);
						signupCheck();
					}
						
				} else if (data == '1'){
					$("#inputjoin").prop("disabled", true);
					$("#mName").css("background-color", "#FFCECE");
					nickCheck = 0;
				}
			}
		});
	}
	
	//닉네임 입력하지 않았을 경우 가입버튼 비활성화
	function signupCheck() {
		var nickname = $("#mName").val();
		var MobilePhone = $("#mPhone").val();
		if (nickname == "" || MobilePhone == "") {
			$("#inputjoin").prop("disabled", true);
		} else {
		}
	}

	// email check function
	function email_check(email) {
		var regex = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		return (email != '' && email != 'undefined' && regex.test(email));
	}

	// check when email input lost foucus
	function on_key() {

		var email = $('#emailid').val();
		// if value is empty then exit
		if (email == '' || email == 'undefined') {
			$("#inputjoin").prop("disabled", true);
			return;
		}
		// valid check
		if (!email_check(email)) {
			$("#result_check").text('Not valid email.');
			$("#result_check").css("color","red");
			$("#inputjoin").prop("disabled", true);
			/* $(this).focus(); */
			return false;
		} else if (email_check(email)){
			$("#result_check").text('Email address test OK.');
			$("#result_check").css("color","blue");
			emailCheck = 1;
			if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#inputjoin").prop("disabled", false);
			}
		}
	}
	
	// pwd check function
	function passwd_check(passwd) {
		var regex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,16}/;
		return (passwd != '' && passwd != 'undefined' && regex.test(passwd));
	}
	
	// check when passwd input lost foucus
	function on_keypasswd() {

		var passwd = $('#password').val();
		// if value is empty then exit
		if (passwd == '' || passwd == 'undefined') {
			$("#result_checkpwd").text('비밀번호를 입력해주세요.');
			$("#result_checkpwd").css("color","red");
			$("#inputjoin").prop("disabled", true);
			return;
		}
				
		// valid check
		if (!passwd_check(passwd)) {
			$("#result_checkpwd").text('Not valid passwd.');
			$("#result_checkpwd").css("color","red");
			$("#inputjoin").prop("disabled", true);
			/* $(this).focus(); */
			return false;
		} else if(passwd.length<8 || passwd.length>20){
			$("#result_checkpwd").text('비밀번호는 8자리 ~ 20자리 이내로 입력해주세요.');
			$("#result_checkpwd").css("color","red");
			$("#inputjoin").prop("disabled", true);
		} else if (passwd_check(passwd)){
			$("#result_checkpwd").text('passwd test OK.');
			$("#result_checkpwd").css("color","blue");
			passwdCheck = 1;
			if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#inputjoin").prop("disabled", false);
			}
		}
	}
	
	//phone
	function phone_check(mPhone){
		var regex = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
		return (mPhone != '' && mPhone != 'undefined' && regex.test(mPhone))
	}
	
	function on_keyphone(){
		var mPhone = $('#mPhone').val();
		
		
		if (mPhone == '' || mPhone == 'undefined') {
			$("#inputjoin").prop("disabled", true);
			return;
		}
		if (!phone_check(mPhone)) {
			$("#mPhone").css("background-color", "#FFCECE");
			$("#result_checkphone").text('Not valid phone number.');
			$("#result_checkphone").css("color","red");
			$("#inputjoin").prop("disabled", true);
			/* $(this).focus(); */
			return false;
		} else if (phone_check(mPhone)){
			$("#mPhone").css("background-color", "#B0F6AC");
			$("#result_checkphone").text('phone number test OK.');
			$("#result_checkphone").css("color","blue");
			phoneCheck = 1;
			if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#inputjoin").prop("disabled", false);
			}
		}
	
	}
	
	//name
	function name_check(mName){
		var regex = /^[가-힣a-zA-Z0-9]+$/;
		return (mName != '' && mName != 'undefined' && regex.test(mName))
	}
	
	function on_keyname(){
		var mName = $('#mName').val();
		
		
		if (mName == '' || mName == 'undefined') {
			$("#inputjoin").prop("disabled", true);
			return;
		}
		if (!name_check(mName)) {
			$("#mName").css("background-color", "#FFCECE");
			$("#result_checkname").text('Not valid name.');
			$("#result_checkname").css("color","red");
			$("#inputjoin").prop("disabled", true);
			/* $(this).focus(); */
			return false;
		} else if (name_check(mName)){
			$("#mName").css("background-color", "#B0F6AC");
			$("#result_checkname").text('name test OK.');
			$("#result_checkname").css("color","blue");
			nameCheck = 1;
			if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#inputjoin").prop("disabled", false);
			}
		}
	
	}
	
	//pet info
	
	
	
</script>

<script type="text/javascript">
	//펫 정보 등록/취소
	function petinputdelete(){
		if($("#chk_pet").is(":checked")){
			addPetForm();
		} else {
			removePet();
		}
	}
	
	// 추가할 펫 입력창 생성
		function addPetForm(){
		var div = document.createElement('div');
		div.setAttribute("id", "addPetInfo");
		div.innerHTML = '<div class="form-group">'
					  + '	<label>Pet Name</label>'
					  + '	<div class="col-md-5 col-sm-8">'
					  + '		<div class="input-group">'
					  + '			<span class="input-group-addon"><i class="fa fa-heart" aria-hidden="true"></i></span>' 
					  + '			<input type="text" class="form-control" name="petName" id="addPet_name" placeholder="Enter your Pet Name.">'
					  + '		</div>'
					  + '	</div>'
					  + '</div>'
					  + '<div class="form-group">'
					  + '	<label>Pet Breeds</label>'
					  + '	<div class="col-md-5 col-sm-8">'
					  + '		<div class="input-group">'
					  + '			<span class="input-group-addon"><i class="fa fa-heart" aria-hidden="true"></i></span> '
					  + '			<select id="addPet_breeds">'
					  + '				<option selected disabled value="0">견종을 선택해주세요.</option>'
					  + '			</select>'
					  + '		</div>'
					  + '	</div>'
					  + '</div>'
					  + '<div class="form-group">'
					  + '	<label>Pet Birthday</label>'
					  + '	<div class="col-md-5 col-sm-8">'
					  + '		<div class="input-group">'
					  + '			<span class="input-group-addon"><i class="fa fa-heart" aria-hidden="true"></i></span> '
					  + '			<input type="date" id="addPet_birthday">'
					  + '		</div>'
					  + '	</div>'
					  + '</div>'
					  + '<div class="form-group">'
					  + '	<label>Pet Gender</label>'
					  + '	<div class="col-md-5 col-sm-8">'
					  + '		<div class="input-group">'
					  + '		<span class="input-group-addon"><i class="fa fa-heart" aria-hidden="true"></i></span> '
					  + '			<input type="radio" name="addPet_gender" value="1" checked="checked"><i class="fa fa-mars" aria-hidden="true"></i> '
					  + '			<input type="radio" name="addPet_gender" value="2"><i class="fa fa-venus" aria-hidden="true"></i>'
					  + '		</div>'
					  + '	</div>'
					  + '</div>';
		document.getElementById('addPet').appendChild(div);
	    document.getElementById("addPet_birthday").valueAsDate = new Date();
	    
	    $("#addPet_breeds").select2({
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
	        			$('<option>').val(k.db_index).text(v.db_breeds).appendTo("#addPet_breeds");
	            	});
	           },
	           error : function(err){
	           		console.log(err.status);
	           }
	    });
	
	}	
	
	
	// 데이터베이스에 펫추가 부분
	function addPet() {
		var pet_name = document.getElementById("addPet_name").value;
		var pet_gender = null;
		var pet_birthday = null;
		var pet_breeds = null;
		
		var radio = document.getElementsByName("addPet_gender");
		for(var i = 0; i < radio.length; i++) {
			if(radio[i].checked == true) {
				pet_gender = radio[i].value;
			}
		}
		
		var date = document.getElementById("addPet_birthday").value;
		pet_birthday = new Date(date.split("-")[0], date.split("-")[1]-1, date.split("-")[2]);
		
		var select = document.getElementById("addPet_breeds");
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
					location.replace("modifyMember");
            	} else {
            		alert("펫 정보가 추가되지 않았습니다. 잠시 후 다시 시도해주세요");
            	}
            }
        });
 		
 		document.getElementById("addPetBtn").disabled = false;
	}
	
	// 추가 펫 입력창 삭제
	function removePet(){
		var deleteNode = document.getElementById("addPetInfo");
		document.getElementById('addPet').removeChild(deleteNode);
		document.getElementById("addPetBtn").disabled = false;
	}
	
	// select 태그에 견종 추가
	function addSelectOptions(tag_num){
	   	var selectPetBreeds = document.getElementById("selectPetBreeds"+tag_num).value;
	   	
	   	$("#modifyPet_breeds"+tag_num).select2({
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
	            			$('<option>').val(k.db_index).text(v.db_breeds).attr("selected", "selected").appendTo("#modifyPet_breeds"+tag_num);
	            		} else {
		            		$('<option>').val(k.db_index).text(v.db_breeds).appendTo("#modifyPet_breeds"+tag_num);	            			
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
		
		$("#addPet_breeds").select2({
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
		            	$('<option>').val(k.db_index).text(v.db_breeds).appendTo("#addPet_breeds");	            			
	            	});
	           },
	           error : function(err){
	           		console.log(err.status);
	           }
	    });
	}
	
	function addMember(){
		var id = $('#emailid').val();
		var password = $("#password").val();
		var name = $("#mName").val();
		var phone = $("#mPhone").val();
		
		if (id == null || id == ""){
			alert("Email(ID)를 입력해주세요.")
			return false;
		} else if(password == null || password == ""){
			alert("비밀번호를 입력해주세요.")
			return false;
		} else if(name == null || name ==""){
			alert("닉네임을 입력해주세요.")
			return false;
		} else if(phone == null || phone == ""){
			alert("휴대폰 번호를 입력해주세요.")
			return false;
		}
		
		$.ajax({
			
			data : {
				m_email : id,
				m_password : password,
				m_name : name,
				m_phone : phone,
			},
			url : "addMember",
			success : function addPet(){
				
			}
		});
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
						
	<!-- main -->
	<div id="main">
		<div class="inner">
			<section>
				<div class="container">

					<div class="row">
						<div class="col-md-8" id="joinf">
							<h1 class="entry-title">
								<span><img alt="" src="/images/signup.png" class="img-responsive"></span>
							</h1>
							<hr>
							<form class="form-horizontal" method="post" action="joinPro"
								name="signup" id="signup" enctype="multipart/form-data">
								<div class="form-group">
									<dl>
										<dt>
											<label class="control-label col-sm-3">Email (ID) <span class="text-danger">*</span></label>
										</dt>
										<dd>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span> 
												<input type="text" class="form-control" name="m_email" 
													id="emailid" placeholder="Enter your Email ID" value=""
													oninput="javascript:checkId();" onkeyup="on_key()">
											</div>
											<div id="result_check"></div>
										</dd>
									</dl>
								</div>
			
								<div class="form-group">
									<dl>
										<dt>
											<label class="control-label col-sm-3">비밀번호 <span class="text-danger">*</span></label>
										</dt>
										<dd>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-expeditedssl" aria-hidden="true"></i></span> 
												<input type="password" class="form-control" name="m_password"
													id="password" placeholder="Choose password (5-15 chars)"
													value="" oninput="checkPwd()" onkeyup="on_keypasswd()">
											</div>
											<div id="result_checkpwd"></div>
										</dd>
									</dl>
								</div>
								
								<div class="form-group">
									<dl>
										<dt>
											<label class="control-label col-sm-3">비밀번호 재확인 <span class="text-danger">*</span></label>
										</dt>
										<dd>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-expeditedssl" aria-hidden="true"></i></span> 
												<input type="password" class="form-control" id="cpassword"
													placeholder="Confirm your password" value=""
													oninput="checkPwd()">
											</div>
										</dd>
									</dl>
								</div>
								
								<div class="form-group">
									<dl>
										<dt>
											<label class="control-label col-sm-3">별명 <span class="text-danger">*</span></label>
										</dt>
										<dd>
											<div class="input-group">				
												<span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
												<input type="text" class="form-control" name="m_name"
													id="mName" placeholder="Enter your Name here" value=""
													oninput="checkName()" onkeyup="on_keyname()">
											</div>
											<div id="result_checkname"></div>
										</dd>
									</dl>
								</div>

								<div class="form-group">
									<dl>
										<dt>
											<label class="control-label col-sm-3">휴대폰 번호 <span class="text-danger">*</span></label>
										</dt>
										<dd>
											<div class="input-group">
												<span class="input-group-addon"><i
													class="fa fa-mobile" aria-hidden="true"></i></span> <input
													type="text" class="form-control" name="m_tel" id="mPhone"
													placeholder="Enter your Mobile Phone number." value=""
													oninput="checkPhone()" onkeyup="on_keyphone()">
											</div>
											<div id="result_checkphone"></div>
										</dd>
									</dl>
								</div>

								<!-- <div class="form-group">
									<dl>
										<dt>
											<label class="control-label col-sm-3">Profile Photo</label>
										</dt>
										<dd>
											<div class="input-group">
												<span class="input-group-addon" id="file_upload"><i
													class="fa fa-file-image-o" aria-hidden="true"></i></span> <input
													type="file" name="file_nm" id="file_nm"
													class="form-control upload" placeholder=""
													aria-describedby="file_upload">
											</div>
										</dd>										
									</dl>
								</div>
						
								Pet						
								<div class="form-group">
									<label class="control-label col-sm-3">Pet Info<br> <small>(optional)</small></label>
									<div id="petinfoselect">
										<input type="checkbox" id="chk_pet" value="petinfo_input" onclick="petinputdelete()">펫 정보 등록
									</div>
									
									<div class="addPet" id="addPet">
										
									</div>
									
								</div> -->

								<div class="form-group">
									<div class="col-xs-offset-3 col-xs-10">
										<button type="submit" class="button special small" id="inputjoin" disabled="disabled">
											회원가입  <i class="fa fa-check" aria-hidden="true"></i>
										</button>
										<button type="reset" class="button small"	onclick="location='main'">
											가입취소  <i class="fa fa-times" aria-hidden="true"></i>
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
			</section>
		</div>
	</div><!-- 수정중 -->
	
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