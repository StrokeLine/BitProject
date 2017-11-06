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

	
<!-- 펫처리 부분 -->
<script type="text/javascript">
	
	// 추가할 펫 입력창 생성
	function addPetForm(){
		var div = document.createElement('div');
		div.setAttribute("id", "addPetInfo");
		div.innerHTML = '<h3>마이펫 추가</h3>'
					  + '<table class="table-wrapper">'
					  + '	<tr>'
					  + '		<th>이름</th>'
					  + '		<td>'	
					  + '			<div class="input-size">'
					  + '				<input type="text" id="addPet_name">'				
					  + '			</div>'
					  +	'		</td>'
					  +	'	</tr>'
					  + '	<tr>'
					  +	'		<th>견종</th>'
					  +	'		<td>'
					  +	'			<select id="addPet_breeds">'
					  + '				<option selected disabled value="0">견종을 선택해주세요.</option>'
					  + '			</select>'
					  + '		</td>'
					  + '	</tr>'
					  +	'	<tr>'
					  +	'		<th>생일</th>'
					  +	'		<td>'
					  + '			<input type="date" id="addPet_birthday">'
					  +	'		</td>'
					  +	'	</tr>'
					  + '	<tr>'
					  + '		<th>성별</th>'
					  +	'		<td>'
					  +	'			<div class="4u 12u$(small)">'
					  +	'				<input type="radio" id="select-female" value="2" name="addPet_gender"><label for="select-female"><i class="fa fa-venus" aria-hidden="true"></i></label>'
					  + '			</div>'
					  +	'			<div class="4u 12u$(small)">'
					  +	'				<input type="radio" id="select-male" value="1" name="addPet_gender"><label for="select-male"><i class="fa fa-mars" aria-hidden="true"></i></label>'
					  + '			</div>'
					  + '		</td>'
					  + '	</tr>'
					  + '	<tr>'
					  + '		<th>사진</th>'
					  + '		<td>'
					  + '			<form id="addPetImgForm" action="uploadPetImg" enctype="multipart/form-data" method="post" style="margin: 0;">'
					  + '				<input type="file" name="imgSrc" accept=".jpg, .png">'
					  + '			</form>'
					  + '		</td>'
					  + '	</tr>'
					  + '	<tr>'
					  +	'		<td colspan="2">'
					  + '			<div class="addPet_delBtn">'
					  + '				<input class="button special small" type="button" value="삭제" onclick="removePet()">'
					  + '      			<input class="button special small" type="button" value="추가" onclick="addPet()">'
					  + '			</div>'
					  +	'		</td>'
					  + '	</tr>'
					  + '</table>';
        document.getElementById('addPet').appendChild(div);
        document.getElementById("addPet_birthday").valueAsDate = new Date();
        document.getElementById("addPetBtn").disabled = true;
        
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
            		console.log(data);
            		var addPetForm = document.getElementById("addPetImgForm");
            		var input_tag = document.createElement("input");
            		input_tag.type="hidden";
            		input_tag.name = "pet_index";
            		input_tag.value = data;
            		addPetForm.appendChild(input_tag);
            		addPetForm.submit();
					/* location.replace("modifyMember"); */
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
	
	// 기존에 추가된 펫정보 삭제
	function deletePet(tag_num, pet_index){
		var check = confirm("정말로 당신의 반려견을 삭제하시겠습니까?");
		if(check){
			
			var deleteNode = document.getElementById("pet_info"+tag_num);
			var pet_list = document.getElementById('myPet');
			
			$.ajax({
	            data : {
	                id : pet_index
	            },
	            url : "deletePet",
	            success : function(data) {
	            	if(data){
						pet_list.removeChild(deleteNode);
						alert("정상처리 되었습니다.");
	            	} else {
	            		alert("펫 정보가 삭제되지 않았습니다. 잠시 후 다시 시도해주세요");
	            	}
	            }
	        });
		}else {
			alert("취소되었습니다.");
		}
	}
	
	
	// 기존에 추가된 펫 정보 수정
	function modifyPet(pet, pet_index, tag_num) {
		var pet_name = document.getElementById("modifyPet_name"+tag_num).value;
		var pet_gender = null;
		var pet_birthday = null;
		var pet_breeds = null;
		
		var radio = document.getElementsByName("gender"+tag_num);
		for(var i = 0; i < radio.length; i++) {
			if(radio[i].checked == true) {
				pet_gender = radio[i].value;
			}
		}
		
		var date = document.getElementById("modifyPet_birthday"+tag_num).value;
		pet_birthday = new Date(date.split("-")[0], date.split("-")[1]-1, date.split("-")[2]);
		
		var select = document.getElementById("modifyPet_breeds"+tag_num);
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
		} else if(pet_breeds == null || pet_breeds == ""){
			alert("반려견의 견종을 선택해 주세요.");
			return false;
		}
				
 		$.ajax({
            data : {
            	pet_index : pet_index,
            	pet_name : pet_name,
            	pet_gender : pet_gender,
            	pet_birthday : pet_birthday,
            	pet_breeds : pet_breeds
            },
            url : "modifyPet",
            success : function(data) {
            	if(data){ 		
					alert("정상처리 되었습니다.");
					document.getElementById("imgForm"+tag_num).submit();
            	} else {
            		alert("펫 정보가 수정되지 않았습니다. 잠시 후 다시 시도해주세요");
            	}
            }
        });
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
		var select = document.getElementsByName("modifyPet_breeds");
		
		for(var i = 0; i < select.length; i++) {
			addSelectOptions(i);
		}
	}
	
