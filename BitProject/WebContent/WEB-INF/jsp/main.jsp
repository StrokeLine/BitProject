<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Keywords" content="메인페이지" />
<meta name="Description" content="메인페이지" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>
<link rel="stylesheet" href="/css/main.css" type="text/css">
<script src="/js/pageScript.js"></script>
<title>FreeHaGae</title>
</head>
<body>
	
	<div id="wrap">

	    <div id="header">
			<%-- <jsp:include page="header.jsp" /> --%>
			<div id="wrap">
				<div id ="logo_i" class="logo_c">
					<a href="main">
						<img src="/images/logo.png" class="logo" alt="FreeHaGae" />
					</a>
				</div>
				<div id="member_Menu_i" class="member_Menu_c">
					<c:choose>
						<c:when test="${empty check}">
							<button type="button" class="btn btn-primary" onclick="login('loginForm')">로그인</button>
							<button type="button" class="btn btn-primary" onclick="location='joinForm'">회원가입</button>
						</c:when>
						<c:otherwise>
							<input type="button" value="로그아웃" onclick="location='main'">
							<input type="button" value="마이페이지" onclick="location='mypage'">
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	    
	    <div id="container">
	
		    <div id="sidebar">left menu</div>
		    
	        <div id="content">
	        	<jsp:include page="container.jsp" />
	   		</div>
	   		
		    <div id="extra">right menu</div>
	
	    </div>
	    
	    
	    
    <div id="footer">
    	<%@ include file="footer.jsp" %>
    </div>
    
</div>
	

</body>
</html>