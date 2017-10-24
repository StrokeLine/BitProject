<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>찜한 상품</title>
<style>
.pfTable{width:800px; border-style:solid none solid none;}
.pfHeader{width:800px; text-align:center; border-bottom:solid 1px;}
.pfCheckHeader{float:left; height:25px; margin-right:1px; padding-top: 3%;}
.pfImgHeader{float:left; width:17%; height:50px; margin-right:1px;}
.pfNameHeader{display:inline-block; width:35%; height:50px; margin-right:1px;}
.pfPriceHeader{display:inline-block; width:17%; height:50px; margin-right:1px;}
.pfFeeHeader{display:inline-block; width:17%; height:50px; margin-right:1px;}
.pfRegDateHeader{display:inline-block; width:17%; height:50px; margin-right:1px;}
.pfRows{width:800px;}
.pfCheck{float:left; height:30px; margin-right:1px; margin-top: 1px;}
.pfImg{display:inline-block; width:17%; height:30px; margin-right:1px; margin-top: 1px; text-align: center;}
.pfName{display:inline-block; width:35%; height:30px; margin-right:1px; margin-top: 1px; text-align: center;}
.pfPrice{display:inline-block; width:17%; height:30px; margin-right:1px; margin-top: 1px; text-align: center;}
.pfFee{display:inline-block; width:17%; height:30px; margin-right:1px; margin-top: 1px; text-align: center;}
.pfRegDate{display:inline-block; width:17%; height:30px; margin-right:1px; margin-top: 1px; text-align: center;}
.pfNoneRow{margin: 5% 39%;}
.remove_btn{float:right; margin-top: 1%;}
.basket_btn{float:left;  margin-top: 1%;}
</style>

<script type="text/javascript">
	function setAllCheck(){
		
	}
</script>
</head>
<body>	
	<h2>찜한 상품</h2>
	<div class="pfTable">

		<div class="pfHeader">
			<div class="pfCheckHeader">
				<input type="checkbox" name="checkAll" onclick="setAllCheck()">
			</div>
			<div class="pfImgHeader">
				<h4>상품 이미지</h4>
			</div>
			<div class="pfNameHeader">
				<h4>상품명</h4>
			</div>
			<div class="pfPriceHeader">
				<h4>금액</h4>
			</div>			
			<div class="pfFeeHeader">
				<h4>배송료</h4>
			</div>		
		</div>
		<div class="favorite_list">
			<c:if test='${product_favorite_list == ""}'>
				<div>등록 된 정보가 없습니다.</div>
			</c:if>
			<c:set var="i" value="${0 }"></c:set>
			<c:forEach items="${product_favorite_list }" var="favorite_list">
				<div class="pfInfo">
					<div class="pfCheck" >
						<input id="product${i}" type="checkbox" name="checkRow" value="${favorite_list.p_index }">
					</div>
					<div class="pfImg" >
						상품 이미지
						<c:if test='${favorite_list.p_img != null }'>
							<img src="favorite_list.p_img">
						</c:if>
					</div>
					<div class="pfName">
						${favorite_list.p_name }
					</div>
					<div class="pfPrice">
						${favorite_list.p_price }
					</div>			
					<div class="pfFee">
						${favorite_list.p_fee }
					</div>
					<c:set var="i" value="${i = i + 1 }"></c:set>
				</div>				
			</c:forEach>
		</div>
		<div class="remove_btn">
			<input type="button" value="선택 상품 삭제" onclick=>
		</div>		
		<div class="basket_btn">
			<input type="button" value="선택 상품 장바구니로 이동">	
		</div>			
	</div>	
</body>
</html>