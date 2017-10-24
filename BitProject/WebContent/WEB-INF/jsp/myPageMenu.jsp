<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	
	<h1>My Page</h1>
	<h3><a href="memberInfo" target="myPageContent">내 정보</a></h3>
		<c:if test='${s_index == ""}'>
			<div id="sellerRegForm"><h3><a href="sellerRegForm" target="myPageContent">판매자 등록</a></h3></div>		
		</c:if>
	<div id="sellerMyMain"><h3><a href="sellerMyMain" target="_parent">내 상점</a></h3></div>
	<h3><a href="followingNotiMain" target="myPageContent">관심스토어 알림</a></h3>
	<h3><a href="productFavorite" target="myPageContent">찜한 상품</a></h3>
	<h3><a href="productBasket" target="myPageContent">장바구니</a></h3>
	<h3><a href="consumerContractList" target="myPageContent">주문/배송</a></h3>
	<h3><a href="qAndAMain" target="myPageContent">문의사항</a></h3>
	<h3><a href="customerCenterInquiry" target="myPageContent">고객센터</a></h3>
	<h3><a href="deleteMember" target="myPageContent">탈퇴하기</a></h3>


</html>