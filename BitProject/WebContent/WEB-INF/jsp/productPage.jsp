<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Hand Made - Pet Product</title>

<!-- Bootstrap core CSS -->
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="/font-awesome/css/font-awesome.min.css"	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="/css/freelancer.min.css" rel="stylesheet">

<jsp:include page="setting.jsp" />
</head>
<body>
	<div class="productPage_Main" style="margin: 0px 200px 0px 200px;">
		<form action="orderProductForm" method="post">
			<div class="product_top">
				<div class="product_img" style="width: 49%; display: inline-block;">
					${product_info.p_imgSrc}
				</div>
				<div class="productInfo" style="width: 49%; display: inline-block;">
					<div class="product_name">
						<h3>${product_info.p_name}</h3>
					</div>
					<div class="product_price">
						상품 금액  ${product_info.p_price}
					</div>
					<div class="product_option">
						<h3>옵션</h3>
						<select>
							<option></option>
							<option></option>
						</select>
					</div>
					<div class="product_num">
						<input type="button" value="-">
						<input type="text" style="width: 25px;" value="1">
						<input type="button" value="+">
					</div>
					<div class="product_fee">
						<ul style="padding: 0px 0px 0px 0px; list-style-type: none;">
							<li><em style="font-style: normal;">배송비 : ${product_info.fee} (주문시 결제)</em></li>						
						</ul>
					</div>
					<div class="product_total">
						<div class="label_total" style="width: 50%; float: left;">총 합계금액</div>
						<div class="label_price" style="width: 50%; float: left;"><span>원</span></div>
					</div>
					<div class="product_btn_other">
						<input type="button" value="찜" onclick="dibsCheck()">
						<input type="button" value="장바구니" onclick="shoppingBasketCheck()">
						<input type="submit" value="주문하기">
					</div>
				</div>
			</div>
		</form>	
	<div class="product_middle">
			<center>
				<h3>상품 정보 영역</h3>
			</center>
		</div>
		<div class="product_bottom">
			<div class="product_grade">
				<h3> 상품평 or 후기</h3>
				<div class="product_grade_list_header">
					<h5>|    상품평    |    이미지    |    내용    |    아이디    |    작성일    |</h5>
				</div>
				<div class="product_grade_list" id="grade_list"></div>
				<div class="product_grade_add">
					<div class="grade_add_form">
						<input type="text" id="g_grade_num">
						<input type="file" id="g_img_src">
						<input type="text" id="g_content">
						<input type="text" id="g_user_id">
						<div class="product_grade_btn" style="float: right;">
							<input type="button" value="등록" onclick="insertGrade()">
						</div>
					</div>
				</div>
			</div>
			<div class="product_inquiry">
				<h3> 상품 문의</h3>
				<div class="product_inquiry_list_header">
					<h5>|    문의유형    |    문의/답변    |    작성자    |    작성일    |</h5>
				</div>
				<div class="product_inquiry_list" id="inquiry_list"></div>
				<div class="product_inquiry_add">
					<div class="inquiry_add_form">
						<select id="i_type">
							<option value="상품">상품</option>
							<option value="배송">배송</option>
							<option value="반품">반품</option>
							<option value="기타">기타</option>
						</select>
						<input type="text" id="i_classify">
						<input type="text" id="i_user_id">				
						<div class="product_inquiry_btn" style="float: right;">
							<input type="button" value="등록" onclick="insertInquiry()"> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		
	<!-- Bootstrap core JavaScript -->
	<script src="/jquery/jquery.min.js"></script>
	<script src="/popper/popper.min.js"></script>
	<script src="/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="/jquery-easing/jquery.easing.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="/js/jqBootstrapValidation.js"></script>
	<script src="/js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script src="/js/freelancer.min.js"></script>
	
</body>
</html>