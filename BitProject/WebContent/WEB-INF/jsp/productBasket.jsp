<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ٱ���</title>
</head>
<body>
	<div class="basketPage" style="margin: 0px 200px 0px 200px;">
		<form method="post">
			<div class="basket_top" align="right">
				<input type="submit" value="����" height="100" style="font-size: 50;">
			</div>		
		
			<table border="1"> 					
				<tr>
					<td><input type="checkbox" name="checkAll"></td>
					<th width="250">��ǰ �̹���</th>
					<th width="350">��ǰ��</th>
					<th width="200">����</th>
					<th width="200">�ݾ�</th>
					<th width="200">��ۺ�</th>	
					<th width="200">�����ݾ�</th>	
				</tr>		
				<tr>
				<c:forEach items="" var="">
					<td>
						<input type="checkbox" name="checkRow">
					</td>
					<td>�̹��� ���� </td>
					<td>��ǰ��</td>	
					<td>
						<input type="button" value="-">
						<input type="text" style="width: 25px;" value="1">
						<input type="button" value="+">
					</td>			
					<td>��ǰ����</td>	
					<td>��ۺ�</td>
					<td>�����ݾ�</td>
				</c:forEach>
				</tr>				
			</table>
			
			<div class="basket_bottom" align="right">
				<input type="submit" value="�ֹ��ϱ�">	
			</div>	
		</form>	
	</div>
</body>
</html>
