<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>Hand Made - Pet Product</title>
	
	<!-- Bootstrap core JavaScript -->
	<script src="/jquery/jquery.min.js"></script>
	<script src="/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Bootstrap core CSS -->
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom fonts for this template -->
	<link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	<!-- Custom styles for this template -->
	<link rel="stylesheet" href="/css/main.css" />
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	
	<!-- Scripts -->
	<script src="/js/skel.min.js"></script>
	<script src="/js/util.js"></script>
	<script src="/js/main.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
.pbNoneBlock{display:inline-block; width: 68%;}
.pbNoneRow{margin: 5% 38%;}
.remove_btn{float:right; margin-top: 1%;}
.basket_btn{float:left;  margin-top: 1%;}
.prod_num{width: 35px; text-align: center;}

.productBasket{
	margin:50px 100px 0 100px;
	width: 37.5em;
}

table th{
	text-align: center;
}

table td{
	text-align: center;
	vertical-align: middle;
}

table{
	font-size: 0.7em;
}

input[type="text"], input[type="password"], input[type="email"], select{
	height: 1.5em;
}

input[type="text"], input[type="password"], input[type="email"], input[type="tel"], select, textarea {
	width: 1.5em;
    margin-left: auto;
   	margin-right: auto;
}

</style>
<script type="text/javascript">

	function selectOrder(){
		var selectList = [];
		
		var allchdBox = document.getElementsByName("checkRow");
		var c = 0;
		for(var i = 0; i < allchdBox.length; i++) {
			if(allchdBox[i].checked){
				c += 1;
				selectList[i] = allchdBox[i].value;
			}
		}
		
		if(c == 0) {
			alert("1개 이상의 상품을 선택하셔야 합니다.");
			return false;
		}
		
		var form = document.createElement("form");
		form.setAttribute("methed", "post");
		form.setAttribute("action", "orderPageMain");
		form.setAttribute("target", "_parent");
		document.body.appendChild(form);
		
		for(var i = 0; i < allchdBox.length; i++) {
			if(allchdBox[i].checked){
				var input_tag = document.createElement("input");
				input_tag.setAttribute("type", "hidden");
				input_tag.setAttribute("name", "selectList");
				input_tag.setAttribute("value", allchdBox[i].value);
				form.appendChild(input_tag);
			}
		}
		
		form.submit();
	}
	
	function updateNum(tag_num){
		var sb_num = document.getElementById(tag_num).value;
		var sb_index = tag_num.split("_")[1];
		
		$.ajax({
	           data : {
	        	   sb_index : sb_index,
	        	   sb_num	: sb_num
	           }, 
	           url : "updateBasketNum",
	           success : function(data) {
					if(data == 1){
						location.href="productBasket";
					}
	           },
	           error : function(err){
	           		console.log(err.status);
	           		alert("잠시 후에 다시 시도해주세요.");
	           }
	    });

	}

	function deleteBasket() {
		var allchdBox = document.getElementsByName("checkRow");
		
		var c = 0;
		for(var i = 0; i < allchdBox.length; i++) {
			if(allchdBox[i].checked){
				c += 1;
			}
		}
		
		if(c == 0) {
			alert("1개 이상의 상품을 선택하셔야 합니다.");
			return false;
		}
		
		var check = confirm("선택한 상품을 삭제하시겠습니까?");
		
		var j = 0;
		if(check) {
			for(var i = 0; i < allchdBox.length; i++) {
				if(allchdBox[i].checked){
					var boxId = document.getElementById("product"+i);
					var sb_index = boxId.value;
					$.ajax({
				           data : {
				        	   sb_index : sb_index
				           }, 
				           url : "deleteShoppingBasket",
				           success : function(data) {
				        	    j += 1;
				        	    if(c == j){
									if(data == 1){
										alert("선택한 상품이 삭제 되었습니다.");
										location.href="productBasket";
									}				        	    	
				        	    }
				           },
				           error : function(err){
				           		console.log(err.status);
				           		alert("잠시 후에 다시 시도해주세요.");
				           }
				    });	
				}
			}
		}		
	}
	
	function totalAmount(){
		var others = document.getElementsByName("checkRow");
		var total_tag = document.getElementById("pbPayPrice");
		var total = 0;
		
		var c = 0;
		var j = 0;
		for(var i = 0; i < others.length; i++) {
			if(others[i].checked){
				j += 1;
				var boxId = document.getElementById("product"+i);
				var sb_index = boxId.value;
				$.ajax({
			           data : {
			        	   sb_index : sb_index
			           }, 
			           url : "getPrice",
			           success : function(data) {
			        		total += ((data.p_price * data.sb_num) + data.p_fee);
			        		c += 1;
			        		if(j == c) {
			        			total_tag.innerHTML = total.toLocaleString() + "원";
			        		}
			           },
			           error : function(err){
			           		console.log(err.status);
			           		alert("잠시 후에 다시 시도해주세요.");
			           }
			    });
			} else {
				total_tag.innerHTML = "<span>원</span>";
			}
		}
		
	}

	function allCheck() {
		var allchd = document.getElementById("checkAll");
		var others = document.getElementsByName("checkRow");
		
		if(allchd.checked){
			for(var i = 0; i < others.length; i++) {
				others[i].checked = true;
			}
			totalAmount();
		} else {
			for(var i = 0; i < others.length; i++) {
				others[i].checked = false;
			}
			totalAmount();
		}	
	}

	window.onload = function(){
		var allchd = document.getElementById("checkAll");
		var others = document.getElementsByName("checkRow");
		
		if(others.length != 0) {
			allchd.checked = true;
			for(var i = 0; i < others.length; i++) {
				others[i].checked = true;
			}
			totalAmount();			
		}
	}
