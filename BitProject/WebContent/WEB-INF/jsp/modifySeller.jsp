<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="modifySeller" method="post">
		<div class="wrap" style="margin-left: 350px;">
			<div class="sellerReg_title">
				<h3>���� ����</h3>
			</div>
			<div class="sellerReg_contents">
				<div class="storeName" style="margin-bottom: 30px;">
					<h4>������</h4>
					<input type="text" name="s_nick" value="${seller_info.s_nick}">			
				</div>
				<div class="storeImg" style="margin-bottom: 30px;">
					<h4>���� �̹���</h4>
					<input type="file" name="s_imgSrc" value="����ã��">			
				</div>
				<div class="accountReg" style="margin-bottom: 30px;">
					<h4>�ŷ�����</h4><br>
					<div class="accountReg_bankSel">				
						<label>���༱��
							<select name="s_bank" value="${seller_info.s_bank}">
								<option value="�츮����">�츮����</option>
								<option value="��������">��������</option>
								<option value="����">����</option>			
							</select>
						</label><br>
						���¹�ȣ<input type="text" name="s_account" value="${seller_info.s_account}"><br>
						�����ָ�<input type="text" name="s_holder" value="${seller_info.s_holder}">
					</div>			
				</div>
				<!-- <div class="siteUrl" style="margin-bottom: 30px;">
					<h4>������ ����Ʈ ���</h4><br>									
					<input type="text" name="siteUrl">
					<input type="button" value="�߰�">			
				</div> -->
				<div class="offlineStore_reg" style="margin-bottom: 30px;">
					<h4>�������� �����</h4>					
					�ּ�  <input type="text" name="s_address" style="width: 450px;" value="${seller_info.s_address}">			
				</div>		
			</div>	
			<div class="sellerReg_btn">				
				<button type="submit" class="btn btn-primary">����</button>			
			</div>		
		</div>
	</form>		
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.js"></script>	
</body>
</html>