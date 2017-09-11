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
			<label for="login_ID">아이디(이메일)</label> <input type="text"
				class="form-control" id="login_inputID" placeholder="아이디를 입력하세요.">
		</div>

		<div class="loginPw" id="loginPw">
			<label for="login_PW">비밀번호</label> <input type="password"
				class="form-control" id="login_inputPW" placeholder="비밀번호를 입력하세요.">
		</div>

		<div class="checkbox_Id" id="checkbox_Id">
			<label>
				<input type="checkbox"> 아이디 저장
			</label>
		</div>
		
		<div class="checkbox_Auto">
			<label>
				<input type="checkbox"> 자동로그인 
			</label>
		</div>
		
		<div class="id_Find" id="id_Find">
			<p class="text-success">아이디 찾기</p>
		</div>
		
		<div class="pw_Find" id="pw_Find">
			<p class="text-success">비밀번호 찾기</p>
		</div>
		
		<div class="login_Bt" id="login_Bt">
			<button type="submit" class="btn btn-success">로그인</button>
			<button type="reset" class="btn btn-warning" onclick="location='main.do'">취소</button>
		</div>

	</div>

	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	
	<footer>
		<%@ include file="footer.jsp" %>
	</footer>
</body>
</html>