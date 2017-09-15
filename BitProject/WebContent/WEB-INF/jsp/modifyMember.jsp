<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript">
	function addPet(){
		var petReg = document.getElementById('petReg').innerHTML;  
		
	    var div = document.createElement('div');        
	      
	    document.getElementById('addPet').appendChild(div);
	}
	
	
	function removePet(pet){
		document.getElementById('addPet').removeChild(pet.parentNode);	
	}
</script>


<!--수정 중  -->




<title>회원정보 수정</title>
</head>
<body>
	<div class="modifyMember_page">
		<div class="modifyMember_info">
		
			<h3>회원정보 수정</h3>
				<div class="modifyMember_item" style="width: 10%; display: inline-block; margin-bottom: 30px; margin-left: 20px;">
					<div class="modifyMember_id_item">아이디</div>
					<div class="modifyMember_pw_item" style="height: 80px;">비밀번호</div>
					<div class="modifyMember_tel_item">연락처</div>			
				</div>
				<div class="modifyMember_input" style="width: 40%; display: inline-block;">
					<div class="modifyMember_id">
						aaa
					</div>	
					<div class="modifyMember_pw" style="height: 80px;">
						<label>현재 비밀번호      <input type="password" name="originPasswd"></label><br>
						<label>새 비밀번호 <input type="password" name="modifyPasswd1"></label><br>
						<label>새 비밀번호 확인  <input type="password" name="modifyPasswd2"></label><br>		
					</div>
					<div class="memeberTel">
						<input type="text" name="modifyTel" style="width: 250px;">				
					</div>		
				</div>		
		</div>
		
		
		<div class="modifyPet_info">
			<h3>마이펫 정보 수정</h3>
				<div class="modifyPet_item" style="width: 10%; display: inline-block; margin-bottom: 30px; margin-left: 20px;">
					<div class="modifyPet_name_item">
						반려견 이름
					</div>
					<div class="modifyPet_type_item">
						반려견 종류
					</div>	
					<div class="modifyPet_age_item">
						반려견 나이
					</div>	
					<div class="modifyPet_gender_item">
						반려견 성별
					</div>				
				</div>
				<div class="modifyPet_input" style="width: 40%; display: inline-block;">
					<div class="modifyPet_name">
						<input type="text" id="modifyPet_name">
					</div>
					<div class="modifyPet_type">
						<select>
							<option value=""></option>			
						</select>		
					</div>
					<div class="modifyPet_age">
						<select>
							<option value=""></option>			
						</select>		
					</div>
					<div class="modifyPet_gender">
						<input type="radio" value="female" name="gender">암컷
						<input type="radio" value="male" name="gender">수컷
					</div>				
				</div>
				
				
					<!-- <div class="modifyPet_name_item" style="width: 10%; display: inline-block; margin-bottom: 30px; margin-left: 20px;">
						반려견 이름				
					</div>
					<div class="modifyPet_name" style="width: 40%; display: inline-block;">
						<input type="text" name="modifyPetName">				
					</div><br>
					<div class="modifyPet_type_item" style="width: 10%; display: inline-block; margin-bottom: 30px; margin-left: 20px;">
						반려견 종류									
					</div>
					<div class="modifyPet_type" style="width: 40%; display: inline-block;">
						<select>
							<option value=""></option>			
						</select>		
					</div><br>
					<div class="modifyPet_age_item" style="width: 10%; display: inline-block; margin-bottom: 30px; margin-left: 20px;">
						반려견 나이									
					</div>
					<div class="modifyPet_age" style="width: 40%; display: inline-block;">
						<select>
							<option value=""></option>			
						</select>
					</div><br>				
					<div class="modifyPet_gender_item" style="width: 10%; display: inline-block; margin-bottom: 30px; margin-left: 20px;">
						반려견 성별									
					</div>
					<div class="modifyPet_gender" style="width: 40%; display: inline-block;">
						<input type="radio" value="female" name="gender">암컷
						<input type="radio" value="male" name="gender">수컷
					</div><br>
					<input type="button" value="삭제" onclick="removePet(this)">
				</div>		 -->
						
		</div>
		<div class="addPet">
			<label style="font-size: 20px;">마이펫 추가    
				<input type="button" value="+" onclick="addPet()">
			</label>						
		</div>
		<div id="addPet">
		</div>	
			
		<div class="modifyMember_btn" style="margin-top: 50px;">
			<input type="button" value="수정">
		</div>
	</div>		
</body>
</html>
