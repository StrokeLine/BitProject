<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap" style="margin-left: 350px;">
		<div class="sellerReg_title">
			<h3>�Ǹ��� ���</h3>
		</div>
		<div class="sellerReg_contents">
			<div class="storeName" style="margin-bottom: 30px;">
				<h4>������</h4>
				<input type="text" name="storeName">			
			</div>
			<div class="storeImg" style="margin-bottom: 30px;">
				<h4>���� �̹���</h4>
				<input type="file" name="storeImg" value="����ã��">			
			</div>
			<div class="accountReg" style="margin-bottom: 30px;">
				<h4>�ŷ�����</h4><br>
				<div class="accountReg_bankSel">				
					<label>���༱��
						<select>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>			
						</select>
					</label><br>
					���¹�ȣ<input type="text" name="account"><br>
					�����ָ�<input type="text" name="depositor">
				</div>			
			</div>
			<div class="siteUrl" style="margin-bottom: 30px;">
				<h4>������ ����Ʈ ���</h4><br>
				<input type="text" id="siteUrl1">
				<input type="text" id="siteUrl2">
				<input type="text" id="siteUrl3">			
			</div>
			<div class="offlineStore_reg" style="margin-bottom: 30px;">
				<h4>�������� �����</h4>
				<label>��Ͽ���  <input type="checkbox" name="offlineStore_reg"></label><br>
				�ּ�  <input type="text" name="offlineStore_address" style="width: 450px;" >			
			</div>		
		</div>	
		<div class="sellerReg_btn">				
			<button type="submit" class="btn btn-primary" onclick="">���</button>			
		</div>
		
	</div>	
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.js"></script>	
</body>
</html>