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
.tableRow{width:100%; height:100px; border-bottom:solid 1px; }
.contractDate{float:left; width:15%; margin-right:1%; height:20px;}
.productImg{display:inline-block; width:30%; margin-right:1%; height:20px;}
.productName{display:inline-block; width:15%; margin-right:1%; height:20px;}
.ProductPrice{display:inline-block; width:10%; margin-right:1%; height:20px;}
.shippingFee{display:inline-block; width:10%; margin-right:1%; height:20px;}
.contractState{display:inline-block; width:10%; height:20px;}
.NoneRow{margin: 5% 37%;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

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
		
		<c:if test='${order_statement_list == ""}'>
			<div class="NoneRow">등록 된 정보가 없습니다.</div>
		</c:if>
		
		<c:forEach var="order_statement" items="${order_statement_list }">
			<div class="tableRow">
				<div class="contractDate">${order_statement.om_date }</div>
				<div class="productImg">
					이미지
					<c:if test="${order_statement.p_img != null }">
						<img src="${order_statement.p_img }">
					</c:if>
				</div>
				<div class="productName">${order_statement.p_name }</div>
				<div class="ProductPrice">${(order_statement.om_num * order_statement.p_price)+order_statement.p_fee}</div>
				<div class="shippingFee">${order_statement.p_fee }</div>
				<div class="contractState"><input type="button" value="주문취소" onclick='cancelContract("${order_statement.om_index}")'></div>
			</div>
		 
		</c:forEach>
		
	</div>
</div>

<script type="text/javascript">
	function cancelContract(om_index) {
		if(confirm("해당 상품의 주문을 취소하시겠습니까?")){
			$.ajax({
		           data : {
		        	   os_index : om_index
		           }, 
		           url : "orderProductCancel",
		           success : function(data) {
						if(data == 1){
							alert("선택한 주문이 취소 되었습니다.");
							location.replace("consumerContractList");
						}				        	    	
		        	    
		           },
		           error : function(err){
		           		console.log(err.status);
		           		alert("잠시 후에 다시 시도해주세요.");
		           }
		    });	
		}
	}
</script>
</html>