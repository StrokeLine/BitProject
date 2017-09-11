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
		
		<div class="joinId" id="joinId">
			<label for="join_id">아이디(이메일)</label>
			<input type="text" class="form-control" id="join_inputID" placeholder="이메일을 입력하세요">
			<button type="button" class="btn btn-info">중복확인</button>
		</div>
		
		<div class="joinPw" id="joinPw">
			<label for="join_pw">비밀번호</label>
			<input type="password" class="form-control" id="join_inputPW" placeholder="비밀번호를 입력하세요">
			<input type="password" class="form-control" id="join_inputRPW" placeholder="비밀번호를 한 번 더 입력하세요">
		</div>
		
		<div class="joinNick" id="joinNick">
			<label for="join_nick">닉네임</label>
			<input type="text" class="form-control" id="join_inputNICK" placeholder="닉네임을 입력하세요">
			<button type="button" class="btn btn-warning">중복확인</button>
		</div>
		
		<div class="joinTel" id="joinTel">
			<label for="join_tel">전화번호</label>
			<input type="text" class="form-control" id="join_inputTEL" placeholder="전화번호를 입력하세요">
			<button type="button" class="btn btn-danger">인증</button>
		</div>
		
		
		
		
	</form>

	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>