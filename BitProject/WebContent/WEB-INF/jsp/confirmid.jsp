<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">	

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
		success : function addPet()
	});
}
</script>
</body>
</html>