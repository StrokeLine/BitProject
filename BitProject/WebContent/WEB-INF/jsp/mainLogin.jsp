<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Keywords" content="메인페이지" />
<meta name="Description" content="메인페이지" />
<link rel="stylesheet" href="/css/style.css" type="text/css">
<script src="/js/pageScript.js"></script>
<title>Insert title here</title>
</head>
<body>

<div class="wrap">

	<div class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
		<%@ include file="topLogin.jsp" %>
	</div>
	
	<div class="container">
		<%@ include file="container.jsp"%>
	</div>
    	
</div>

    <footer>
		<%@ include file="footer.jsp" %>
	</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>

</body>
</html>