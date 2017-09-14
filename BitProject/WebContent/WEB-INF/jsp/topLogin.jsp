<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="/js/pageScript.js"></script>
<title>Insert title here</title>
</head>
<body>

<div id ="logo" class="logo">
	<a href="main.do">
		<img src="/images/logo.png" class="freehagae" alt="FreeHaGae" />
	</a>
</div>
<div id="member_Menu" class="member_Menu">
	<button type="button" class="btn btn-primary" onclick="location='main'">로그아웃</button>
	<button type="button" class="btn btn-primary" onclick="myPagebutton('myPageMain')">마이페이지</button>
</div>
<script type="text/javascript" src="/js/bootstrap.js"></script>
</body>
</html>