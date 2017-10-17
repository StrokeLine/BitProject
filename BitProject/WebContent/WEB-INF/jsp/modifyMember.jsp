<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript">
	
	function addPet(){
		var div = document.createElement('div');
		div.innerHTML = '<div class="modifyPet_info">'	
					  + '	<div class="modifyPet_item" style="width: 10%; display: inline-block; margin-bottom: 30px; margin-left: 20px;">'
					  + '		<div class="modifyPet_name_item">반려견 이름</div>'
					  + '		<div class="modifyPet_type_item">반려견 종류</div>'	
					  + '		<div class="modifyPet_age_item">반려견 나이</div>'
					  + '		<div class="modifyPet_gender_item">반려견 성별</div>'				
					  + '	</div>'
					  + '	<div class="modifyPet_input" style="width: 40%; display: inline-block;">'
					  + '		<div class="modifyPet_name">'
					  + '			<input type="text" id="modifyPet_name">'
					  + '		</div>'
					  + '		<div class="modifyPet_type">'
					  + '			<select>'
					  + '				<option value=""></option>'			
					  + '			</select>'
					  + '		</div>'
					  + '		<div class="modifyPet_age">'
					  + '			<select>'
					  + '				<option value=""></option>'			
					  + '			</select>'		
					  + '		</div>'
					  + '		<div class="modifyPet_gender">'
					  + '			<input type="radio" value="female" name="gender">암컷'
					  + '			<input type="radio" value="male" name="gender">수컷'
					  + '		</div>'
					  + '	</div>'
					  + '	<div class="addPet_delBtn">'
					  + '		<input type="button" value="삭제" onclick="removePet(this)">'					
					  + '	</div>'
					  + '</div>';
        document.getElementById('addPet').appendChild(div);	
	}	
	
	function removePet(pet){
		console.log(pet.parentNode.parentNode);
		document.getElementById('addPet').removeChild();
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
				<c:forEach var="pet" items="${pets}">			
					<div class="modifyPet_info" id="modifyPet_info">			
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
								<input type="text" id="modifyPet_name" value="${pet.pet_name}">
							</div>
							<div class="modifyPet_type">
								<select >
									<option value="${pet.pet_breeds}" selected="selected">${pet.pet_breeds}</option>			
								</select>		
							</div>
							<div class="modifyPet_age">
								<input type="text" id="modifyPet_birthday" value='<fmt:formatDate value="${pet.pet_birthday}" pattern="yy년 MM월 dd일"/>'>
							</div>
							<div class="modifyPet_gender">
								<c:choose>
									<c:when test="${pet.pet_sex == 1}" >
										<input type="radio" value="female" name="gender">암컷
										<input type="radio" value="male" name="gender" checked="checked">수컷								
									</c:when>
									<c:when test="${pet.pet_sex == 2}" >
										<input type="radio" value="female" name="gender" checked="checked">암컷
										<input type="radio" value="male" name="gender">수컷								
									</c:when>
								</c:choose>
							</div>				
						</div>
						<div class="addPet_delBtn">
							<input type="button" value="삭제" onclick="removePet(this)">					
						</div>					
					</div>
				</c:forEach>
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
