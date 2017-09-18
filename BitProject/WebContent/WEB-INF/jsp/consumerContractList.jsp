<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<style>
.consumerContractList{margin-top:50px; margin-right:100px; margin-left:100px;}
.contractTable{width:700px; border-style:solid none solid none; border-width:3px 0 3px 0;}
.tableHeader{width:700px; height:50px; border-bottom:solid 1px; text-align:center;}
.col1{float:left; width:15%; margin-right:1%; height:20px;}
.col2{display:inline-block; width:46%; margin-right:1%; height:20px;}
.col3{display:inline-block; width:10%; margin-right:1%; height:20px;}
.col4{display:inline-block; width:10%; margin-right:1%; height:20px;}
.col5{display:inline-block; width:10%; height:20px;}
.tableRow{width:100%; height:100px; border-style: none none solid none; }
.contractDate{float:left; width:15%; margin-right:1%; height:20px;}
.productImg{display:inline-block; width:30%; margin-right:1%; height:20px;}
.productName{display:inline-block; width:15%; margin-right:1%; height:20px;}
.ProductPrice{display:inline-block; width:10%; margin-right:1%; height:20px;}
.shippingFee{display:inline-block; width:10%; margin-right:1%; height:20px;}
.contractState{display:inline-block; width:10%; height:20px;}

</style>

<div class="consumerContractList">
<h2>주문/배송정보</h2>
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
			<div class="contractState"><input type="button" value="주문취소" onclick="cancelContract()"></div>
		</div>
		<%-- 
		</c:forEach>
		 --%>
	</div>
</div>

<script type="text/javascript">
	function cancelContract() {
		
	}
</script>
</html>