</script>
<!-- 예외 처리 부분 -->
<script type="text/javascript">
	
	var nameCheck = 1;
	var nickCheck = 1;
	var pwdCheck = 1;
	var passwdCheck = 1;
	var phoneCheck = 1;
	var telCheck = 1;
	
	//name
	function name_check(modifyMember_name){
		var regex = /^[가-힣a-zA-Z0-9]+$/;
		return (modifyMember_name != '' && modifyMember_name != 'undefined' && regex.test(modifyMember_name))
	}
	
	function on_keyname(m_name){
		var modifyMember_name = $('#modifyMember_name').val();
		$("#modifyMember_set").prop("disabled", true);
		$("#modifyMember_name").css("background-color", "white");
		$("#result_checkname").text('');
		$("#result_checkname").css("color","none");
		if(m_name != modifyMember_name){
			if (modifyMember_name == '' || modifyMember_name == 'undefined') {
				$("#modifyMember_set").prop("disabled", true);
				$("#modifyMember_name").css("background-color", "#FFCECE");
				$("#result_checkname").text('사용할 닉네임을 입력해주세요.');
				$("#result_checkname").css("color","red");
				return;
			}
			if (!name_check(modifyMember_name)) {
				$("#modifyMember_name").css("background-color", "#FFCECE");
				$("#result_checkname").text('사용할 수 없는 닉네임입니다.');
				$("#result_checkname").css("color","red");
				$("#modifyMember_set").prop("disabled", true);
				$(this).focus();
				return false;
			} else if (name_check(modifyMember_name)){
				$("#modifyMember_name").css("background-color", "#B0F6AC");
				$("#result_checkname").text('사용할 수 있는 닉네임입니다.');
				$("#result_checkname").css("color","blue");
				nameCheck = 1;
				checkName();
			}
		}
	}
	function checkName(){
		var inputed = $('#modifyMember_name').val();

		$.ajax({
			data : {
				name : inputed
			},
			url : "checkNAME",
			success : function(data) {
				console.log(data);
				if (inputed == "" && data == '0') {
					$("#modifyMember_set").prop("disabled", true);
					$("#modifyMember_name").css("background-color", "#FFCECE");
					$("#result_checkname").css("color","red");
					$("#result_checkname").text('사용할 수 없는 닉네임입니다.');
					nickCheck = 0;
				} else if (data == '0') {
					$("#modifyMember_name").css("background-color", "#B0F6AC");
					nickCheck = 1;
					if (pwdCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
						$("#modifyMember_set").prop("disabled", false);
						$("#result_checkname").css("color","blue");
						$("#result_checkname").text('사용할 수 있는 닉네임입니다.');
					}
						
				} else if (data == '1'){
					$("#modifyMember_set").prop("disabled", true);
					$("#modifyMember_name").css("background-color", "#FFCECE");
					$("#result_checkname").text('사용할 수 없는 닉네임입니다.');
					$("#result_checkname").css("color","red");
					nickCheck = 0;
				}
			}
		});			
	}
	
	function passwd_check(passwd) {
		var regex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,16}/;
		return (passwd != '' && passwd != 'undefined' && regex.test(passwd));
	}
	
	function checkPwd() {
		var inputed = $('#modifyPasswd1').val();
		var reinputed = $('#modifyPasswd2').val();
		
		if (inputed == "") {
			$("#modifyPasswd2").css("background-color", "white");
			$("#result_checkpwd").text('');
			$("#result_checkpwd").css("color","none");
			pwdCheck = 1;
			if (pwdCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#modifyMember_set").prop("disabled", false);
			}
		} else if (reinputed == "" && (inputed != reinputed || inputed == reinputed)) {
			$("#modifyMember_set").prop("disabled", true);
			$("#modifyPasswd2").css("background-color", "#FFCECE");
			$("#result_checkpwd").text('다시 입력 해 주시기 바랍니다.');
			$("#result_checkpwd").css("color","red");
		} else if (inputed == reinputed) {
			pwdCheck = 1;
			$("#result_checkpwd").text('');
			$("#result_checkpwd").css("color","none");
			if (pwdCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#modifyMember_set").prop("disabled", false);
				$("#modifyPasswd2").css("background-color", "#B0F6AC");
				
			}
		} else if (inputed != reinputed) {
			pwdCheck = 0;
			$("#modifyMember_set").prop("disabled", true);
			$("#modifyPasswd2").css("background-color", "#FFCECE");
			$("#result_checkpwd").text('입력한 비밀번호와 맞지않습니다.');
			$("#result_checkpwd").css("color","red");

		}
	}
	
	// check when passwd input lost foucus
	function on_keypasswd() {
		var passwd = $('#modifyPasswd1').val();
		var reinputed = $('#modifyPasswd2').val();
		// if value is empty then exit
		if (passwd == '' || passwd == 'undefined') {
			$("#result_checkpwd").text('');
			$("#modifyPasswd1").css("background-color", "white");
			passwdCheck = 1;
			
			if(reinputed == ''){
				pwdCheck = 1;
			}
			
			if (pwdCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#modifyMember_set").prop("disabled", false);
				$("#modifyPasswd2").css("background-color", "white");
			}
			return;
		}
		
		pwdCheck = 0;
		
		// valid check
		if (!passwd_check(passwd)) {
			passwdCheck = 0;
			$("#result_checkpwd").text('사용할 수 없는 비밀번호입니다.');
			$("#result_checkpwd").css("color","red");
			$("#modifyPasswd1").css("background-color", "#FFCECE");
			$("#modifyMember_set").prop("disabled", true);
			/* $(this).focus(); */
			return false;
		} else if (passwd_check(passwd)){
			$("#result_checkpwd").text('사용할 수 있는 비밀번호입니다.');
			$("#result_checkpwd").css("color","blue");
			$("#modifyPasswd1").css("background-color", "#B0F6AC");
			passwdCheck = 1;
			if (pwdCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
				$("#modifyMember_set").prop("disabled", false);
			}
		}
	}
		
		
	//phone
	function phone_check(mPhone){
		var regex = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
		return (mPhone != '' && mPhone != 'undefined' && regex.test(mPhone))
	}
	
	function on_keyphone(m_tel){
		var mPhone = $('#modifyPhone').val();
		
		$("#modifyPhone").css("background-color", "white");
		$("#result_checkphone").text('');
		$("#result_checkphone").css("color","none");
		$("#modifyMember_set").prop("disabled", true);
		
		if(m_tel != mPhone){
			if (mPhone == '' || mPhone == 'undefined') {
				$("#modifyMember_set").prop("disabled", true);
				$("#modifyPhone").css("background-color", "#FFCECE");
				return;
			}
			if (!phone_check(mPhone)) {
				$("#modifyPhone").css("background-color", "#FFCECE");
				$("#result_checkphone").text('전화번호 형식이 맞지 않습니다.');
				$("#result_checkphone").css("color","red");
				$("#modifyMember_set").prop("disabled", true);
				/* $(this).focus(); */
				return false;
			} else if (phone_check(mPhone)){
				$("#modifyPhone").css("background-color", "#B0F6AC");
				$("#result_checkphone").text('');
				$("#result_checkphone").css("color","blue");
				phoneCheck = 1;
				checkPhone();
		}
		}
	
	}
	
	
	function checkPhone(){
		var inputed = $('#modifyPhone').val();
		$.ajax({
			data : {
				tel : inputed
			},
			url : "checkTEL",
			success : function(data) {
				if (inputed == "" && data == '0') {
					$("#modifyMember_set").prop("disabled", true);
					$("#modifyPhone").css("background-color", "#FFCECE");
					telCheck = 0;
				} else if (data == '0') {
					$("#modifyPhone").css("background-color", "#B0F6AC");
					$("#result_checkphone").text('');
					telCheck = 1;
					if (pwdCheck == 1 && passwdCheck == 1 && phoneCheck == 1 && telCheck == 1 && nameCheck == 1 && nickCheck == 1) {
						$("#modifyMember_set").prop("disabled", false);
					}
						
				} else if (data == '1'){
					$("#modifyMember_set").prop("disabled", true);
					$("#modifyPhone").css("background-color", "#FFCECE");
					$("#result_checkphone").text('이미 사용 중인 번호입니다.');
					$("#result_checkphone").css("color","red");
					telCheck = 0;
				}
			}
		});
	}
