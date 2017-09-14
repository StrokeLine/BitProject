<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="/js/pageScript.js"></script>
<title>Insert title here</title>
</head>
<body>
<div>
	<iframe name="myPageMenu" src="myPageMenu" onload="reSize(this)" frameborder="0" scrolling="no" style="width: 20%;"></iframe>
	<iframe name="myPageContent" src="memberInfo" onload="reSize(this)" frameborder="0" scrolling="no" style="width: 79%;"></iframe>
</div>
<script type="text/javascript" src="/js/bootstrap.js"></script>
</body>

<script type="text/javascript">
	function reSize(i) {
		var newHeight = document.body.offsetHeight;
		i.height = newHeight;
	}
</script>
</html>