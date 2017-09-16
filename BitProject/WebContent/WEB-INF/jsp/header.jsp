<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/bootstrap/css/bootstrap.css" type="text/css" />
<title>FreeHaGae</title>
</head>
<body>
	<div id="header_bar_i" class="header_bar_c">
		<div id ="logo_i" class="logo_c">
			<a href="main">
				<img src="/images/logo.png" class="logo" alt="FreeHaGae" />
			</a>
		</div>
		<div id="member_Menu_i" class="member_Menu_c">
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
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>
</body>
</html>