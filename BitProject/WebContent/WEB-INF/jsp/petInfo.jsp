<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 부트스트랩 -->
<link rel="stylesheet" href="/css/style.css" type="text/css" />
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- select2 -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div class="petNAME" id="petNAME">
		<label>펫 이름</label>
		<input type="text" class="form-control" id="pet_inputNAME" placeholder="펫 이름을 입력해주세요">
	</div>
	
	<div class="dogbreeds_select" id="dogbreeds_select">
		<select id="dogBreeds" class="dogBreeds">
			<option value="고든 세터">고든 세터</option>
			<option value="골든 리트리버">골든 리트리버</option>
			<option value="그레이트 데인">그레이트 데인</option>
			<option value="그레이트 스위스 마운틴 도그">그레이트 스위스 마운틴 도그</option>		
		</select>
	</div>
	<script type="text/javascript" src="/js/bootstrap.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		    $('#dogBreeds').select2();
		});
	</script>
</body>
</html>