</script>
<!-- 데이터 처리 부분 -->
<script type="text/javascript">
	function modifyMember() {
		
		var origin_password = document.getElementById("originPasswd").value;
		var m_password = (document.getElementById("modifyPasswd2").value != "") ? document.getElementById("modifyPasswd2").value : "";
		
		if(origin_password == "" && m_password != ""){
			alert("현재 비밀번호를 입력하세요.");
			return false
		}
		
		var m_name = document.getElementById("modifyMember_name").value;
		var m_tel = document.getElementById("modifyPhone").value;
		var m_img = "";
		
		$.ajax({
			data : {
				m_name : m_name,
				m_tel : m_tel,
				m_password : m_password,
				m_img : m_img,
				origin_password : origin_password
			},
			url : "updateMember",
			success : function(data) {
				if(data == 1){
					alert("회원정보 수정이 정상 처리되었습니다.");
				} else if(data == 2) {
					alert("현재 비밀번호가 다릅니다.\n 다시 확인하여 입력 해주세요.");
				} else {
					alert("잠시 후 다시 시도해주십시오.");
				}
			},
			error : function(err) {
				alert("잠시 후 다시 시도해주십시오.");
			}
		});
	}
</script>

<!-- 사이드 메뉴 처리 부분 -->
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

<style type="text/css">
	.main{
		margin: 5em 20em;
		height: 100%;
		color: #5d5d5d;
		padding: 26px;
		border-radius: 10px;
		-moz-border-radius: 10px;
		-webkit-border-radius: 10px;
	}
	
	table{
		width: 50em;
	}
	
	table.sub {
		width: 30em;
	}
	
	th.sub{
		font-size: 0.7em;
	}
	
	.special{
		margin: 0.1em 25em;
	}
	
	.\34u {
		width: 80%;
	}
	
	.input-size{
		width: 30%;
	}
	
	.input-size-sub{
		width: 50%
	}
	
	input[type="text"], input[type="password"], input[type="email"], select{
		height: 2em;
	}
	
	.\34u{
		width: 10%;
		float: left;
	}
	
	label{
		margin: 0em;
	}
	
	.button{
		margin: 0em;
	}
	
