<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div class="inputProduct_Main" style="margin: 0px 200px 0px 200px;">
	<div class="inputProduct_top">
		<center>
			<h3>상품등록</h3>
		</center>
	</div>
	<form action="addProduct" method="post">
		<div class="inputProduct_middle">
			<div class="inputProduct_item">
				<!-- <div class="picture">
					<h4>사진</h4>
					<input type="file" name="p_imgSrc">
				</div> -->
				<div class="name">
					<h4>상품명</h4>
					<input type="text" name="p_name">
				</div>
				<div class="price">
					<h4>상품금액</h4>
					<input type="text" name="p_price">
				</div>
				<div class="fee">
					<h4>배송비</h4>
					<input type="text" name="p_fee">
				</div>				
				<div class="number">
					<h4>수량</h4>
					<input type="number" name="p_num" min=1 max=999 value="1">
				</div>
				<!-- <div class="close_date">
					<h4>게시마감일</h4>
					<input type="date" name="p_posting_deadline">
				</div> -->
				<div class="content">
					<h4>내용</h4>
					<textarea name="p_content" rows="20" cols="80" lang="1000"></textarea>
				</div>
				<div class="hashTag">
					<h4>태그</h4>
					<input type="text" name="p_hashTag" value="#">
					<input type="button" value="추가">
				</div>
				<div class="category">					
					<h4>분류</h4>
					<select name="p_major_value">
						<option value="식품">식품</option>
						<option value="식기/집/장난감">식기/집/장난감</option>
						<option value="패션">패션</option>
						<option value="목욕/미용">목욕/미용</option>
					</select>	
					<!-- <select name="p_miner_value">
						<option value=""></option>
						<option value=""></option>					
					</select> -->							
				</div>
			</div>
			<center>
				<div class="inputProduct_button">
					<input type="submit" value="등록">					
				</div>		
			</center>
		</div>
	</form>	
</div>
</body>
</html>