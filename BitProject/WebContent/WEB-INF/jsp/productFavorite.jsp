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
.pfNoneRow{margin: 5% 33%;}
.remove_btn{float:right; margin-top: 1%;}
.basket_btn{float:left;  margin-top: 1%;}

.productFavoriteMain{
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
	font-size: 0.8em;
}

</style>
<script type="text/javascript">

	function allCheck() {
		var allchd = document.getElementById("checkAll");
		var others = document.getElementsByName("checkRow");
		
		if(allchd.checked){
			for(var i = 0; i < others.length; i++) {
				others[i].checked = true;
			}
		} else {
			for(var i = 0; i < others.length; i++) {
				others[i].checked = false;
			}
		}	
	}
	
	function deleteFavorite() {
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
		
		if(check) {
			for(var i = 0; i < allchdBox.length; i++) {
				if(allchdBox[i].checked){
					var boxId = document.getElementById("product"+i);
					var pf_index = boxId.value;
					$.ajax({
				           data : {
				        	   pf_index : pf_index
				           }, 
				           url : "deleteFavorite",
				           success : function(data) {
								if(data == 1){
									alert("선택한 상품이 삭제 되었습니다.");
									location.href="productFavorite";
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
	
	function moveOnBasket(){
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
		
		var check = confirm("선택한 상품을 장바구니에 담으시겠습니까?");
		var j = 0;
		if(check) {
			for(var i = 0; i < allchdBox.length; i++) {
				if(allchdBox[i].checked){
					var boxId = document.getElementById("product"+i);
					var pf_index = boxId.value;
					$.ajax({
				           data : {
				        	   pf_index : pf_index
				           }, 
				           url : "moveOnBasket",
				           success : function(data) {
							   j += 1;
				        	   if(c == j){
									if(data == 1){
										if(confirm("선택한 상품이 장바구니에 담겼습니다. \n장바구니로 이동하시겠습니까?")){
											location.href="productBasket";
										}
									}				        		   
				        	   }
				           },
				           error : function(err){
				           		console.log(err.status);
				           }
				    });	
				}
			}
		}
	}
</script>
</head>
<body>
	<div class="productFavoriteMain">
		<h2>찜한 상품</h2>
		<table class="table-wrapper">
			<thead>
				<tr>
					<th style="width: 4em;">
						<input id="checkAll" type="checkbox" name="checkAll" onclick="allCheck()">
						<label for="checkAll"></label>
					</th>
					<th colspan="2">상품명</th>
					<th>금액</th>
					<th>배송료</th>
				</tr>
			</thead>
			<tbody>
				<c:if test='${product_favorite_list == ""}'>
					<tr>
						<td colspan="5">
							<div class="pfNoneRow">등록 된 정보가 없습니다.</div>			
						</td>
					</tr>
				</c:if>
				<c:set var="i" value="${0 }"></c:set>
				<c:forEach items="${product_favorite_list }" var="favorite_list">
					<tr>
						<td>
							<input id="product${i}" type="checkbox" name="checkRow" value="${favorite_list.pf_index }">
							<label for="product${i}"></label>
						</td>
						<td>
							<c:if test='${favorite_list.p_img != null }'>
								<img src="downloadProductImg?p_index=${favorite_list.p_index}">
							</c:if>
						</td>
						<td>
							${favorite_list.p_name }
						</td>
						<td><fmt:formatNumber value="${favorite_list.p_price }" pattern="###,###,###,###원"></fmt:formatNumber></td>
						<td><fmt:formatNumber value="${favorite_list.p_fee }" pattern="###,###,###,###원"></fmt:formatNumber></td>
					</tr>				
					<c:set var="i" value="${i = i + 1 }"></c:set>
				</c:forEach>
			</tbody>
		</table>

		<div class="pfTable">
			<div class="remove_btn">
				<input class="button special small" type="button" value="선택 상품 삭제" onclick="deleteFavorite()">
			</div>		
			<div class="basket_btn">
				<input class="button special small" type="button" value="선택 상품 장바구니로 이동" onclick="moveOnBasket()">	
			</div>			
		</div>	
	</div>
</body>
</html>