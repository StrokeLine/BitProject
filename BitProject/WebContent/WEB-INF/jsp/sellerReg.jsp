<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>

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
	.sellerReg_contents{
		width:800px;
		padding: 7px;
	}
	.sellerReg_item{
		width: 20%;
		height: 60px;
		padding: 7px;	
		display: inline-block;	
	}
	.input_sellerReg{
		width: 60%;
		height: 60px;
		padding: 7px;
		display: inline-block;
	}
	.hr_line{
		width: 60%;
		border-bottom: 1px solid #5d5d5d; 
	}
	.label{
		width: 20%;		
		padding: 7px;
		 margin-left: 20px;
		display: inline-block;
	}	

</style>
<title>판매자 등록</title>
</head>
<body>
	<form action="sellerReg" method="post">
		<div class="wrap">
			<div class="sellerReg_title">
				<h3>판매자 등록</h3>
			</div>
			<div class="sellerReg_contents">
				<div class="sellerReg_item">
					상점명
				</div>	
				<div class="input_sellerReg" style="margin-left: 20px;">
					<input type="text" id="input_storeName" name="s_nick">
				</div>	
				<div class="hr_line"></div>		
				<div class="sellerReg_item">
					상점 이미지
				</div>
				<div class="input_sellerReg" style="margin-left: 20px;">
					<input type="file" name="s_imgSrc">
				</div>	
				<div class="hr_line"></div>				
				<div class="sellerReg_item">
					거래계좌
				</div>
				<div class="hr_line"></div>				
				<div class="label">
					은행선택
				</div>	
				<div class="input_sellerReg">			
					<select name="s_bank">
						<option value="우리은행">우리은행</option>
						<option value="국민은행">국민은행</option>
						<option value="농협">농협</option>			
					</select>
				</div>	
				<div class="label">
					계좌번호
				</div>
				<div class="input_sellerReg">
					<input type="text" name="s_account">
				</div>
				<div class="label">
					예금주명
				</div>
				<div class="input_sellerReg">
					<input type="text" name="s_holder">
				</div>
								
				<!-- <div class="siteUrl" style="margin-bottom: 30px;">
					<h4>연동할 사이트 등록</h4><br>									
					<input type="text" name="siteUrl">
					<input type="button" value="추가">			
				</div> -->
				<div class="hr_line"></div>		
				<div class="sellerReg_item">
					오프라인 상점 주소
				</div>
				<div class="input_sellerReg" style="margin-left: 20px;">					
					<input type="text" name="s_address">			
				</div>
			</div>			
			<div class="sellerReg_btn">				
				<button type="submit" class="btn btn-primary" style="margin-left: 20%;">등록</button>			
			</div>
		</div>			
	</form>		
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.js"></script>	
</body>
</html>