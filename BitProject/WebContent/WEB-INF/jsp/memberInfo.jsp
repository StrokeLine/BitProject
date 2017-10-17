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
	.memberInfoTitle{width:700px;}
	.memberInfoTable{width:700px;
					 border: 2px solid #ccc;
					 border-radius: 5px;
					 padding: 10px;}
	.rowId{width:700px; height:50px;}
	.rowName{width:700px; height:50px;}
	.rowGender{width:700px; height:50px;}
	.rowAge{width:700px; height:50px;}
	.rowPhone{width:700px; height:50px;}
	.rowBtn{width:700px; height:50px;}
	.rowTitle{width:150px; float:left; margin-right:10px; padding: 7px; height: 40px; text-align:center;
			  background-color: #1abc9c;
			  color: #fff;
			  border: 1px solid #1abc9c;
			  border-radius: 4px;}
	.memberId{width:398px; display:inline-block; padding: 7px; height: 40px;}
	.memberName{width:398px; display:inline-block; padding: 7px; height: 40px;}
	.memberGender{width:398px; display:inline-block; padding: 7px; height: 40px;}
	.memberAge{width:398px; display:inline-block; padding: 7px; height: 40px;}
	.memberPhone{width:398px; display:inline-block; padding: 7px; height: 40px;}
	.memberModBtn{width:670px; float:left; height:30px; text-align:right;}
	</style>
</head>
	<body>
	<div class="memberInfo">
		<div class="memberInfoTitle"><h1>내 정보</h1></div>
		<div class="memberInfoTable">
			<div class="rowId">
				<div class="rowTitle">아이디</div>
				<div class="memberId">${member.m_email}</div>
			</div>
			<div class="rowName">
				<div class="rowTitle">닉네임</div>
				<div class="memberName">${member.m_name}</div>
			</div>
			<div class="rowPhone">
				<div class="rowTitle">전화번호</div>
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
