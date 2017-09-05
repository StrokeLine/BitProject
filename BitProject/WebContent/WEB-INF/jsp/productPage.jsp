<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="/BitProject/js/productScript.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
	<div class="productPage_Main" style="margin: 0px 200px 0px 200px;">
		<div class="product_top">
			<div class="product_img" style="width: 49%; display: inline-block;">
				<h3>이미지 영역</h3>
			</div>
			<div class="productInfo" style="width: 49%; display: inline-block;">
				<div class="product_name">
					<h3>상품명</h3>
				</div>
				<div class="product_price">
					<h3>상품가격</h3>
				</div>
				<div class="product_option">
					<h3>옵션</h3>
				</div>
				<div class="product_num">
					<input type="button" value="-">
					<input type="text" style="width: 25px;" value="1">
					<input type="button" value="+">
				</div>
				<div class="product_fee">
					<ul style="padding: 0px 0px 0px 0px; list-style-type: none;">
						<li><em style="font-style: normal;">배송비</em></li>
						<li><em style="font-style: normal;">배송비 결제 : </em> 주문시 결제</li>
					</ul>
				</div>
				<div class="product_total">
					<div class="label_total" style="width: 50%; float: left;">총 상품금액</div>
					<div class="label_price" style="width: 50%; float: left;">2500<span>원</span></div>
				</div>
				<div class="product_btn_other">
					<input type="button" value="찜" onclick="dibsCheck()">
					<input type="button" value="장바구니" onclick="shoppingBasketCheck()">
					<input type="button" value="주문하기">
				</div>
			</div>
		</div>
		<div class="product_middle">
			<center>
				<h3>상품 정보 영역</h3>
			</center>
		</div>
		<div class="product_bottom">
			<div class="product_content">
				<h3> 상품평 or 후기</h3>
				<div class="product_content_btn" style="float: right;">
					<input type="button" value="등록"> 
				</div>
			</div>
			<div class="product_inquiry">
				<h3> 상품 문의aaaaaaaaaaaa</h3>
				<div class="product_inquiry_btn" style="float: right;">
					<input type="button" value="등록"> 
				</div>
			</div>
		</div>
	</div>
</body>
</html>