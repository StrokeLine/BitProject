<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="modal-dialog" role="document"></div>
<div class="orderProduct_main">
	<div class="product_info" style="margin-top: 50px">
		<h3>주문상품 정보</h3>
	</div>
	<hr color="gray" style="width:70%;" align="left">		
	<div class="productinfo_content" style="margin-left: 40px;">
		<div class="product_img" style="width: 20%; display: inline-block;">
			<h5>상품이미지</h5>
		</div>
		<div class="product_name" style="width: 20%; display: inline-block;">
			<h5>상품명</h5>
		</div>
		<div class="product_price" style="width: 20%; display: inline-block;">
			<h5>상품금액</h5>
		</div>						
	</div>
		
	<div class="shippingAddress_info" style="margin-top: 50px">
		<h3>배송지 정보</h3>
	</div>	
	<hr color="gray" style="width:70%;" align="left">		
		<div class="shippingAddress_load">
			구매자 기본정보			
			<ul>
				<li>구매자 이   름</li>
				<li>구매자 연락처</li>			
			</ul>			
		</div>			
		<div class="shippingAdress_input">	
			배송지 입력정보			
			<ul>
				<li>수령인
					<input type="text" name="name" width="100px"><br>
				</li>				
				<li>구매자 연락처
					<input type="text" name="address" width="100px"><br>
				</li>
				<li>배송 메모	
					<textarea style="height:100px;width:300px;"></textarea><br>	
				</ul>			
		</div>					
	<div class="finalPrice_info" style="margin-top: 50px">
		<h3>최종 결제금액</h3>
	</div>
	<hr color="gray" style="width:70%;" align="left">
		<div>
			<ul>			
				<li>상품금액</li>
				<li>배송비</li>
				<li>최종금액</li>	
			</ul>
		</div>
	<div class="paymentMethod_info" style="margin-top: 50px">
		<h3>결제수단</h3>
	</div>
	<hr color="gray" style="width:70%;" align="left">	
		<div class="paymentCard">
			<label><input type="radio" name="paymentMethod" value="card">카드결제</label><br>
				<select>
					<option value=""></option>
					<option value=""></option>
					<option value=""></option>						
				</select>
		</div>
		<div class="paymentAccount">
			<label><input type="radio" name="paymentMethod" value="account">무통장 입금</label><br>
				<select>
					<option value=""></option>			
				</select>
		</div>
		<div class="paymentPhone">
			<label><input type="radio" name="paymentMethod" value="phone">휴대폰 결제</label><br>
				<select>
					<option value=""></option>			
				</select>
		</div>	
	<div class="order_btn">
		<input type="button" value="결제하기" onclick="orderCheck()">	
	</div>
</div>
</body>
<script type="text/javascript">
//장바구니 확인 페이지
function orderCheck() {
	var url = "orderCheck";
	var windowW = 450;  // 창의 가로 길이
    var windowH = 200;  // 창의 세로 길이
    var left = (window.screen.width - windowW)/2;
    var top = (window.screen.height - windowH)/3;
    open(url,"결제 환료 페이지","top="+top+", left="+left+", height="+windowH+", width="+windowW);
}
</script>
</html>