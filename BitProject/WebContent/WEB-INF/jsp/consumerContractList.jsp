<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>Hand Made - Pet Product</title>
	
	<!-- Bootstrap core JavaScript -->
	<script src="/jquery/jquery.min.js"></script>
	<script src="/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Bootstrap core CSS -->
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom fonts for this template -->
	<link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	<!-- Custom styles for this template -->
	<link rel="stylesheet" href="/css/main.css" />
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	
	<!-- Scripts -->
	<script src="/js/skel.min.js"></script>
	<script src="/js/util.js"></script>
	<script src="/js/main.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
.consumerContractList{margin-top:50px; margin-right:100px; margin-left:100px; width: 37.5em;}
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

table th{
	text-align: center;
}

table td{
	text-align: center;
	vertical-align: middle;
}

table{
	font-size: 0.8em;
}
</style>

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

</head>
<body>
	<div class="consumerContractList">
		<h2>주문/배송정보</h2>
		<table class="table-wrapper">
			<thead>
				<tr>
					<th style="width: 120px;">주문일자</th>
					<th colspan="2">상품정보</th>
					<th>금액</th>
					<th>배송비</th>
					<th style="width: 50px;">주문상태</th>
				</tr>
			</thead>
			<tbody>
				<c:if test='${order_statement_list == ""}'>
					<tr>
						<td colspan="6">
								<div class="NoneRow">등록 된 정보가 없습니다.</div>					
						</td>
					</tr>
				</c:if>
				<c:forEach var="order_statement" items="${order_statement_list }">
					<tr>
						<td>${order_statement.om_date }</td>
						<td>
							<c:if test="${order_statement.p_img != null }">
								<img src="downloadProductImg?p_index=${order_statement.p_index }">
							</c:if>
						</td>
						<td>${order_statement.p_name }</td>
						<td><fmt:formatNumber value="${(order_statement.om_num * order_statement.p_price)+order_statement.p_fee}" pattern="###,###,###,###원"></fmt:formatNumber></td>
						<td><fmt:formatNumber value="${order_statement.p_fee }" pattern="###,###,###,###원"></fmt:formatNumber></td>
						<td>입금완료
							<input class="button special small" type="button" value="주문취소" onclick='cancelContract("${order_statement.om_index}")'>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>


</html>