<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>찜한 상품</title>
</head>
<body>	
	<div class="productDibs_Page" style="margin-left: 400px;">
		<div class="deleteDibs_btn">
			<input type="button" value="삭제">
		</div>
		
		<div class="dibs_items">
			<div class="item1" style="width:2%; display: inline-block;" >
				<input type="checkbox" name="checkAll" value="">
			</div>
			<div class="item2" style="width:15%; display: inline-block;">
				<h4>상품 이미지</h4>
			</div>
			<div class="item3" style="width:15%; display: inline-block;">
				<h4>상품명</h4>
			</div>
			<div class="item4" style="width:10%; display: inline-block;">
				<h4>금액</h4>
			</div>			
			<div class="item5" style="width:10%; display: inline-block;">
				<h4>배송료</h4>
			</div>		
		</div>
		<div class="dibs_list">
			<%-- <c:forEach items="" var="">
				<div class="checkbox" style="width:2%; display: inline-block;" >
					<input type="checkbox" name="checkRow" value="">
				</div>
				<div class="productImg" style="width:15%; display: inline-block;">
					상품 이미지
				</div>
				<div class="productName" style="width:15%; display: inline-block;">
					상품명
				</div>
				<div class="productPrice" style="width:10%; display: inline-block;">
					금액
				</div>			
				<div class="shippingFee" style="width:10%; display: inline-block;">
					배송료
				</div>					
			</c:forEach>		 --%>
		</div>
		<div class="basket_btn" style="margin-top: 5%; margin-left: 350px;">
				<input type="button" value="장바구니로 이동">	
		</div>			
	</div>	
</body>
</html>