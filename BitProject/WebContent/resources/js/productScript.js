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