</script>
</head>
<body>	
	<div class="productBasket">
		<h2>장바구니</h2>
		<table class="table-wrapper">
			<thead>
				<tr>
					<th style="width: 4em;">
						<input id="checkAll" type="checkbox" name="checkAll" onclick="allCheck()">
						<label for="checkAll"></label>
					</th>
					<th colspan="2">상품명</th>
					<th>수량</th>
					<th>금액</th>
					<th style="width: 80px;">배송료</th>
					<th>최종금액</th>
				</tr>
			</thead>
			<tbody>
				<c:if test='${shopping_basket_list == ""}'>
					<tr>
						<td colspan="7">
							<div class="pbNoneRow">등록 된 정보가 없습니다.</div>						
						</td>
					</tr>
				</c:if>
				<c:set var="i" value="${0 }"></c:set>
				<c:forEach items="${ shopping_basket_list}" var="basket_list">
					<tr>
						<td>
							<input id="product${i}" type="checkbox" name="checkRow" value="${basket_list.sb_index }" onclick="totalAmount()">
							<label for="product${i}"></label>					
						</td>
						<td>
							<c:if test='${basket_list.p_img != null }'>
								<img src="downloadProductImg?p_index=${basket_list.p_index}">
							</c:if>							
						</td>
						<td>
							${basket_list.p_name }
						</td>
						<td style="width: 1px;">
							<input class="prod_num" id="prodNum_${basket_list.sb_index }" type="text" value="${basket_list.sb_num }" maxlength="2">
							<input class="button special small" type="button" value="변경" onclick='updateNum("prodNum_${basket_list.sb_index }")' style="margin-top: 5px;">
						</td>
						<td>
							<fmt:formatNumber value="${basket_list.p_price }" pattern="###,###,###,###원"></fmt:formatNumber> 	
						</td>
						<td>
							<fmt:formatNumber value="${basket_list.p_fee }" pattern="###,###,###,###원"></fmt:formatNumber>
						</td>
						<td>
							<fmt:formatNumber value="${(basket_list.p_price * basket_list.sb_num) + basket_list.p_fee}" pattern="###,###,###,###원"></fmt:formatNumber>
						</td>
					</tr>	
					<c:set var="TotalAmount" value="${TotalAmount = TotalAmount + ((basket_list.p_price * basket_list.sb_num) + basket_list.p_fee)}"></c:set>
					<c:set var="i" value="${i = i + 1 }"></c:set>	
				</c:forEach>
			</tbody>
			<thead>
				<tr>
					<th colspan="6" style="text-align: right;">
						결제금액
					</th>
					<th style="text-align: right;">
						<div class="pbPayPrice" id="pbPayPrice"></div>
					</th>
				</tr>
			</thead>
		</table>


			<div class="remove_btn">
				<input class="special" type="button" value="삭제" onclick="deleteBasket()">
			</div>
			<div class="basket_btn">
				<input class="special" type="button" value="선택한 상품 주문하기" onclick="selectOrder()">	
			</div>			
		</div>	
</body>
</html>
