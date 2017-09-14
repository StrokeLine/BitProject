<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니 확인 페이지</title>
</head>
<body>
	<div class="shoppingBasketMain">
		<div class="shoppingBasket_subject">
			<h3>장바구니 확인 페이지</h3>
		</div>
		<div class="shoppingBasket_btn">
			<input type="button" value="확인" onclick="goMyBasket()">
			<input type="button" value="취소" onclick="closePage()">
		</div>
	</div>
</body>
<script type="text/javascript">
	function goMyBasket() {
		
	}
	
	function closePage() {
		window.close();
	}
</script>
</html>