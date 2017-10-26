<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta http-equiv="Content-Type" content="text⁄html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Hand Made - Pet Product</title>

<!-- Bootstrap core JavaScript -->
<script src="/jquery/jquery.min.js"></script>
<script src="/popper/popper.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="/jquery-easing/jquery.easing.min.js"></script>

<!-- Contact Form JavaScript -->
<script src="/js/jqBootstrapValidation.js"></script>
<script src="/js/contact_me.js"></script>

<!-- Custom scripts for this template -->
<script src="/js/freelancer.min.js"></script>

<!-- Bootstrap core CSS -->
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="/css/freelancer.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>

<script type="text/javascript" >

	//  아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
	var idCheck = 0;
	var pwdCheck = 0;
	var emailCheck = 0;
	var passwdCheck = 0;
	var telCheck = 0;
	var nameCheck = 0;
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
					$("#inputjoin").css("background-color", "#aaaaaa");
					$("#emailid").css("background-color", "#FFCECE");
					idCheck = 0;
				} else if (data == '0') {
					$("#emailid").css("background-color", "#B0F6AC");
					idCheck = 1;
					if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
						$("#inputjoin").prop("disabled", false);
						$("#inputjoin").css("background-color", "#4CAF50");
						signupCheck();
					}
				} else if (data == '1') {
					$("#inputjoin").prop("disabled", true);
					$("#inputjoin").css("background-color", "#aaaaaa");
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
			$("#inputjoin").css("background-color", "#aaaaaa");
			$("#cpassword").css("background-color", "#FFCECE");
		} else if (inputed == reinputed) {
			$("#cpassword").css("background-color", "#B0F6AC");
			pwdCheck = 1;
			if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#inputjoin").prop("disabled", false);
				$("#inputjoin").css("background-color", "#4CAF50");
				signupCheck();
			}
		} else if (inputed != reinputed) {
			pwdCheck = 0;
			$("#inputjoin").prop("disabled", true);
			$("#inputjoin").css("background-color", "#aaaaaa");
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
					$("#inputjoin").css("background-color", "#aaaaaa");
					$("#mPhone").css("background-color", "#FFCECE");
					telCheck = 0;
				} else if (data == '0') {
					$("#mPhone").css("background-color", "#B0F6AC");
					telCheck = 1;
					if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
						$("#inputjoin").prop("disabled", false);
						$("#inputjoin").css("background-color", "#4CAF50");
						signupCheck();
					}
						
				} else if (data == '1'){
					$("#inputjoin").prop("disabled", true);
					$("#inputjoin").css("background-color", "#aaaaaa");
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
					$("#inputjoin").css("background-color", "#aaaaaa");
					$("#mName").css("background-color", "#FFCECE");
					nickCheck = 0;
				} else if (data == '0') {
					$("#mName").css("background-color", "#B0F6AC");
					nickCheck = 1;
					if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
						$("#inputjoin").prop("disabled", false);
						$("#inputjoin").css("background-color", "#4CAF50");
						signupCheck();
					}
						
				} else if (data == '1'){
					$("#inputjoin").prop("disabled", true);
					$("#inputjoin").css("background-color", "#aaaaaa");
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
			$("#inputjoin").css("background-color", "#aaaaaa");
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
			$("#inputjoin").css("background-color", "#aaaaaa");
			return;
		}
		// valid check
		if (!email_check(email)) {
			$("#result_check").text('Not valid email.');
			$("#result_check").css("color","red");
			$("#inputjoin").prop("disabled", true);
			$("#inputjoin").css("background-color", "#aaaaaa");
			/* $(this).focus(); */
			return false;
		} else if (email_check(email)){
			$("#result_check").text('Email address test OK.');
			$("#result_check").css("color","blue");
			emailCheck = 1;
			if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#inputjoin").prop("disabled", false);
				$("#inputjoin").css("background-color", "#4CAF50");
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
			$("#inputjoin").prop("disabled", true);
			$("#inputjoin").css("background-color", "#aaaaaa");
			return;
		}
		// valid check
		if (!passwd_check(passwd)) {
			$("#result_checkpwd").text('Not valid passwd.');
			$("#result_checkpwd").css("color","red");
			$("#inputjoin").prop("disabled", true);
			$("#inputjoin").css("background-color", "#aaaaaa");
			/* $(this).focus(); */
			return false;
		} else if (passwd_check(passwd)){
			$("#result_checkpwd").text('passwd test OK.');
			$("#result_checkpwd").css("color","blue");
			passwdCheck = 1;
			if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#inputjoin").prop("disabled", false);
				$("#inputjoin").css("background-color", "#4CAF50");
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
			$("#inputjoin").css("background-color", "#aaaaaa");
			return;
		}
		if (!phone_check(mPhone)) {
			$("#mPhone").css("background-color", "#FFCECE");
			$("#result_checkphone").text('Not valid phone number.');
			$("#result_checkphone").css("color","red");
			$("#inputjoin").prop("disabled", true);
			$("#inputjoin").css("background-color", "#aaaaaa");
			/* $(this).focus(); */
			return false;
		} else if (phone_check(mPhone)){
			$("#mPhone").css("background-color", "#B0F6AC");
			$("#result_checkphone").text('phone number test OK.');
			$("#result_checkphone").css("color","blue");
			phoneCheck = 1;
			if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#inputjoin").prop("disabled", false);
				$("#inputjoin").css("background-color", "#4CAF50");
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
			$("#inputjoin").css("background-color", "#aaaaaa");
			return;
		}
		if (!name_check(mName)) {
			$("#mName").css("background-color", "#FFCECE");
			$("#result_checkname").text('Not valid name.');
			$("#result_checkname").css("color","red");
			$("#inputjoin").prop("disabled", true);
			$("#inputjoin").css("background-color", "#aaaaaa");
			/* $(this).focus(); */
			return false;
		} else if (name_check(mName)){
			$("#mName").css("background-color", "#B0F6AC");
			$("#result_checkname").text('name test OK.');
			$("#result_checkname").css("color","blue");
			nameCheck = 1;
			if (idCheck == 1 && pwdCheck == 1 && emailCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#inputjoin").prop("disabled", false);
				$("#inputjoin").css("background-color", "#4CAF50");
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
</head>

<body id="page-top" class="body_join">

	<!-- Navigation -->

	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">FreeHaGae</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location='main'" style="cursor: pointer">Home</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location='main#portfolio'">Shopping</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location='loginForm'" style="cursor: pointer">Sign in</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location='joinForm'" style="cursor: pointer">Sign up</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<section>
		<div class="container">

			<div class="row">
				<div class="col-md-8">
					<h1 class="entry-title">
						<span><img alt="" src="/images/signup.png" class="img-responsive"></span>
					</h1>
					<hr>
					<form class="form-horizontal" method="post" action="joinPro"
						name="signup" id="signup" enctype="multipart/form-data">
						<div class="form-group">
							<h4>Member Info</h4>
							<label class="control-label col-sm-3">Email ID <span
								class="text-danger">*</span></label>
							<div class="col-md-8 col-sm-9">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-envelope-o" aria-hidden="true"></i></span> <input
										type="text" class="form-control" name="m_email" id="emailid"
										placeholder="Enter your Email ID" value=""
										oninput="javascript:checkId();" onkeyup="on_key()">
								</div>
								<div id="result_check"></div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3">Set Password <span
								class="text-danger">*</span></label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-expeditedssl" aria-hidden="true"></i></span> <input
										type="password" class="form-control" name="m_password"
										id="password" placeholder="Choose password (5-15 chars)"
										value="" oninput="checkPwd()" onkeyup="on_keypasswd()">
								</div>
								<div id="result_checkpwd"></div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Confirm Password <span
								class="text-danger">*</span>
							</label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-expeditedssl" aria-hidden="true"></i></span> <input
										type="password" class="form-control" id="cpassword"
										placeholder="Confirm your password" value=""
										oninput="checkPwd()">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Nick Name <span
								class="text-danger">*</span></label>
							<div class="col-md-8 col-sm-9">
								<input type="text" class="form-control" name="m_name"
									id="mName" placeholder="Enter your Name here" value=""
									oninput="checkName()" onkeyup="on_keyname()">
							</div>
							<div id="result_checkname"></div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3">Mobile Phone <span
								class="text-danger">*</span></label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-mobile"
										aria-hidden="true"></i></span> <input type="text"
										class="form-control" name="m_tel" id="mPhone"
										placeholder="Enter your Mobile Phone number." value=""
										oninput="checkPhone()" onkeyup="on_keyphone()">
								</div>
								<div id="result_checkphone"></div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3">Profile Photo <br>
								<small>(optional)</small></label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon" id="file_upload"><i
										class="fa fa-file-image-o" aria-hidden="true"></i></span> <input
										type="file" name="file_nm" id="file_nm"
										class="form-control upload" placeholder=""
										aria-describedby="file_upload">
								</div>
							</div>
						</div>
						
						<!-- Pet -->						
						<div class="form-group">
							<label class="control-label col-sm-3">Pet Info<br> <small>(optional)</small></label>
							<div id="petinfoselect">
								<input type="checkbox" id="chk_pet" value="petinfo_input" onclick="petinputdelete()">펫 정보 등록
							</div>
							
							<div class="addPet" id="addPet">
								
							</div>
							
						</div>
						
						<div class="form-group">
							<div class="col-xs-offset-3 col-xs-10">
								<button type="button" class="btn btn-info" id="inputjoin" disabled="disabled" onclick="">
									회원가입 <i class="fa fa-check" aria-hidden="true"></i>
								</button>
								<button type="reset" class="btn btn-danger"	onclick="location='main'">
									가입취소 <i class="fa fa-times" aria-hidden="true"></i>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>

		</div>
	</section>

	<!-- Footer -->
	<footer class="text-center">
		<div class="footer-above">
			<div class="container">
				<div class="row">
					<div class="footer-col col-md-4">
						<h3>Location</h3>
						<p>
							3481 Melrose Place <br>Beverly Hills, CA 90210
						</p>
					</div>
					<div class="footer-col col-md-4">
						<h3>Around the Web</h3>
						<ul class="list-inline">
							<li class="list-inline-item"><a
								class="btn-social btn-outline" href="#"> <i
									class="fa fa-fw fa-facebook"></i>
							</a></li>
							<li class="list-inline-item"><a
								class="btn-social btn-outline" href="#"> <i
									class="fa fa-fw fa-google-plus"></i>
							</a></li>
							<li class="list-inline-item"><a
								class="btn-social btn-outline" href="#"> <i
									class="fa fa-fw fa-twitter"></i>
							</a></li>
							<li class="list-inline-item"><a
								class="btn-social btn-outline" href="#"> <i
									class="fa fa-fw fa-linkedin"></i>
							</a></li>
							<li class="list-inline-item"><a
								class="btn-social btn-outline" href="#"> <i
									class="fa fa-fw fa-dribbble"></i>
							</a></li>
						</ul>
					</div>
					<div class="footer-col col-md-4">
						<h3>About Freelancer</h3>
						<p>
							Freelance is a free to use, open source Bootstrap theme created
							by <a href="http://startbootstrap.com">Start Bootstrap</a>.
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-below">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">Copyright &copy; Your Website 2017</div>
				</div>
			</div>
		</div>
	</footer>



</body>
</html>