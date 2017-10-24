<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script> 
<style type="text/css">
	body{
		margin: 0 20px 0 0;
		background-color: inherit;
	}
	.wrap{
		height: 100%;
		color: #5d5d5d;
		background: #f2f2f2;
		padding: 26px;
		border-radius: 10px;
		-moz-border-radius: 10px;
		-webkit-border-radius: 10px;
	}.btn btn-primary{
		margin: 0 0 30px o;
	}
</style>

</head>
<body>
	<div class="wrap" style="margin: 0px 200px 0px 200px;">
		<div class="managementProduct_top">
			<div class="product_title">
				<center>
					<h3>상품관리</h3>
				</center>
			</div>
			<div class="managementProduct_middle">				
				<div class="regProduct_button">
					<input type="button" value="상품등록" class="btn btn-primary" onclick="location.href='addProductForm'">
				</div>
<%-- 				${productInfo.p_name}				
				${productInfo.p_major_value}
				${productInfo.p_price} --%>
				<div class="product_list" style="border: 1px solid black;">					
					<table class="table" border="1">
						<thead>
							<tr>
								<th><input type="checkbox" id="checkAll"></th>								
								<!-- <th width="500">상품 이미지</th> -->
								<th width="170">상품명</th>
								<th width="50">수량</th>
								<th width="80">가격</th>
								<th width="80">배송비</th>
								<th width="90">등록일</th>
								<th width="50">상품수정</th>
							</tr>					
						</thead>
						<tbody>
							<c:forEach items="${productInfo}" var="product_info">
								<tr>
									<td><input type="checkbox" id="checkRow"></td>									
									<%-- <td>
										<a href="viewProduct?p_index=${product_info.p_index}">
										<img src="downloadProductImg?p_index=${product_info.p_index}" width="" height="" border="0"></a>
									</td> --%>
									<td>
										<h4>${product_info.p_name}<a href="viewProduct?p_index=${product_info.p_index}"></a><br></h4>									
											${product_info.p_major_value}
									</td>
									<td>${product_info.p_num}</td>
									<td>${product_info.p_price} 원</td>
									<td>${product_info.p_fee}</td>
									<td>
										<fmt:formatDate value="${product_info.p_date}" pattern="yyyy-MM-dd"/>
									</td>									
									<td>
										<input type="button" value="수정" onclick="location.href='modifyProductForm?p_index=${product_info.p_index}'">
									</td>
								</tr>						
							</c:forEach>					
						</tbody>				
					</table>				
				</div>
				<div class="deleteProduct_btn">					
					<input type="submit" id="del" value="삭제" style="float: right" >
				</div>				
			</div>
		</div>
	</div>
</body>

<script type="text/javascript"> 	
	$(document).ready(function(){ 
		
		$("#checkAll").click(checkAll);	
		$("#del").click(del);		
	})	
	// 체크박스 전체선택 및 전체해제
	function checkAll(){		
		$("#checkAll").click(function(){			
			if($("#checkAll").prop("checked")) { 				
				$("input[type=checkbox]").prop("checked",true); 				
			}else { 				
				$("input[type=checkbox]").prop("checked",false); 
			} 
		})
	}	
	// 선택된 체크박스 삭제
	function del(){		
		$("#del").click(function(){				
			if($('input:checkbox[id="checkRow"]').is(":checked") == false){
				alert("삭제하실 항목을 선택해주세요");
			}			
  			var checkRow = new Array();  			
  			$("input[name='checkRow']:checked").each(function(){  				
					array.push($(this).val());				
			});						
		})	
	}		
</script>
</html>