<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/style.css" type="text/css" />

<title>Insert title here</title>
</head>
<body>

	<div class="wrap">
		<div class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
			<%@ include file="top.jsp" %>
		</div>
		<div class="loginId" id="loginId">
			<label for="login_ID">아이디(이메일)</label> 
			<input type="text" class="form-control" id="login_inputID" placeholder="아이디를 입력하세요.">
		</div>

		<div class="loginPw" id="loginPw">
			<label for="login_PW">비밀번호</label> <input type="password"
				class="form-control" id="login_inputPW" placeholder="비밀번호를 입력하세요.">
		</div>

		<div class="checkbox_ID" id="checkbox_ID">
			<input type="checkbox">아이디 저장
		</div>
		
		<div class="checkbox_AUTO" id="checkbox_AUTO">     
			<input type="checkbox">자동로그인
		</div>
			
		<div class="find_Bt" id="find_Bt">
			<button type="button" class="btn btn-default" onclick="idFind">아이디 찾기</button>
			<button type="button" class="btn btn-default" onclick="pwFind">비밀번호 찾기</button>
		</div>
		
		<div class="login_Bt" id="login_Bt">
			<button type="submit" class="btn btn-info">로그인</button>
			<button type="reset" class="btn btn-info" onclick="location='main'">취소</button>
		</div>

	</div>

	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	
	<footer>
		<%@ include file="footer.jsp" %>
	</footer>
</body>
</html>