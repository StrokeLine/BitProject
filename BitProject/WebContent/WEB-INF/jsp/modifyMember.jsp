<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원정보 수정</title>
</head>
<body>
	<div class="modifyMember_page" style="margin: 0px 200px 0px 200px;">
		<table border="1">
			<tr height="50">
				<td width="130" align="center">아이디(이메일)</td>
				<td width="400"></td>
			</tr>
			<tr height="50">
				<td align="center">이름</td>
				<td></td>
			</tr>
			<tr height="80">
				<td align="center">비밀번호</td>
				<td>
					현재 비밀번호 &nbsp;<input type="password" name="passwd"><br> 
					새 비밀번호 &nbsp;<input type="password" name="passwd"><br>
					새 비밀번호 확인 &nbsp;<input type="password" name="passwd">
				</td>
			</tr>
			<tr height="50">
				<td align="center">전화번호</td>
				<td>
					<input type="text" name="tel">
				</td>
			</tr>	
		</table>
		<br>
		<div class="modify_btn">
			<input type="submit" value="수정">
			<input type="submit" value="취소">
		</div>		
	</div>
</body>
</html>