<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
	
	<!-- Bootstrap Core CSS -->
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="/css/stylish-portfolio.css" rel="stylesheet">

	<!-- java script -->
	<script src="/js/pageScript.js"></script>
	
	<style>
	body{
		margin: 0 20px 0 0;
		background-color: inherit;
	}
	.memberInfo{height: 100%;
				color: #5d5d5d;
				background: #f2f2f2;
				padding: 26px;
				border-radius: 10px;
				-moz-border-radius: 10px;
				-webkit-border-radius: 10px;}
	.memberInfo > div {
		font-size: 18px;
		margin: 16px 0;
	}		
	.memberInfoTitle{width:500px;}
	.memberInfoTable{width:500px;
					 border: 2px solid #ccc;
					 border-radius: 5px;
					 padding: 10px;}
	.rowId{width:500px; height:50px;}
	.rowName{width:500px; height:50px;}
	.rowGender{width:500px; height:50px;}
	.rowAge{width:500px; height:50px;}
	.rowPhone{width:500px; height:50px;}
	.rowBtn{width:500px; height:50px;}
	.rowTitle{width:150px; float:left; margin-right:10px; padding: 7px; height: 40px; text-align:center;
			  background-color: #1abc9c;
			  color: #fff;
			  border: 1px solid #1abc9c;
			  border-radius: 4px;}
	.memberId{width:300px; display:inline-block; padding: 7px; height: 40px;}
	.memberPassword{width:150px; display:inline-block; padding: 7px; height: 40px;}
	.memberGender{width:300px; display:inline-block; padding: 7px; height: 40px;}
	.memberAge{width:300px; display:inline-block; padding: 7px; height: 40px;}
	.memberPhone{width:300px; display:inline-block; padding: 7px; height: 40px;}
	.memberModBtn{width:460px; float:left; height:30px; text-align:right;}
	.memberpwdCheck{ padding: 10% 30%;}
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
	</script>
	
</head>
	<body>
	<div class="memberInfo">
		<div class="memberpwdCheck">
			<div class="memberInfoTitle"><h2>비밀번호 재확인</h2></div>
			<div class="memberInfoTable">
				<div class="rowId">
					<div class="rowTitle">아이디</div>
					<div class="memberId">${member.m_email}</div>
				</div>
				<div class="rowName">
					<div class="rowTitle">비밀번호</div>
					<input class="memberPassword" type="password" id="inputPwd">
				</div>
				<div class="rowBtn">
					<div class="memberModBtn"><input type="button" class="btn btn-info" value="확인" onclick="pwdCheck()"></div>
					<!-- <div class="memberModBtn"><input type="button" class="btn btn-info" value="확인" onclick="location.href='modifyMember'"></div> -->
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript -->
    <script src="/jquery/jquery.min.js"></script>
    <script src="/popper/popper.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="/js/stylish-portfolio.js"></script>
		
	</body>
</html>
