<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 수정</title>
</head>
<body>
	<div class="modifyMember_page">
		<div class="modifyMember_info">
			<h3>회원정보 수정</h3>
				<div class="modifyMember_item1" style="width: 10%; display: inline-block; margin-bottom: 30px;">
					아이디				
				</div>
				<div class="memeberId" style="width: 40%; display: inline-block;">
					aaa				
				</div><br>
				<div class="modifyMember_item2" style="width: 10%; display: inline-block; margin-bottom: 30px;">
					비밀번호				
				</div>
				<div class="memeberPassword" style="width: 40%; display: inline-block;">
					<label>현재 비밀번호      <input type="password" name="originPasswd"></label><br>
					<label>새 비밀번호 <input type="password" name="modifyPasswd1"></label><br>
					<label>새 비밀번호 확인  <input type="password" name="modifyPasswd2"></label><br>			
				</div><br>
				<div class="modifyMember_item3" style="width: 10%; display: inline-block; margin-bottom: 30px;">
					연락처				
				</div>
				<div class="memeberTel" style="width: 40%; display: inline-block;">
					<input type="text" name="modifyTel" style="width: 250px;">				
				</div>		
		</div>
		<div class="modifyPet_info">
			<h3>마이펫 정보 수정</h3>
			<div class="petReg">
				<div class="modifyPet_item1" style="width: 10%; display: inline-block; margin-bottom: 30px;">
					반려견 이름				
				</div>
				<div class="petName" style="width: 40%; display: inline-block;">
					<input type="text" name="modifyPetName">				
				</div><br>
				<div class="modifyPet_item2" style="width: 10%; display: inline-block; margin-bottom: 30px;">
					반려견 종류									
				</div>
				<div class="petType" style="width: 40%; display: inline-block;">
					<select>
						<option value=""></option>			
					</select>		
				</div><br>
				<div class="modifyPet_item3" style="width: 10%; display: inline-block; margin-bottom: 30px;">
					반려견 나이									
				</div>
				<div class="petAge" style="width: 40%; display: inline-block;">
					<select>
						<option value=""></option>			
					</select>		
				</div><br>
				<input type="button" value="삭제" onclick="remove_div(pet)" align="right">	
			</div>		
		</div>				
		</div>
		<div class="addPet">
			<label style="font-size: 22px; font-style: ;"> 마이펫 추가    <input type="button" value="+" onclick="addPet()"></label>						
		</div>
		<div id="field">
		</div>	
			
		<div class="modifyMember_btn" style="margin-top: 50px;">
			<input type="button" value="수정">
		</div>	
</body>
</html>
