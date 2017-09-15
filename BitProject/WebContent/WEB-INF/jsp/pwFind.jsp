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
			<%@ include file="header.jsp"%>
		</div>
		
		<div class="findId" id="findId">
			<label>아이디</label>
			<input type="text" class="form-control" id="find_inputNICK" placeholder="아이디(이메일)를 입력해 주세요">
		</div>
		
		<div class="findBt" id="findBt">
			<button type="submit" class="btn btn-info">확인</button>
			<button type="reset" class="btn btn-info" onclick="location='loginForm.do'">취소</button>
		</div>
		
	</div>

	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>

	<footer> 
		<%@ include file="footer.jsp"%>
	</footer>
</body>
</html>