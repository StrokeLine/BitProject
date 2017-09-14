<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
/**
 * 상품페이지
 */

// 찜 확인 페이지
function dibsCheck() {
	var url = "dibsCheck.do";
	var windowW = 200;  // 창의 가로 길이
    var windowH = 150;  // 창의 세로 길이
    var left = (window.screen.width - windowW)/2;
    var top = (window.screen.height - windowH)/3;
    open(url,"찜 확인 페이지","top="+top+", left="+left+", height="+windowH+", width="+windowW);
}

// 장바구니 확인 페이지
function shoppingBasketCheck() {
	var url = "shoppingBasketCheck.do";
	var windowW = 200;  // 창의 가로 길이
    var windowH = 150;  // 창의 세로 길이
    var left = (window.screen.width - windowW)/2;
    var top = (window.screen.height - windowH)/3;
    open(url,"찜 확인 페이지","top="+top+", left="+left+", height="+windowH+", width="+windowW);
}

//문의사항 작성 및 추가
function insertGrade() {
	var gradeList =	document.getElementById("grade_list");
	var date = new Date();
	
	var gradeNum = document.getElementById("g_grade_num").value;
	var img_src = document.getElementById("g_img_src").value;
	var content = document.getElementById("g_content").value;
	var user_id = document.getElementById("g_user_id").value;
	
	var h5Tag = document.createElement("h5");
	
	h5Tag.innerHTML = "<div>"
				+		"<h5>" + gradeNum + "   |   "
				+		img_src + "   |   "
				+		content + "   |   "
				+		user_id + "   |   "
				+		date.getFullYear() + "/" + (date.getMonth() + 1) + "/" + date.getDate() + "   |   "
				+		"</h5>"
				+	"</div>";
	
	gradeList.appendChild(h5Tag);
	
	
	return;
}

// 문의사항 작성 및 추가
function insertInquiry() {
	var inquiryList = document.getElementById("inquiry_list");
	var date = new Date();
	
	var select = document.getElementById("i_type");
	var type = select.options[select.selectedIndex].value;
	var classify = document.getElementById("i_classify").value;
	var user_id = document.getElementById("i_user_id").value;
	
	var h5Tag = document.createElement("h5");
	
	h5Tag.innerHTML = "<div>"
					+		"<h5>" + type + "   |   "
					+		classify + "   |   "
					+		user_id + "   |   "
					+		date.getFullYear() + "/" + (date.getMonth() + 1) + "/" + date.getDate() + "   |   "
					+		"</h5>"
					+	"</div>";
	
	inquiryList.appendChild(h5Tag);
	
	return;
}
</script>
</head>
<body>
	<div class="productPage_Main" style="margin: 0px 200px 0px 200px;">
		<div class="product_top">
			<div class="product_img" style="width: 49%; display: inline-block;">
				<h3>이미지 영역</h3>
			</div>
			<div class="productInfo" style="width: 49%; display: inline-block;">
				<div class="product_name">
					<h3>상품명</h3>
				</div>
				<div class="product_price">
					<h3>상품가격</h3>
				</div>
				<div class="product_option">
					<h3>옵션</h3>
				</div>
				<div class="product_num">
					<input type="button" value="-">
					<input type="text" style="width: 25px;" value="1">
					<input type="button" value="+">
				</div>
				<div class="product_fee">
					<ul style="padding: 0px 0px 0px 0px; list-style-type: none;">
						<li><em style="font-style: normal;">배송비</em></li>
						<li><em style="font-style: normal;">배송비 결제 : </em> 주문시 결제</li>
					</ul>
				</div>
				<div class="product_total">
					<div class="label_total" style="width: 50%; float: left;">총 상품금액</div>
					<div class="label_price" style="width: 50%; float: left;">2500<span>원</span></div>
				</div>
				<div class="product_btn_other">
					<input type="button" value="찜" onclick="dibsCheck()">
					<input type="button" value="장바구니" onclick="shoppingBasketCheck()">
					<input type="button" value="주문하기" onclick="productClick('orderProduct')">
				</div>
			</div>
		</div>
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
</body>


</html>