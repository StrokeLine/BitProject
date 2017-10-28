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
	}
	.managementProduct_top{
		width: 100%;
		padding: 7px;	
		display: inline-block;		
	}
	.table td, .table th {
	    padding: .75rem;
	    vertical-align: inherit;
	    text-align: center;
	    border-top: 1px solid grey; 
	}	
	.product_title{
		margin-bottom: 50px;
	}
	.button{
		width: 100%;
		margin-bottom: 10px;
		display: inline-block;		
	}
	.deleteProduct_btn{
		margin-left: 10px;				
		float: left; 
	}
	.regProduct_button{
		margin-right: 15px;			
		float: right;		
	}
	.title{
		text-align: center;
	}
	.content{
		text-align: justify;
		height: 130px;
	}
	
</style>

</head>
<body>
	<div class="wrap">
		<div class="managementProduct_top">
			<div class="product_title">
				<center>
					<h3>상품관리</h3>
				</center>
			</div>
			<div class="managementProduct_middle">
			
				<div class="button">
					<div class="deleteProduct_btn">					
						<input type="submit" class="btn btn-primary" id="del" value="삭제">
					</div>				
					<div class="regProduct_button">
						<input type="button" value="상품 등록" class="btn btn-primary" onclick="location.href='addProductForm'">
					</div>				
				</div>			
				
				<div class="product_list">					
					<table class="table table-hover">
						<thead>
							<tr>
								<th class="title" width="30"><input type="checkbox" id="checkAll"></th>								
								<th class="title" width="85">상품 이미지</th>
								<th class="title" width="170">상품명</th>
								<th class="title" width="50">수량</th>
								<th class="title" width="80">가격</th>
								<th class="title" width="80">배송비</th>
								<th class="title" width="90">등록일</th>
								<th class="title" width="50">상품수정</th>
							</tr>					
						</thead>
						<tbody>
							<c:forEach items="${product_info}" var="product_info">
								<tr>
									<td class="content"><input type="checkbox" id="checkRow"></td>									
									<td style="margin-left: 15px;">
										<c:if test="${product_info.p_imgSrc != null }">
											<a href="productPage?p_index=${product_info.p_index}"><img src="downloadProductImg?p_index=${product_info.p_index}" width="130" height="130" border="0"></a>												
										</c:if>
									</td>
									<td class="content" style="text-align: left;">
										<h6><a href="productPage?p_index=${product_info.p_index}">${product_info.p_name}</a><br></h6>									
											${product_info.p_major_value}
									</td>
									<td class="content">${product_info.p_num}</td>
									<td class="content">${product_info.p_price} 원</td>
									<td class="content">${product_info.p_fee}</td>
									<td class="content">
										<fmt:formatDate value="${product_info.p_date}" pattern="yyyy-MM-dd"/>
									</td>									
									<td class="content">
										<input type="button" class="btn btn-primary" value="수정" onclick="location.href='modifyProductForm?p_index=${product_info.p_index}'">
									</td>
								</tr>						
							</c:forEach>					
						</tbody>				
					</table>				
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