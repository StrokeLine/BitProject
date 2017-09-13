<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>
</head>
<body>
	<div class="basketPage" style="margin: 0px 200px 0px 200px;">
		<form method="post">
			<div class="basket_top" align="right">
				<input type="submit" value="삭제">
			</div>		
		
			<table border="1"> 					
				<tr>
					<td><input type="checkbox" name="checkAll"></td>
					<th width="250">상품 이미지</th>
					<th width="350">상품명</th>
					<th width="200">수량</th>
					<th width="200">금액</th>
					<th width="200">배송비</th>	
					<th width="200">최종금액</th>	
				</tr>
				<%-- 
				<c:forEach items="" var="">
				<tr>
					<td>
						<input type="checkbox" name="checkRow">
					</td>
					<td>이미지 영역 </td>
					<td>상품명</td>	
					<td>
						<input type="button" value="-">
						<input type="text" style="width: 25px;" value="1">
						<input type="button" value="+">
					</td>			
					<td>상품가격</td>	
					<td>배송비</td>
					<td>최종금액</td>
				</tr>				
				</c:forEach>
				 --%>
			</table>
			
			<div class="basket_bottom" align="right">
				<input type="submit" value="주문하기">	
			</div>	
		</form>	
	</div>
</body>
</html>
