<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="customerOrderDelivery_main">
		<div class="customerOrderDelivery_top">
		<div class="customerOrderDelivery_title">
			<h3>주문/배송</h3>
		</div>
		<div class="customerOrderDelivery_sort">
			<div class="customerOrderDelivery_sort_main" style="float: right;">
				<select>
					<option value="상품별">상품별</option>
					<option value="날짜별">날짜별</option>
					<option value="처리상태">처리상태</option>
				</select>
			</div>
		</div>
		<div class="customerOrderDelivery_middle">
			<div class="customerOrderDelivery_list" style="border: 1px solid black;">
				<div class="customerOrderDelivery_subTitle">
					<div class="customerOrderDelivery_image" style="width: 15%; display: inline-block;"><h4>이미지</h4></div>
					<div class="customerOrderDelivery_product_name" style="width: 15%; display: inline-block;"><h4>상품명</h4></div>
					<div class="customerOrderDelivery_user_id" style="width: 15%; display: inline-block;"><h4>구매자 아이디</h4></div>
					<div class="customerOrderDelivery_deposit_state" style="width: 15%; display: inline-block;"><h4>입금상태</h4></div>
					<div class="customerOrderDelivery_handling_state" style="width: 15%; display: inline-block;"><h4>처리상태</h4></div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>