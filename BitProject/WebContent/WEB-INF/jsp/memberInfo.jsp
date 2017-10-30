<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#menu ul.sub").hide();
			$("#menu ul.menu li").click(function(){
				$("ul",this).slideToggle("fast");
			});
		});
	</script>

	<style>
	body{
		margin: 0 20px 0 0;
		background-color: inherit;
	}
	
	hr{
		margin: 0em;
	}
	
	h2{
		margin: 0em;
	}
	
	ul.actions li{
		padding: 0 1em 0 15em;
	}
	
	.title{
	    font-weight: 900;
	}
	
	.actions{
		margin: 0em; 
		padding-top: 1em;
	}
	
	.repassword{
		margin: 3% 30%;
	}

 	.memberInfoTable{
 		width: 20em;
		border: 2px solid #ccc;
		border-radius: 5px;
		padding: 10px;
	}
	.\34u {
		width: 80%;
	}

	.check-email{
		font-weight: 900;	
	}
	</style>
	
	<script type="text/javascript">
		function pwdCheck() {
			var pwd = document.getElementById("inputPwd").value;
			
			if( pwd == "" || pwd == 'undefined') {
				alert("비밀번호를 입력 해 주세요.");
				$("#inputPwd").focus();
				return false;
			}
			
			$.ajax({
				data : {
					m_password : pwd
				},
				url : "pwdCheck",
				success : function(data) {
					if(data == 1){
						location.href="modifyMember";
					} else if(data == 0) {
						alert("비밀번호가 다릅니다. 다시 입력 해 주세요.");
						$("#inputPwd").focus();
						$("#inputPwd").select();
					}
				},
				error : function(err) {
					alert("잠시 후 다시 시도해주십시오.");
				}
			});
			
		}
		
		function checkSubmit(e){
			if(e.keyCode == 13){
				pwdCheck();	
			}
		}
	</script>
	
</head>
<body>
	<!-- Container -->
		<div class="main">
			
			<div class="inner">
				
				<section class="repassword">
					<span class="title">비밀번호 재확인</span>
					<br>
					<div class="memberInfoTable">
						<div class="4u 12u$(xsmall)">
							<div class="check-email">${member.m_email}</div>
							<hr>
							<input type="password" class="form-control input-lg" id="inputPwd" name="m_password" placeholder="Password" required="" onkeydown="return checkSubmit(event)"/>
						</div>
						<div>
							<ul class="actions">
								<li><input class="button special small" id="check" type="submit" value="확인" onclick="pwdCheck()"/></li>
							</ul>
						</div>
					</div> 
				</section>
				
			</div>
		
		</div>

	
</body>
</html>
