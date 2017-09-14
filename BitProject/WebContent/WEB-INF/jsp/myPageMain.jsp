<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

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

</html>