</style>
<title>회원정보 수정</title>
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
		
	<div class="main">
		<div class="modifyMember_page">
			<div class="modifyMember">			
				<div class="modifyMember_title">
					<h3>회원정보 수정</h3>
				</div>
				<table class="table-wrapper">
					<tr>
						<th>아이디</th>
						<td id="modifyEmail">${member.m_email}</td>
					</tr>
					<tr>
						<th>닉네임</th>
						<td>
							<div class="input-size">
								<input type="text" id="modifyMember_name" value="${member.m_name}" onkeyup='on_keyname("${member.m_name}")'>							
							</div>
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
							<table class="sub">
								<tr>
									<th class="sub">현재 비밀번호</th>
									<td>
										<div class="input-size-sub">
											<input class="input-passwd" type="password" id="originPasswd" maxlength="15">
										</div>
									</td>					
								</tr>
								<tr>
									<th class="sub">새 비밀번호</th>
									<td>
										<div class="input-size-sub">
											<input class="input-passwd" type="password" id="modifyPasswd1" maxlength="15" onkeyup="on_keypasswd()">
										</div>
									</td>					
								</tr>
								<tr>
									<th class="sub">새 비밀번호 확인</th>
									<td>
										<div class="input-size-sub">
											<input class="input-passwd" type="password" id="modifyPasswd2" maxlength="15" onkeyup="checkPwd()">
										</div>
									</td>					
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<th>연락처</th>
						<td>
							<div class="input-size">
								<input id="modifyPhone" type="text" name="modifyTel" value="${member.m_tel }" onkeyup='on_keyphone("${member.m_tel }")'>
							</div>
						</td>
					</tr>
					<tr>
						<td class="submit-btn" colspan="2">
							<input class="special" type="button" id="modifyMember_set" value="확인" onclick="modifyMember()" disabled="disabled">
						</td>
					</tr>
				</table>			
			</div>			

			<!-- 사용자 펫 정보 추가, 수정 및 삭제 -->
			<div class="modifyPet">
				<div class="modifyPet_title">
					<h3>마이펫 정보 수정</h3>		
				</div>
				<div class="myPet" id="myPet">
					<c:set var="tag_num" value="0"/>
					<c:forEach var="pet" items="${pets}">
						<input id="pet_index" type="hidden" value="${pet.pet_index}"/>
						<table class="table-wrapper" id="pet_info${tag_num }">
							<tr>
								<th>이름</th>
								<td>
									<div class="input-size">
										<input type="text" id="modifyPet_name${tag_num }" value="${pet.pet_name}">
									</div>
								</td>
							</tr>
							<tr>
								<th>품종</th>
								<td>
									<input type="hidden" id="selectPetBreeds${tag_num }" value="${pet.pet_breeds }">
									<select id="modifyPet_breeds${tag_num }" name="modifyPet_breeds">
										<option selected disabled value="0">견종을 선택해주세요.</option>		
									</select>
								</td>
							</tr>
							<tr>
								<th>생일</th>
								<td>
									<div class="input-size">
										<input type="date" id="modifyPet_birthday${tag_num }" value='<fmt:formatDate value="${pet.pet_birthday }" pattern="yyyy-MM-dd"/>'>
									</div>	
								</td>
							</tr>
							<tr>
								<th>성별</th>
								<td>
									<c:choose>
										<c:when test="${pet.pet_gender == 1}" >
											<div class="4u 12u$(small)">
												<input type="radio" id="gender${tag_num+20 }" value="2" name="gender${tag_num }"><label for="gender${tag_num+20 }"><i class="fa fa-venus" aria-hidden="true"></i></label>
											</div>
											<div class="4u 12u$(small)">
												<input type="radio" id="gender${tag_num+10 }" value="1" name="gender${tag_num }" checked="checked"><label for="gender${tag_num+10 }"><i class="fa fa-mars" aria-hidden="true"></i></label>
											</div>								
										</c:when>
										<c:when test="${pet.pet_gender == 2}" >
											<div class="4u 12u$(small)">
												<input type="radio" id="gender${tag_num+20 }" value="2" name="gender${tag_num }" checked="checked"><label for="gender${tag_num+20 }"><i class="fa fa-venus" aria-hidden="true"></i></label>
											</div>
											<div class="4u 12u$(small)">
												<input type="radio" id="gender${tag_num+10 }" value="1" name="gender${tag_num }"><label for="gender${tag_num+10 }"><i class="fa fa-mars" aria-hidden="true"></i></label>
											</div>							
										</c:when>
									</c:choose> 									
								</td>
							</tr>
							<tr>
								<th>사진</th>
								<td>
									<form id="imgForm${tag_num }" action="uploadPetImg" enctype="multipart/form-data" method="post" style="margin: 0;">
										<input type="hidden" name="pet_index" value="${pet.pet_index}">
										<input type="file" name="imgSrc" accept=".jpg, .png">
									</form>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="addPet_delBtn">
										<input class="button special small" type="button" value="삭제" onclick="deletePet(${tag_num}, ${pet.pet_index})">
										<input class="button special small" type="button" value="수정" onclick="modifyPet(${tag_num}, ${pet.pet_index}, ${tag_num })">					
									</div>	
								</td>
							</tr>
						</table>
						<c:set var="tag_num" value="${tag_num+1}"/>
					</c:forEach>
				</div>
			</div>	
			<div class="addPet">
				<div id="addPet">
				</div>						
				<div class="addPet_btn">
					<label style="font-size: 20px;">마이펫 추가    
						<button id="addPetBtn" type="button" class="button special small" onclick="addPetForm()"> + </button>					
					</label>
				</div>	
			</div>			
			<div class="modifyMember_btn" style="margin-top: 50px;">
				<button type="button" class="special" onclick="location='memberInfo'">나가기</button>			
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
