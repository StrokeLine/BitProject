<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<style>
.followingNotiMain{margin:50px 100px 0 100px;}
.followingNotiMenu{width:1000px; height:100px; border:0;}
.followingNotiContent{width:1000px; height:400px; border:0;}
</style>

<body>
<div class="followingNotiMain">
	<h2>관심스토어 알림</h2>
	<div class="followingNotiMenu">
	<iframe class="followingNotiMenu" name="followingNotiMenu" src="followingNotiMenu"></iframe>
	</div>
	<div class="followingNotiContent">
	<iframe class="followingNotiContent" name="followingNotiContent" src="followingNotiProduct"></iframe>
	</div>
</div>
</body>

</html>