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
	<form action="addProduct" enctype="multipart/form-data" method="post">
		<div class="inputProduct_middle">
			<div class="inputProduct_item">
				<div class="picture">
					<h4>사진</h4>
					<input type="file">
				</div>
				<div class="name">
					<h4>상품명</h4>
					<input type="text">
				</div>
				<div class="price">
					<h4>수량</h4>
					<input type="number" min=1 max=999 value="1">
				</div>
				<div class="close_date">
					<h4>게시마감일</h4>
					<input type="date" value="2017-09-11">
				</div>
				<div class="content">
					<h4>내용</h4>
					<textarea rows="20" cols="80" lang="1000"></textarea>
				</div>
				<div class="hashTag">
					<h4>태그</h4>
					<input type="text" value="#">
					<input type="button" value="추가">
				</div>
				<div class="category">
					<h4>카테고리</h4>
					<div class="major">
						<h4>대분류</h4>
						<select>
							<option value="식품">식품</option>
							<option value="식기/집/장난감">식기/집/장난감</option>
							<option value="패션">패션</option>
							<option value="목욕/미용">목욕/미용</option>
						</select>
					</div>
					<div class="miner">
						<h4>소분류</h4>
						<select>
							<option value=""></option>
						</select>
					</div>
				</div>
			</div>
			<center>
				<div class="inputProduct_button">
					<input type="submit" value="등록">
					<input type="button" value="취소">
				</div>		
			</center>
		</div>
	</form>	
</div>
</body>
</html>