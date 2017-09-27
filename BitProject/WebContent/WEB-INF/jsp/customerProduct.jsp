<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script> 
</head>
<body>
	<div class="modifyProduct_Main" style="margin: 0px 200px 0px 200px;">
		<div class="modifyProduct_top">
			<div class="modifyProduct_title">
				<center>
					<h3>상품 관리</h3>
				</center>
			</div>
			<div class="modifyProduct_middle">
				<div class="modifyProduct_subTitle">
					<center>
						<h3>등록한 상품 목록</h3>
					</center>
				</div>
				<div class="regProduct_button">
					<input type="button" value="상품등록" style="float: right" onclick="location.href='#'">
				</div>
				<form method="post" action="" onsubmit="">				
					<div class="modifyProduct_list" style="border: 1px solid black;">					
						<table>
							<thead>
								<tr>
									<th><input type="checkbox" id="checkAll"></th>
									<th>No</th>
									<th>상품 이미지</th>
									<th>상품명</th>
									<th>수량</th>
									<th>가격</th>
									<th>배송비</th>
									<th>등록일</th>
									<th>상품수정</th>
								</tr>					
							</thead>
							<tbody>
								<c:forEach items="${productList}" var="product">
									<tr>
										<td><input type="checkbox" id="checkRow"></td>
										<td>${product.p_index}</td>
										<td>
											<a><img src="downloadProductImg?p_index?=${product.p_index}" width="" height="" border="0"></a>
										</td>
										<td>${product.p_name}<a href="#" onclick="return "></a><br>
											${product.p_major_value} > ${product.p_major_value}
										</td>
										<td>${product.p_num}</td>
										<td>${product.p_price}</td>
										<td>${product.p_fee}</td>
										<td>${product.p_date}</td>
										<td>
											<input type="button" value="수정" onclick="location='modifyProductView?p_index=${p_index}'">
										</td>
									</tr>						
								</c:forEach>					
							</tbody>				
						</table>				
					</div>
					<div class="modifyProduct_button">
						<!-- <input type="button" value="선택물품삭제" style="float: right"> -->
						<input type="submit" id="del" value="삭제" style="float: right" >
					</div>
				</form>
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