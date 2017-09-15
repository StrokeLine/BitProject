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
		
		<div class="findNick" id="findNick">
			<label>닉네임</label>
			<input type="text" class="form-control" id="find_inputNICK" placeholder="회원정보에 등록한 닉네임과 같아야 찾을수 있습니다">
		</div>
		
		<div class="findTel" id="findTel">
			<label>전화번호</label>
			<input type="text" class="form-control" id="find_inputTEl" placeholder="회원정보에 등록한 전화번호와 같아야 찾을수 있습니다">		
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