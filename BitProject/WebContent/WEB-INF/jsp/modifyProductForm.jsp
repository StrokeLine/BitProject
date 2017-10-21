<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>상품 수정</h2>
	<form action="modifyProduct" method="post">
		<div class="modifyProduct_Main" style="margin: 0px 200px 0px 200px;">
			<div class="modifyProduct_top">
				<center>
					<h3>상품 수정</h3>
				</center>
			</div>
			<div class="modifyProduct_middle">
				<div class="modifyProduct_item">
					<input type="hidden" name="p_index" value="${product_info.p_index}">				
					<div class="picture">
						<h4>사진</h4>
						<input type="file" name="p_imgSrc">
					</div>
					<div class="name">
						<h4>상품명</h4>
						<input type="text" name="p_name" value="${product_info.p_name}">
					</div>
					<div class="price">
						<h4>수량</h4>
						<input type="number" name="p_num" min=1 max=999 value="1" value="${product_info.p_num }">
					</div>
					<div class="close_date">
						<h4>게시마감일</h4>
						<input type="date" value="posting_deadline">
					</div>
					<div class="content">
						<h4>내용</h4>
						<textarea name="p_content" rows="20" cols="80" lang="1000" value="${product_info.p_content}"></textarea>
					</div>
					<div class="hashTag">
						<h4>태그</h4>
						<input type="text" name="p_hashTag" value="${product_info.p_hashTag}">
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
					</div>
				</div>
			</div>				
			<div class="modifyProduct_button" align="center">
				<input type="submit" value="수정">
				<input type="button" value="취소" onclick="history.go(-1)">
			</div>		
				
			</div>
		</div>	
	</form>
</body>
</html>