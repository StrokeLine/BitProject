<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="sellerReg_page">
	<h3>�Ǹ��� ���</h3>
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
				<div class="accountReg_">				
					<label>���༱��
						<select>
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
			<div>
				<input type="button" value="���" onclick="">
			</div>		
		</div>
	</div>
</body>
</html>