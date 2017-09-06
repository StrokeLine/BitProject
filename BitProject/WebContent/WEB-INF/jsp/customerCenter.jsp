<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>고객센터</title>
</head>
<body>
	<div class="customerCenter_page">
		<div class="customerCenter_list">
			<h3>나의 문의내역</h3>
			<table border="1">
				<tr>
					<td width="40" align="center">NO</td>
					<td width="500" align="center">문의내용</td>					
					<td width="100" align="center">문의일</td>
				</tr>
				<c:forEach items="">
				<tr>				
					<td></td>
					<td></td>
					<td></td>					
				</tr>
				</c:forEach>
			</table>
		</div><br><br><br>
		<div class="customerCenter_add">
			<h3>문의하기</h3>
			<table border="1">
				<tr>
					<td>문의 제목</td>
					<td><input type="text" size="50"></td>			
				</tr>
				<tr>
					<td>문의 내용</td>
					<td><textarea style="height:120px;width:380px;"></textarea></td>			
				</tr>
				<tr>
					<td>답변받으실 email 주소</td>	
					<td><input type="text" size="50"></td>		
				</tr>
			</table>				
		</div>
		<div class="customerCenter_btn">
			<input type="button" value="문의하기">
		</div>
	</div>
</body>
</html>
