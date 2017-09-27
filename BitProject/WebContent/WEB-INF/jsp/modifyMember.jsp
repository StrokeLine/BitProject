<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript">

	function addPet(){		
		var div = document.createElement('div');		
		div.innerHTML = document.getElementById('modifyPet_info').innerHTML;
        document.getElementById('addPet').appendChild(div);	
	}	
	
	function removePet(pet){
		document.getElementById('addPet').removeChild(pet.parentNode);	
	}	 
</script>

<title>회원정보 수정</title>
</head>
<body>
	<div class="wrap" style="margin-left: 350px;">
		<div class="modifyMember_page">
			<div class="modifyMember">			
				<div class="modifyMember_title">
					<h3>회원정보 수정</h3>
				</div>			
				<div class="modifyMember_info">			
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
			</div>		
			<div class="modifyPet">
				<div class="modifyPet_title">
					<h3>마이펫 정보 수정</h3>		
				</div>			
				<div class="modifyPet_info" id="modifyPet_info">			
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
					<div class="addPet_delBtn">
						<input type="button" value="삭제" onclick="removePet(this)">					
					</div>					
				</div>
			</div>	
			<div class="addPet">
				<div class="addPet_btn">
					<label style="font-size: 20px;">마이펫 추가    
						<button type="button" class="btn btn-default" onclick="addPet()"> + </button>					
					</label>
				</div>	
				<div id="addPet">
				</div>						
			</div>			
			<div class="modifyMember_btn" style="margin-top: 50px;">
				<button type="submit" class="btn btn-primary">수정</button>			
			</div>
		</div>	
	</div>	
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>

</body>
</html>
