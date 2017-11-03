<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>주문결제</title>
<style>
.opTable{width:800px; border-style:solid none solid none;}
.opHeader{width:800px; text-align:center; border-bottom:solid 1px;}
.opCheckHeader{float:left; height:25px; margin-right:1px; padding-top: 3%;}
.opImgHeader{float:left; width:12%; height:50px; margin-right:1px;}
.opNameHeader{display:inline-block; width:35%; height:50px; margin-right:1px;}
.opNumHeader{display:inline-block; width:8%; height:50px; margin-right:1px;}
.opPriceHeader{display:inline-block; width:12%; height:50px; margin-right:1px;}
.opFeeHeader{display:inline-block; width:12%; height:50px; margin-right:1px;}
.opLastAmountHeader{display:inline-block; width:12%; height:50px; margin-right:1px;}
.opRows{width:800px;}
.opCheck{float:left; height:30px; margin-right:1px; margin-top: 1px;}
.opImg{display:inline-block; width:12%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.opName{display:inline-block; width:35%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.opNum{display:inline-block; width:8%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.opPrice{display:inline-block; width:12%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.opFee{display:inline-block; width:12%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.opLastAmount{display:inline-block; width:12%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.opTotalAmount{ width:800px; height: 50px; border-style:solid none solid none; margin-top: 10px; }
.opPayTitle{display:inline-block; width: 10%;}
.opPayPrice{display:inline-block; width: 20%; text-align: right;}
.opNoneBlock{display:inline-block; width: 68%;}
.opNoneRow{margin: 5% 38%;}
.order_btn{float:right; margin-top: 1%;}
.basket_btn{float:left;  margin-top: 1%;}
.prod_num{width: 35px; text-align: center;}
.changeBtn{margin-top: 5px;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<h2>주문 결제</h2>
	<div class="orderProduct_main">
		<div class="product_info" style="margin-top: 50px">
			<h3>주문상품 정보</h3>
		</div>
		<div class="product_info">
			<div class="opTable">
				<div class="opHeader">
					<div class="opImgHeader">
						<h4>상품 이미지</h4>
					</div>
					<div class="opNameHeader">
						<h4>상품명</h4>
					</div>
					<div class="opNumHeader">
						<h4>수량</h4>
					</div>			
					<div class="opPriceHeader">
						<h4>금액</h4>
					</div>			
					<div class="opFeeHeader">
						<h4>배송료</h4>
					</div>	
					<div class="opLastAmountHeader">
						<h4>최종금액</h4>
					</div>
				</div>
				<c:set var="TotalAmount" value="${0}"></c:set>
				<div class="orderProduct_list">
					<c:set var="i" value="${0 }"></c:set>
					<c:forEach items="${ orderProduct_list}" var="orderProduct">
						<input id="product${i}" type="hidden" name="basket_id" value="${orderProduct.sb_index }">
						<input id="product_index" type="hidden" value="${orderProduct.p_index }">
						<input id="product_num" type="hidden" value="${orderProduct.sb_num }">
						<div class="opImg">
							상품 이미지
							<c:if test='${orderProduct.p_img != null }'>
								<img src="${orderProduct.p_img}">
							</c:if>
						</div>
						<div class="opName">
							${orderProduct.p_name }
						</div>
						<div class="opNum">
							${orderProduct.sb_num }<span>개</span>
						</div>			
						<div class="opPrice">
							${orderProduct.p_price }<span>원</span>
						</div>			
						<div class="opFee">
							${orderProduct.p_fee }<span>원</span>
						</div>	
						<div class="opLastAmount">
							${(orderProduct.p_price * orderProduct.sb_num) + orderProduct.p_fee}<span>원</span>
							<c:set var="TotalAmount" value="${TotalAmount = TotalAmount + ((orderProduct.p_price * orderProduct.sb_num) + orderProduct.p_fee)}"></c:set>
						</div>	
						<c:set var="i" value="${i = i + 1 }"></c:set>	
					</c:forEach>
				</div>
			</div>
		</div>	
		<div class="opTotalAmount">
			<div class="opNoneBlock"></div>
			<div class="opPayTitle">결제금액</div>
			<div class="opPayPrice" id="opPayPrice"><c:out value="${TotalAmount }"></c:out><span>원</span></div>
		</div>
		<div class="shippingAddress_info" style="margin-top: 50px">
			<h3>배송지 정보</h3>
		</div>	
		<div class="opTable">	
			<div class="shippingAdress_input" style="padding: 10px 5px;">						
				수령인
					<input type="text" name="" width="100px"><br>
				구매자 연락처
					<input type="text" name="" width="100px"><br>
				배송 메모	
					<textarea name="" style="height:100px; width:300px;"></textarea><br>					
			</div>					
		</div>
		<div class="paymentMethod_info" style="margin-top: 50px">
			<h3>결제수단</h3>
		</div>
		
		<div class="opTable">
			<div class="paymentCard" style="display: inline-block; width: 30%;">
				<label><input type="radio" name="paymentMethod" value="card">카드결제</label><br>
					<select name="">
						<option value=""></option>
						<option value=""></option>
						<option value=""></option>						
					</select>
			</div>
			<div class="paymentAccount" style="display: inline-block; width: 30%;">
				<label><input type="radio" name="paymentMethod" value="account">무통장 입금</label><br>
					<select name="">
						<option value=""></option>			
					</select>
			</div>
			<div class="paymentPhone" style="display: inline-block; width: 30%;">
				<label><input type="radio" name="paymentMethod" value="phone">휴대폰 결제</label><br>
					<select name="">
						<option value=""></option>			
					</select>
			</div>
		</div>	
		<div class="opTable" style="border: none;">
			<div class="order_btn">
				<input type="button" value="결제하기" onclick="orderCheck()">
			</div>
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
    
    var sb_index = [];
    
    var hiddenBox = document.getElementsByName("basket_id");
	for(var i = 0; i < hiddenBox.length; i++) {
		sb_index[i] = hiddenBox[i].value;
	}

	if(sb_index != 0){
		jQuery.ajaxSettings.traditional = true;
	
		$.ajax({
	           data : {
	        	   sb_index : sb_index
	           }, 
	           url : "orderProductPro",
	           success : function(data) {
				    open(url,"결제 완료 페이지","top="+top+", left="+left+", height="+windowH+", width="+windowW);
	           },
	           error : function(err){
	           		console.log(err.status);
	           		alert("잠시 후에 다시 시도해주세요.");
	           }
	    });			
	} else {
		
		var p_index = document.getElementById("product_index").value;
		var sb_num = document.getElementById("product_num").value;
		
		$.ajax({
	           data : {
	        	   p_index : p_index,
	        	   new_num : sb_num
	           }, 
	           url : "immedOrderProductPro",
	           success : function(data) {
				    open(url,"결제 완료 페이지","top="+top+", left="+left+", height="+windowH+", width="+windowW);
	           },
	           error : function(err){
	           		console.log(err.status);
	           		alert("잠시 후에 다시 시도해주세요.");
	           }
	    });
	}
}
</script>
</html>