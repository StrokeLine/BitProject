<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
.consumerContractList{margin-top:50px; margin-right:200px;}
.contractTable{margin-right:50px;}
.tableHeader{width:100%;}
.col1{float:left; width:15%; margin-right:1%;}
.col2{display:inline-block; width:46%; margin-right:1%;}
.col3{display:inline-block; width:10%; margin-right:1%;}
.col4{display:inline-block; width:10%; margin-right:1%;}
.col5{display:inline-block; width:10%;}
.tableRow{width:100%;}
.contractDate{float:left; width:15%; margin-right:1%;}
.productImg{display:inline-block; width:30%; margin-right:1%;}
.productName{display:inline-block; width:15%; margin-right:1%;}
.ProductPrice{display:inline-block; width:10%; margin-right:1%;}
.shippingFee{display:inline-block; width:10%; margin-right:1%;}
.contractState{display:inline-block; width:10%;}

</style>

<div class="consumerContractList">
	<div class="contractTable">
		<div class="tableHeader">
			<div class="col1"><h5>주문일자</h5></div>
			<div class="col2"><h5>상품정보</h5></div>
			<div class="col3"><h5>금액</h5></div>
			<div class="col4"><h5>배송비</h5></div>
			<div class="col5"><h5>주문상태</h5></div>
		</div>
		<%-- 
		<c:forEach var="" items="">
		 --%>
		<div class="tableRow">
			<div class="contractDate">주문일자</div>
			<div class="productImg">이미지</div>
			<div class="productName">상품명</div>
			<div class="ProductPrice">금액</div>
			<div class="shippingFee">배송비</div>
			<div class="contractState"><input type="button" value="주문취소" onclick=""></div>
		</div>
		<%-- 
		</c:forEach>
		 --%>
	</div>
</div>
