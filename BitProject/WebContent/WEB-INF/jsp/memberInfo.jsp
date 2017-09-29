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
	.memberInfo{margin:50px 100px 0 100px;}
	.memberInfoTitle{width:700px;}
	.memberInfoTable{width:700px;}
	.rowId{width:700px; height:50px; border-top:solid 2px;;}
	.rowName{width:700px; height:50px;}
	.rowGender{width:700px; height:50px;}
	.rowAge{width:700px; height:50px;}
	.rowPhone{width:700px; height:50px;}
	.rowBtn{width:700px; height:50px; border-bottom:solid 2px;}
	.rowTitle{width:300px; float:left; margin-right:2px; height:30px; text-align:center;}
	.memberId{width:398px; display:inline-block; height:30px;}
	.memberName{width:398px; display:inline-block; height:30px;}
	.memberGender{width:398px; display:inline-block; height:30px;}
	.memberAge{width:398px; display:inline-block; height:30px;}
	.memberPhone{width:398px; display:inline-block; height:30px;}
	.memberModBtn{width:700px; float:left; height:30px; text-align:right;}
	</style>
</head>
	<body>
	<div class="memberInfo">
		<div class="memberInfoTitle"><h2>내 정보</h2></div>
		<div class="memberInfoTable">
			<div class="rowId">
				<div class="rowTitle"><h4>아이디</h4></div>
				<div class="memberId">${member.m_email}</div>
			</div>
			<div class="rowName">
				<div class="rowTitle"><h4>닉네임</h4></div>
				<div class="memberName">${member.m_name}</div>
			</div>
			<div class="rowPhone">
				<div class="rowTitle"><h4>전화번호</h4></div>
				<div class="memberPhone">${member.m_tel}</div>
			</div>
			<div class="rowBtn">
				<div class="memberModBtn"><input type="button" class="btn btn-info" value="수정" onclick="location.href='modifyMember'"></div>
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
