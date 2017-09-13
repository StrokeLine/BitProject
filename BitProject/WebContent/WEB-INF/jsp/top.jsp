<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css" type="text/css" />
<title>Insert title here</title>
</head>
<body>

<div id ="logo" class="logo">
	<a href="main">
		<img src="resources/images/logo.jpg" class="freehagae" alt="FreeHaGae" />
	</a>
</div>
<div id="member_Menu" class="member_Menu">
	<c:choose>
		<c:when test="${empty check}">
			<button type="button" class="btn btn-primary" onclick="location='loginForm'">로그인</button>
			<button type="button" class="btn btn-primary" onclick="location='joinForm'">회원가입</button>
		</c:when>
		<c:otherwise>
			<input type="button" value="로그아웃" onclick="location='main'">
			<input type="button" value="마이페이지" onclick="location='mypage'">
		</c:otherwise>
	</c:choose>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>