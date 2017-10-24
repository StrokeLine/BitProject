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
function passwdCheck(){
	var passwd = document.getElementById("password").value;
	
	$.ajax({
        data : {
        	m_password : passwd
        },
        url : "pwdCheck",
        success : function(data) {
        	if(data){
				$("#result_checkpwd").text("비밀번호가 확인되었습니다. 탈퇴를 원하시면 '탈퇴하기' 버튼을 눌러주세요.");
				$("#result_checkpwd").css("color","blue");
				$("#delete_btn").prop("disabled", false);				
        	} else {
        		$("#result_checkpwd").text("비밀번호가 다릅니다. 다시 입력 후 '확인' 버튼을 눌러주세요.");
				$("#result_checkpwd").css("color","red");
        	}
        },
        error : function(err){
        	alert("잠시 후 다시 시도해주세요.");
        }
    });
}

function deleteMember(){
	$.ajax({
        url : "deleteMemberPro",
        success : function(data) {
        	if(data){
        		alert("탈퇴가 정상 처리되었습니다.");
        		parent.document.location.href = 'main'
        	} else {
        		alert("탈퇴처리가 정상처리되지 않았습니다. \n잠시 후 다시 시도 해 주세요.");
        	}
        },
        error : function(err){
        	alert("탈퇴처리가 정상처리되지 않았습니다. \n잠시 후 다시 시도 해 주세요.");
        }
    });
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
	<div class="delete_page">
		<div class="delete_info">				
			<!-- 탈퇴사유<textarea name="" style="height:120px;width:380px;" ></textarea><br> -->
			비밀번호 <input type="password" name="m_password" id="password">
			<input type="button" value="확인" onclick='passwdCheck()'>
			<div class="result_checkpassowrd" id="result_checkpwd"></div>
		</div>
		<div class="delete_btn">
			<input type="button" id="delete_btn" value="탈퇴하기" onclick="deleteMember()" disabled="disabled">		
		</div>
	</div>
</body>
</html>