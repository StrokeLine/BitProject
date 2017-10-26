<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>
<style>
.pbTable{width:800px; border-style:solid none solid none;}
.pbHeader{width:800px; text-align:center; border-bottom:solid 1px;}
.pbCheckHeader{float:left; height:25px; margin-right:1px; padding-top: 3%;}
.pbImgHeader{float:left; width:12%; height:50px; margin-right:1px;}
.pbNameHeader{display:inline-block; width:35%; height:50px; margin-right:1px;}
.pbNumHeader{display:inline-block; width:8%; height:50px; margin-right:1px;}
.pbPriceHeader{display:inline-block; width:12%; height:50px; margin-right:1px;}
.pbFeeHeader{display:inline-block; width:12%; height:50px; margin-right:1px;}
.pbLastAmountHeader{display:inline-block; width:12%; height:50px; margin-right:1px;}
.pbRows{width:800px;}
.pbCheck{float:left; height:30px; margin-right:1px; margin-top: 1px;}
.pbImg{display:inline-block; width:12%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.pbName{display:inline-block; width:35%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.pbNum{display:inline-block; width:8%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.pbPrice{display:inline-block; width:12%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.pbFee{display:inline-block; width:12%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.pbLastAmount{display:inline-block; width:12%; height:60px; margin-right:1px; margin-top: 1px; text-align: center;}
.pbTotalAmount{ width: 100%; border-top:solid 3px;}
.pbPayTitle{display:inline-block; width: 10%;}
.pbPayPrice{display:inline-block; width: 20%; text-align: right;}
.pbNoneBlock{display:inline-block; width: 68%;}
.pbNoneRow{margin: 5% 38%;}
.remove_btn{float:right; margin-top: 1%;}
.basket_btn{float:left;  margin-top: 1%;}
.prod_num{width: 35px; text-align: center;}
.changeBtn{margin-top: 5px;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">

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
			        		total += (data.p_price + data.p_fee);
			        		c += 1;
			        		if(j == c) {
			        			total_tag.innerHTML = total + "<span>원</span>";
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
		
		allchd.checked = true;
		for(var i = 0; i < others.length; i++) {
			others[i].checked = true;
		}
		totalAmount();
	}
</script>
</head>
<body>	
	<h2>장바구니</h2>
	<div class="pbTable">
		
		<div class="pbHeader">
			<div class="pbCheckHeader">
				<input id="checkAll" type="checkbox" name="checkAll" onclick="allCheck()">
			</div>
			<div class="pbImgHeader">
				<h4>상품 이미지</h4>
			</div>
			<div class="pbNameHeader">
				<h4>상품명</h4>
			</div>
			<div class="pbNumHeader">
				<h4>수량</h4>
			</div>			
			<div class="pbPriceHeader">
				<h4>금액</h4>
			</div>			
			<div class="pbFeeHeader">
				<h4>배송료</h4>
			</div>	
			<div class="pbLastAmountHeader">
				<h4>최종금액</h4>
			</div>
		</div>
		<c:set var="TotalAmount" value="${0}"></c:set>
		<div class="basket_list">
			<c:if test='${shopping_basket_list == ""}'>
				<div class="pbNoneRow">등록 된 정보가 없습니다.</div>
			</c:if>
			<c:set var="i" value="${0 }"></c:set>
			<c:forEach items="${ shopping_basket_list}" var="basket_list">
				<div class="pbCheck">
					<input id="product${i}" type="checkbox" name="checkRow" value="${basket_list.sb_index }" onclick="totalAmount()">
				</div>
				<div class="pbImg">
					상품 이미지
					<c:if test='${basket_list.p_img != null }'>
						<img src="${basket_list.p_img}">
					</c:if>
				</div>
				<div class="pbName">
					${basket_list.p_name }
				</div>
				<div class="pbNum">
					<input class="prod_num" id="prodNum_${basket_list.sb_index }" type="text" value="${basket_list.sb_num }">
					<input class="changeBtn" type="button" value="변경" onclick='updateNum("prodNum_${basket_list.sb_index }")'>
				</div>			
				<div class="pbPrice">
					${basket_list.p_price } 
				</div>			
				<div class="pbFee">
					${basket_list.p_fee }
				</div>	
				<div class="pbLastAmount">
					${(basket_list.p_price * basket_list.sb_num) + basket_list.p_fee}
					<c:set var="TotalAmount" value="${TotalAmount = TotalAmount + ((basket_list.p_price * basket_list.sb_num) + basket_list.p_fee)}"></c:set>
				</div>	
				<c:set var="i" value="${i = i + 1 }"></c:set>	
			</c:forEach>
		</div>
		<div class="pbTotalAmount">
			<div class="pbNoneBlock"></div>
			<div class="pbPayTitle">결제금액</div>
			<div class="pbPayPrice" id="pbPayPrice"><span>원</span></div>
		</div>
		<div class="remove_btn">
			<input type="button" value="삭제" onclick="deleteBasket()">
		</div>
		<div class="basket_btn">
			<input type="button" value="주문하기">	
		</div>			
	</div>		
</body>
</html>
