<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>���� ��ǰ</title>
</head>
<body>
	<div class="dibsPage" style="margin: 0px 200px 0px 200px;">
		<form method="post">	
			<div class="dibs_top" style="height:300" align="right">
				<input type="button" value="����" height="100" style="font-size: 50;">
			</div>			
					
			<table border="1"> 				
				<tr>
					<td><input type="checkbox" name="checkAll"></td>
					<th width="250">��ǰ �̹���</th>
					<th width="350">��ǰ��</th>
					<th width="200">�ݾ�</th>
					<th width="200">��ۺ�</th>		
				</tr>		
				<c:forEach items="">
				<tr>				
					<td>
						<input type="checkbox" name="checkRow">
					</td>
					<td>�̹��� ���� </td>
					<td>��ǰ��</td>				
					<td>��ǰ����</td>	
					<td>��ۺ�</td>				
				</tr>	
				</c:forEach>							
			</table>	
				
			<div class="dibs_bottom" style="height:300;" align="right">
				<input type="button" value="��ٱ��Ϸ� �̵�">	
			</div>	
		</form>	
	</div>
</body>
</html>