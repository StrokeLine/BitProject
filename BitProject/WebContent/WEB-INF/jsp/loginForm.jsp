<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
<title>Insert title here</title>
</head>
<body>

	<form>
		<div class="loginID" id="loginID">
			<label for="id">���̵�(�̸���)</label> <input type="text"
				class="form-control" id="inputID" placeholder="���̵� �Է��ϼ���.">
		</div>

		<div class="loginPW" id="loginPW">
			<label for="passwd">��й�ȣ</label> <input type="password"
				class="form-control" id="inputPW" placeholder="��й�ȣ�� �Է��ϼ���.">
		</div>

		<div class="checkbox_id">
			<label>
				<input type="checkbox"> ���̵� ����
			</label>
		</div>
		
		<div class="checkbox_auto">
			<label>
				<input type="checkbox"> �ڵ��α��� 
			</label>
		</div>
		
		<div>
			<p class="text-success">���̵� ã��</p>
			<p class="text-success">��й�ȣ ã��</p>
		</div>
		
		<div>
			<button type="submit" class="btn btn-success">�α���</button>
			<button type="reset" class="btn btn-warning">���</button>
		</div>

	</form>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>