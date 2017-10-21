<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="seller_my_store_main" style="margin: 0px 200px 0px 200px;">
		<div class="seller_my_store_right" style="width: 69%; float: left;">
			<div class="seller_my_store_top">
				<div class="seller_my_store_img" style="width: 100%; display: inline-block;">
					<center>
						<h3>이미지 영역</h3>
					</center>
				</div>
				<div class="seller_my_store_modify" style="float: right;">	
				${seller_info.m_index}
				${seller_info.s_index}
				${seller_info.s_nick}							
					<input type="button" value="상점정보수정" 
							onclick="location.href='modifySellerForm?m_index=${seller_info.m_index}'">
				</div>
			</div>
			<div class="seller_my_store_middle">
				<div class="seller_my_store_info">
					<div class="seller_my_store_info_content" style="width: 100%;">
						<center>
							<h3>상점 소개 영역</h3>
							${seller_info.s_nick}
							${seller_info.s_address}
						</center>
					</div>
					<div class="seller_my_store_info_list">
						<div class="store_open_date" style="width: 19%; display: inline-block ;">
							<h3>오픈일</h3>
						</div>
						<div class="store_visitant_num" style="width: 19%; display: inline-block ;">
							<h3>방문자수</h3>
						</div>
						<div class="store_follower" style="width: 19%; display: inline-block ;">
							<h3>팔로워 수</h3>
						</div>
						<div class="store_grade" style="width: 19%; display: inline-block ;">
							<h3>평점</h3>
						</div>
						<div class="store_sale_num" style="width: 19%; display: inline-block ;">
							<h3>판매량</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>