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
<link href="/bootstrap/css/bootstrap-select.css" rel="stylesheet">
<script src="/bootstrap/js/bootstrap-select.js"></script>
<script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
	
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
	
	function removePet(){
		var deleteNode = document.getElementById("addPetInfo");
		document.getElementById('addPet').removeChild(deleteNode);
		document.getElementById("addPetBtn").disabled = false;
	}
	
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
	
	window.onload = function(){
		var select = document.getElementsByName("modifyPet_breeds");
		
		for(var i = 0; i < select.length; i++) {
			addSelectOptions(i);
		}
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
						<div class="modifyMember_info">${member.m_email}</div>
						<div class="hr_line"></div>
						<div class="modifyMember_item">닉네임</div>
						<div class="modifyMember_info">${member.m_name}</div>	
						<div class="hr_line"></div>
						<div class="modifyMember_pw_info">
							<div class="modifyMember_item" style="width:100%">비밀번호</div>
							<div class="hr_line"></div>
							<div class="label">현재 비밀번호</div>
							<input class="input-passwd" type="password" id="originPasswd">
							<div class="label">새 비밀번호</div>
							<input class="input-passwd" type="password" id="modifyPasswd1">
							<div class="label">새 비밀번호 확인</div>
							<input class="input-passwd" type="password" id="modifyPasswd2">
						</div>
						<div class="hr_line"></div>
						<div class="modifyMember_item">연락처</div>			
						<div class="modifyMember_info">
							<input type="text" name="modifyTel" value="${member.m_tel }">			
						</div>
						<div class="hr_line"></div>
					</div>
					<div class="modifyMember_input">
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
