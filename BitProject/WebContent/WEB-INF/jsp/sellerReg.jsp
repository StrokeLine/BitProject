<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<form action="sellerReg" method="post">
		<div class="wrap" style="margin-left: 350px;">
			<div class="sellerReg_title">
				<h3>판매자 등록</h3>
			</div>
			<div class="sellerReg_contents">
				<div class="storeName" style="margin-bottom: 30px;">
					<h4>상점명</h4>
					<input type="text" name="s_nick">			
				</div>
				<div class="storeImg" style="margin-bottom: 30px;">
					<h4>상점 이미지</h4>
					<input type="file" name="s_imgSrc" value="파일찾기">			
				</div>
				<div class="accountReg" style="margin-bottom: 30px;">
					<h4>거래계좌</h4><br>
					<div class="accountReg_bankSel">				
						<label>은행선택
							<select name="s_bank">
								<option value="우리은행">우리은행</option>
								<option value="국민은행">국민은행</option>
								<option value="농협">농협</option>			
							</select>
						</label><br>
						계좌번호<input type="text" name="s_account"><br>
						예금주명<input type="text" name="s_holder">
					</div>			
				</div>
				<!-- <div class="siteUrl" style="margin-bottom: 30px;">
					<h4>연동할 사이트 등록</h4><br>									
					<input type="text" name="siteUrl">
					<input type="button" value="추가">			
				</div> -->
				<div class="offlineStore_reg" style="margin-bottom: 30px;">
					<h4>오프라인 스토어</h4>					
					주소  <input type="text" name="s_address" style="width: 450px;" >			
				</div>		
			</div>	
			<div class="sellerReg_btn">				
				<button type="submit" class="btn btn-primary">등록</button>			
			</div>		
		</div>
	</form>		
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.js"></script>	
</body>
</html>