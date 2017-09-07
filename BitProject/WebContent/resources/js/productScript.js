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