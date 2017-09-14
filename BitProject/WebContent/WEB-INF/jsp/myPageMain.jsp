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

<<<<<<< HEAD
<style>
html, body{margin:0; width:100%;	height:100%;}
#wrap{
	width:100%;	height:100%;	position: relative;
}
#myPageMenu{
	display:inline-block;	float:left;	width:200px;	height:100%;
}
#myPageContent{
	display: inline-block;	position: absolute;	left:200px;	right: 0;	height:100%; overflow:hidden;
}
</style>

<body>
<div id="wrap">
	<div id="myPageMenu">	
	<iframe name="myPageMenu" src="myPageMenu" width="100%" height="100%" style="border:0"></iframe>
	</div>
	<div id="myPageContent">
	<iframe name="myPageContent" src="memberInfo" width="100%" height="100%" style="border:0"></iframe>
	</div>
</div>
</body>

=======
<script type="text/javascript">
	function reSize(i) {
		var newHeight = document.body.offsetHeight;
		i.height = newHeight;
	}
</script>
>>>>>>> branch 'master' of https://github.com/StrokeLine/BitProject
</html>