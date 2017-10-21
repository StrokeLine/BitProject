<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<script type="text/javascript">
function passwdCheck(m_password){
	var passwd = document.getElementById("password").value;
	alert(passwd)
/* 	var pwd = sessionStorage.getItem("m_password"); */	
	alert(m_password)	
	if( passwd == m_password ){
		$("#delete_btn").prop("disabled", false);
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
	<form action="deleteMemberPro">
		<div class="delete_page">
			<div class="delete_info">				
				<!-- 탈퇴사유<textarea name="" style="height:120px;width:380px;" ></textarea><br> -->
				비밀번호 <input type="password" name="m_password" id="password">
				<input type="button" value="확인" onclick='passwdCheck("${member.m_password}")'>
				<input type="hidden" name="m_index" value="${member.m_index}">
			</div>
			<div class="delete_btn">
				<input type="submit" id="delete_btn" value="탈퇴하기" disabled="disabled">		
			</div>
		</div>
	</form>	
</body>
</html>