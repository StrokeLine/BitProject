<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="orderProduct_main">
	<div class="product_info" style="margin-top: 50px">
		<h3>�ֹ���ǰ ����</h3>
	</div>
	<hr color="gray" style="width:70%;" align="left">		
	<div class="productinfo_content" style="margin-left: 40px;">
		<div class="product_img" style="width: 20%; display: inline-block;">
			<h5>��ǰ�̹���</h5>
		</div>
		<div class="product_name" style="width: 20%; display: inline-block;">
			<h5>��ǰ��</h5>
		</div>
		<div class="product_price" style="width: 20%; display: inline-block;">
			<h5>��ǰ�ݾ�</h5>
		</div>						
	</div>
		
	<div class="shippingAddress_info" style="margin-top: 50px">
		<h3>����� ����</h3>
	</div>	
	<hr color="gray" style="width:70%;" align="left">		
		<div class="shippingAddress_load">
			������ �⺻����			
			<ul>
				<li>������ ��   ��</li>
				<li>������ ����ó</li>			
			</ul>			
		</div>			
		<div class="shippingAdress_input">	
			����� �Է�����			
			<ul>
				<li>������
					<input type="text" name="name" width="100px"><br>
				</li>				
				<li>������ ����ó
					<input type="text" name="address" width="100px"><br>
				</li>
				<li>��� �޸�	
					<textarea style="height:100px;width:300px;"></textarea><br>	
				</ul>			
		</div>					
	<div class="finalPrice_info" style="margin-top: 50px">
		<h3>���� �����ݾ�</h3>
	</div>
	<hr color="gray" style="width:70%;" align="left">
		<div>
			<ul>			
				<li>��ǰ�ݾ�</li>
				<li>��ۺ�</li>
				<li>�����ݾ�</li>	
			</ul>
		</div>
	<div class="paymentMethod_info" style="margin-top: 50px">
		<h3>��������</h3>
	</div>
	<hr color="gray" style="width:70%;" align="left">	
		<div class="paymentCard">
			<label><input type="radio" name="paymentMethod" value="card">ī�����</label><br>
				<select>
					<option value=""></option>
					<option value=""></option>
					<option value=""></option>						
				</select>
		</div>
		<div class="paymentAcount">
			<label><input type="radio" name="paymentMethod" value="acount">������ �Ա�</label><br>
				<select>
					<option value=""></option>			
				</select>
		</div>
		<div class="paymentPhone">
			<label><input type="radio" name="paymentMethod" value="phone">�޴��� ����</label><br>
				<select>
					<option value=""></option>			
				</select>
		</div>	
	<div class="order_btn">
		<input type="button" value="�����ϱ�" onclick="">	
	</div>
</div>
</body>
</html>