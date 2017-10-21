<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>
<!-- 펫처리 부분 -->
<script type="text/javascript">
	
	// 추가할 펫 입력창 생성
	function addPetForm(){
		var div = document.createElement('div');
		div.setAttribute("id", "addPetInfo");
		div.innerHTML = '<div class="addPet_info">'
					  + '	<div class="modifyPet_item" style="width: 10%; display: inline-block; margin-bottom: 30px; margin-left: 20px;">'
					  + '		<div class="modifyPet_name_item">반려견 이름</div>'
					  + '		<div class="modifyPet_type_item">반려견 종류</div>'	
					  + '		<div class="modifyPet_age_item">반려견 생일</div>'
					  + '		<div class="modifyPet_gender_item">반려견 성별</div>'				
					  + '	</div>'
					  + '	<div class="modifyPet_input" style="width: 40%; display: inline-block;">'
					  + '		<div class="addPet_name">'
					  + '			<input type="text" id="addPet_name">'
					  + '		</div>'
					  + '		<div class="addPet_breeds">'
					  + '			<select id="addPet_breeds">'
					  + '				<option selected disabled value="0">견종을 선택해주세요.</option>'
					  + '			</select>'
					  + '		</div>'
					  + '		<div class="addPet_birthday">'
					  + '			<input type="date" id="addPet_birthday">'		
					  + '		</div>'
					  + '		<div class="addPet_gender">'
					  + '			<input type="radio" value="2" name="addPet_gender" value="2">암컷'
					  + '			<input type="radio" value="1" name="addPet_gender" value="1">수컷'
					  + '		</div>'
					  + '	</div>'
					  + '	<div class="addPet_delBtn">'
					  + '		<input type="button" value="삭제" onclick="removePet()">'
					  + '      	<input type="submit" value="추가" onclick="addPet()">'
					  + '	</div>'
					  + '</div>';
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
	
	// 기존에 추가된 펫정보 삭제
	function deletePet(pet, pet_index){
		var check = confirm("정말로 당신의 반려견을 삭제하시겠습니까?");
		if(check){
			
			var deleteNode = document.getElementById(pet.parentNode.parentNode.getAttribute("id"));
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

<style type="text/css">
	body{
		margin: 0 20px 0 0;
		background-color: inherit;
	}
	.wrap{
		height: 100%;
		color: #5d5d5d;
		background: #f2f2f2;
		padding: 26px;
		border-radius: 10px;
		-moz-border-radius: 10px;
		-webkit-border-radius: 10px;
	}
	.modifyMember_form{
		width:800px;
		padding: 7px;
	}
	.modifyMember_item{
	    width: 20%;
		padding: 7px;	
		display: inline-block;	
	}
	.modifyMember_info{
		width: 60%;
		padding: 7px;
		display: inline-block;
	}
	.modifyMember_pw_info{
		width: 100%;
		display: inline-block;
	}
	.label{
		width: 20%;
		padding: 7px;
		margin-left: 50px;
		display: inline-block;
	}
	.input-passwd{
	    display: inline-block;
	    margin-right: 200px;
	}
	.hr_line{
		width: 60%;
		border-bottom: 1px solid #5d5d5d; 
	}
	.result_checkname{
		width: 100%;
		height: 30px;
		margin-left: 160px;
	}
	.result_checkpassowrd{
		width: 100%;
		height: 30px;
		margin-left: 213px;
	}
	.result_checkphone{
		width: 100%;
		height: 30px;
		margin-left: 162px;
	}
	.none{
		width: 20%;
		padding: 7px;
		margin-left: 50px;
		display: inline-block;
	}
	
</style>
<title>회원정보 수정</title>
</head>
<body>
	<div class="wrap">
		<div class="modifyMember_page">
			<div class="modifyMember">			
				<div class="modifyMember_title">
					<h3>회원정보 수정</h3>
				</div>			
				<div class="modifyMember_form">			
					<div class="modifyMember_list">
						<div class="modifyMember_item">아이디</div>
						<div class="modifyMember_info" id="modifyEmail">${member.m_email}</div>
						<div class="hr_line"></div>
						<div class="modifyMember_item">닉네임</div>
						<input type="text" id="modifyMember_name" value="${member.m_name}" onkeyup='on_keyname("${member.m_name}")'>
						<div class="result_checkname" id="result_checkname"></div>
						<div class="hr_line"></div>
						<div class="modifyMember_pw_info">
							<div class="modifyMember_item" style="width:100%">비밀번호</div>
							<div class="hr_line"></div>
							<div class="label">현재 비밀번호</div>
							<input class="input-passwd" type="password" id="originPasswd" maxlength="15">
							<div class="label">새 비밀번호</div>
							<input class="input-passwd" type="password" id="modifyPasswd1" maxlength="15" onkeyup="on_keypasswd()">
							<div class="label">새 비밀번호 확인</div>
							<input class="input-passwd" type="password" id="modifyPasswd2" maxlength="15" onkeyup="checkPwd()">
							<div class="result_checkpassowrd" id="result_checkpwd"></div>
						</div>
						<div class="hr_line"></div>
						<div class="modifyMember_item">연락처</div>
						<input id="modifyPhone" type="text" name="modifyTel" value="${member.m_tel }" onkeyup='on_keyphone("${member.m_tel }")'>
						<div class="result_checkphone" id="result_checkphone"></div>											
						<div class="hr_line"></div>
					</div>
					<div class="modifyMember_input">
						<input class="btn btn-primary" type="button" id="modifyMember_set" value="확인" onclick="modifyMember()" style="margin: 10px 210px;" disabled="disabled">
					</div>
				</div>	
			</div>		
			<div class="modifyPet">
				<div class="modifyPet_title">
					<h3>마이펫 정보 수정</h3>		
				</div>
				<div class="myPet" id="myPet">
					<c:set var="tag_num" value="0"/>
					<c:forEach var="pet" items="${pets}">
						<input id="pet_index" type="hidden" value="${pet.pet_index}"/>
						<div class="modifyPet_info" id="modifyPet_info${tag_num}">
							<div class="modifyPet_item" style="width: 10%; display: inline-block; margin-bottom: 30px; margin-left: 20px;">
								<div class="modifyPet_name_item">
									반려견 이름
								</div>
								<div class="modifyPet_type_item">
									반려견 종류
								</div>	
								<div class="modifyPet_age_item">
									반려견 생일
								</div>	
								<div class="modifyPet_gender_item">
									반려견 성별
								</div>				
							</div>
							<div class="modifyPet_input" style="width: 40%; display: inline-block;">
								<div class="modifyPet_name">
									<input type="text" id="modifyPet_name${tag_num }" value="${pet.pet_name}">
								</div>
								<div class="modifyPet_breeds">
									<input type="hidden" id="selectPetBreeds${tag_num }" value="${pet.pet_breeds }">
									<select id="modifyPet_breeds${tag_num }" name="modifyPet_breeds">
										<option selected disabled value="0">견종을 선택해주세요.</option>		
									</select>
								</div>
								<div class="modifyPet_birthday">
									<input type="date" id="modifyPet_birthday${tag_num }" value='<fmt:formatDate value="${pet.pet_birthday }" pattern="yyyy-MM-dd"/>'>
								</div>
								<div class="modifyPet_gender">
									<c:choose>
										<c:when test="${pet.pet_gender == 1}" >
											<input type="radio" value="2" name="gender${tag_num }">암컷
											<input type="radio" value="1" name="gender${tag_num }" checked="checked">수컷								
										</c:when>
										<c:when test="${pet.pet_gender == 2}" >
											<input type="radio" value="2" name="gender${tag_num }" checked="checked">암컷
											<input type="radio" value="1" name="gender${tag_num }">수컷								
										</c:when>
									</c:choose>
								</div>				
							</div>
							<div class="addPet_delBtn">
								<input type="button" value="삭제" onclick="deletePet(this, ${pet.pet_index})">
								<input type="button" value="수정" onclick="modifyPet(this, ${pet.pet_index}, ${tag_num })">					
							</div>					
						</div>
						<c:set var="tag_num" value="${tag_num+1}"/>
					</c:forEach>
				</div>
			</div>	
			<div class="addPet">
				<div id="addPet">
				</div>						
				<div class="addPet_btn">
					<label style="font-size: 20px;">마이펫 추가    
						<button id="addPetBtn" type="button" class="btn btn-default" onclick="addPetForm()"> + </button>					
					</label>
				</div>	
			</div>			
			<div class="modifyMember_btn" style="margin-top: 50px;">
				<button type="button" class="btn btn-primary" onclick="location='memberInfo'">나가기</button>			
			</div>
		</div>	
	</div>	

</body>
</html>
