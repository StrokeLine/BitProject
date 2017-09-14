<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결제 환료 페이지</title>
</head>
<body>
	<div class="dibsMain">
		<center>
			<div class="dibs_subject">
				<h3>결제가 정상 처리되었습니다.</h3>
			</div>
			<div class="dibs_btn">
				<input type="button" value="확인" onclick="goMain()">
			</div>
		</center>
	</div>
</body>

<script type="text/javascript">
	function goMain() {
		opener.location.href="main";
		window.close();
	}
</script>

</html>