<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
<div class="inputProduct_Main" style="margin: 0px 200px 0px 200px;">
	<div class="inputProduct_top">
		<center>
			<h3>��ǰ���</h3>
		</center>
	</div>
	<div class="inputProduct_middle">
		<div class="inputProduct_item">
			<div class="picture">
				<h4>����</h4>
				<input type="file">
			</div>
			<div class="name">
				<h4>��ǰ��</h4>
				<input type="text">
			</div>
			<div class="price">
				<h4>����</h4>
				<input type="number" min=1 max=999 value="1">
			</div>
			<div class="close_date">
				<h4>�Խø�����</h4>
				<input type="date" value="2017-09-11">
			</div>
			<div class="content">
				<h4>����</h4>
				<textarea rows="20" cols="80" lang="1000"></textarea>
			</div>
			<div class="hashTag">
				<h4>�±�</h4>
				<input type="text" value="#">
				<input type="button" value="�߰�">
			</div>
			<div class="category">
				<h4>ī�װ�</h4>
				<div class="major">
					<h4>��з�</h4>
					<select>
						<option value="��ǰ">��ǰ</option>
						<option value="�ı�/��/�峭��">�ı�/��/�峭��</option>
						<option value="�м�">�м�</option>
						<option value="���/�̿�">���/�̿�</option>
					</select>
				</div>
				<div class="miner">
					<h4>�Һз�</h4>
					<select>
						<option value=""></option>
					</select>
				</div>
			</div>
		</div>
		<center>
			<div class="inputProduct_button">
				<input type="submit" value="���">
				<input type="button" value="���">
			</div>		
		</center>
	</div>
</div>
</body>
</html>