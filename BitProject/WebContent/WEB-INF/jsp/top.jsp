<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id ="logo" class="logo">
	<a href="main.do">
		<img src="resources/images/logo.jpg" class="freehagae" alt="FreeHaGae" />
	</a>
</div>
<div id="member_Menu" class="member_Menu">
	<c:choose>
		<c:when test="${empty check}">
			<input type="button" value="로그인" onclick="location='loginForm.do'">
			<input type="button" value="회원가입" onclick="location='joinForm.do'">
		</c:when>
		<c:otherwise>
			<input type="button" value="로그아웃" onclick="location='main.do'">
			<input type="button" value="마이페이지" onclick="location='mypage.do'">
		</c:otherwise>
	</c:choose>
</div>