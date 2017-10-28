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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<jsp:include page="setting.jsp" />
</head>

<style type="text/css">
	body{
		margin: 0px;
		background-color: inherit;
	}
	.productPage_Main{		
		height: 100%;
		color: #5d5d5d;
		background: #f2f2f2;
		padding: 26px;
		border-radius: 10px;
		-moz-border-radius: 10px;
		-webkit-border-radius: 10px;
	}
	.product_top{
		width: 100%;
		padding: 7px;	
		display: inline-block;		
	}
	.product_img{		
		width: 40%;
		height: 350px;
		float: left;
		border: solid;
		display: inline-block;	
	}
	.product_info_wrap{
		width: 50%;
		height: 550px;
		float: right;
		margin-left: 60px;
		display: inline-block;
	}	
	.product_info{
		float:right;	
		height: 350px;		
		display: inline-block;	
	}	
	.left{	
		float: left;
		width: 40%;
	}
	.right{
		float: right;
		width: 50%;
	}
	.product_item{	
		width: 100%;	
		height: 50px;
		padding: 7px;	
		display: inline-block;	
	}
	.product_value{
		width: 100%;		
		height: 50px;
		padding: 7px;
		display: inline-block;
	}
	.product_btn{
		width: 100%;
		height: 200x;
		margin-top: 25px;
		display: inline-block;	
	}
	.btn{
		width: 30%;		
	}
	.hr_line{
		width: 90%;
		border-bottom: 1px solid #5d5d5d;
		margin-bottom: 15px; 
	}
	.product_middle{
		width: 800px;
		padding: 7px;		
	}
	.product_bottom{
		width: 800px;
		padding: 7px;
	}
	
</style>
<body>
	<div class="productPage_Main" >
		<div class="product_top">
			<form action="orderProductForm" method="post">						
				<div class="product_img">
					이미지 영역
				</div>
				<div class="product_info_wrap">							
					<div class="product_info">
						<div class="product_item" style="width: 80%; margin-top: 10px;">
							<h4>${product_info.p_name}</h4>
						</div>	
						<div class="hr_line"></div>				
						<div class="left">
							<div class="product_item">
								<h5>상품 금액</h5> 
							</div>
							<div class="product_item">
								<h5>옵션</h5>
							</div>
							<div class="product_item">
								<h5>수량</h5>
							</div>	
							<div class="product_item">
								<h5>배송비</h5>
							</div>
							<div class="product_item">
								<h5>총 합계금액</h5>
							</div>
						</div>
						<div class="right">
							<div class="product_value">
								 ${product_info.p_price} 원
							</div>						
							<div class="product_value">	
								<select name="">
									<option></option>
									<option></option>
								</select>
							</div>									
							<div class="product_value">					
								<input type="button" value="-">
								<input type="text" name="" style="width: 25px;" value="1">
								<input type="button" value="+">
							</div>							
							<div class="product_value">
								${product_info.p_fee} 원
								<%-- <ul style="padding: 0px 0px 0px 0px; list-style-type: none;">
									<li><em style="font-style: normal;">배송비 : ${product_info.p_fee} (주문시 결제)</em></li>						
								</ul> --%>
							</div>						
							<div class="product_value">
								<span>원</span>
							</div>	
						</div>									
					</div>		
					<div class="product_btn">
						<input type="button" class="btn btn-primary" value="찜" onclick="dibsCheck()">
						<input type="button" class="btn btn-primary" value="장바구니" onclick="shoppingBasketCheck()">
						<input type="submit" class="btn btn-primary" value="주문하기">
					</div>
				</div>
			</form>			
		</div>		
		<div class="product_middle">		
			<h4>상품 정보</h4>	
			<div>
				<a href="customerStore"><i class="fa fa-home"></i>해당상품의 상점 보러가기</a>
			</div>	
		</div>
		<div class="product_bottom">
			<div class="product_grade">
				<h4> 상품평</h4>								
				<div class="product_grade_item" id="grade_list">
					<span class="item_img">이미지</span>
					<span class="item_title">제  목</span>
					<span class="item_writer">작성자</span>
					<span class="item_regdate">등록일</span>
					<span class="item_grade">평  점</span>										
				</div>				
				<div class="product_grade_list">
					
				
				</div>
				
				<div class="product_grade_item" id="grade_list">
					<table>
						<thead>
						
						</thead>					
					</table>
				</div>		
				
				<!-- <div class="product_grade_add">
					<div class="grade_add_form">
						<input type="text" name="" id="g_grade_num">
						<input type="text" name="" id="g_title">
						<input type="text" name="" id="g_content">						
						<input type="file" name="" id="g_img_src">					
						<div class="product_grade_btn" style="float: right;">
							<input type="button" value="등록" onclick="insertGrade()">
						</div>
					</div>
				</div> -->
				
				
			</div>
			<div class="product_inquiry">
				<h4>상품 문의</h4>
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