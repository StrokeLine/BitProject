<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="modal-dialog" role="document"></div>

<form action="orderProduct" method="post" onsubmit="orderCheck()">
	<div class="orderProduct_main">
		<div class="product_info" style="margin-top: 50px">
			<h3>주문상품 정보</h3>
		</div>
		<hr color="gray" style="width:70%;" align="left">
		<div class="product_info">
			<table class="table">
				<thead>
					<tr>
						<th width="20">상품이미지</th>
						<th width="20">상품명</th>
						<th width="10">상품 금액</th>
						<th width="10">배송비</th>
						<th></th>						
					</tr>			
				</thead>
				<tbody>
					<tr>	
						<td id="product_info_img">								
							<img src="downloadProductImg?p_index=${product_info.p_index}" width="" height="" border="0">						
						</td>					
						<td id="product_info_name">
							${product_info.p_name}
						</td>
						<td id="product_info_price">
							${product_info.p_price} 원
						</td>
						<td id="product_info_fee">
							${product_info.p_fee}
						</td>											
					</tr>
				</tbody>						
			</table>
		</div>	
			
		<%-- <div class="productinfo_title" style="margin-left: 40px;">
			<div class="title_product_img" style="width: 15%; display: inline-block;">
				상품이미지
			</div>
			<div class="title_product_name" style="width: 15%; display: inline-block;">
				상품명
			</div>
			<div class="title_product_price" style="width: 10%; display: inline-block;">
				상품금액
			</div>
			<div class="title_product_fee" style="width: 10%; display: inline-block;">
				배송료
			</div>	
		</div>		
		<div class="productinfo_content" style="margin-left: 40px;">
			<div class="product_img" style="width: 15%; display: inline-block;">
				${product_info.p_imgSrc}
			</div>
			<div class="product_name" style="width: 15%; display: inline-block;">
				${product_info.p_name}
			</div>
			<div class="product_price" style="width: 10%; display: inline-block;">
				${product_info.p_price} 원
			</div>		
			<div class="product_fee" style="width: 10%; display: inline-block;">
				${product_info.p_fee} (주문시 결제)
			</div>							
		</div> --%>		
		
		<div class="product_total">
			<div class="label_total" style="width: 40%; background-color: gray;">
				<center><h3>최종 금액</h3></center>
			</div>
			<div class="label_price" style="width: 20%; background-color: gray;">
				<span>원</span>			
			</div>
		</div>	
					
		<div class="shippingAddress_info" style="margin-top: 50px">
			<h3>배송지 정보</h3>
		</div>	
		<hr color="gray" style="width:70%;" align="left">		
			<div class="shippingAdress_input">						
				수령인
					<input type="text" name="" width="100px"><br>
				구매자 연락처
					<input type="text" name="" width="100px"><br>
				배송 메모	
					<textarea name="" style="height:100px; width:300px;"></textarea><br>					
			</div>					
		
		<div class="paymentMethod_info" style="margin-top: 50px">
			<h3>결제수단</h3>
		</div>
		<hr color="gray" style="width:70%;" align="left">	
			<div class="paymentCard">
				<label><input type="radio" name="paymentMethod" value="card">카드결제</label><br>
					<select name="">
						<option value=""></option>
						<option value=""></option>
						<option value=""></option>						
					</select>
			</div>
			<div class="paymentAccount">
				<label><input type="radio" name="paymentMethod" value="account">무통장 입금</label><br>
					<select name="">
						<option value=""></option>			
					</select>
			</div>
			<div class="paymentPhone">
				<label><input type="radio" name="paymentMethod" value="phone">휴대폰 결제</label><br>
					<select name="">
						<option value=""></option>			
					</select>
			</div>	
		<div class="order_btn">
			<input type="submit" value="결제하기" >
		</div>
	</div>
</form>	
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