<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
<title>Insert title here</title>
</head>
<body>

	<form>
		<div class="loginId" id="loginId">
			<label for="login_ID">아이디(이메일)</label> <input type="text"
				class="form-control" id="login_inputID" placeholder="아이디를 입력하세요.">
		</div>

		<div class="loginPw" id="loginPw">
			<label for="login_PW">비밀번호</label> <input type="password"
				class="form-control" id="login_inputPW" placeholder="비밀번호를 입력하세요.">
		</div>

		<div class="checkbox_Id">
			<label>
				<input type="checkbox"> 아이디 저장
			</label>
		</div>
		
		<div class="checkbox_Auto">
			<label>
				<input type="checkbox"> 자동로그인 
			</label>
		</div>
		
		<div>
			<p class="text-success">아이디 찾기</p>
			<p class="text-success">비밀번호 찾기</p>
		</div>
		
		<div>
			<button type="submit" class="btn btn-success">로그인</button>
			<button type="reset" class="btn btn-warning">취소</button>
		</div>

	</form>

	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>