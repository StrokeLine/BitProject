<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="seller_my_page_main" style="margin: 0px 200px 0px 200px;">
		<div class="seller_my_page_left" style="width: 20%; float: left;">
			<div class="seller_my_page_menu">
				<h3><a href="sellerMyPage.do?method=sellerMyStore">상점정보</a></h3>
				<h3><a href="sellerMyPage.do?method=customerNotice">공지사항</a></h3>
				<h3>상품관리</h3>
				<h4><a href="sellerMyPage.do?method=productReg">등록</a></h4>
				<h4><a href="sellerMyPage.do?method=customerProduct">수정/삭제</a></h4>
				<h3>주문/배송 관리</h3>
				<h4>주문/배송</h4>
				<h4>반품(환불)</h4>
				<h4>교환</h4>
				<h3>문의관리</h3>
				<h4><a href="sellerMyPage.do?method=customerProductInquiry">상품문의</a></h4>
				<h4><a href="sellerMyPage.do?method=customerStoreInquiry">상점문의</a></h4>
			</div>
		</div>
		<div class="seller_my_content" style="width: 79%; float: left;">
			<jsp:include page="${param.method}.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>