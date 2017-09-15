<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

<style>
html, body{margin:0; width:100%;	height:100%;}
#wrap{
	width:100%;	height:100%;	position: relative;
}
#qAndAMenu{
	height:100px;
}
#qAndAContent{
	height:100%; margin-right:100px;
}
</style>

<body>
<h2>문의사항</h2>
<div id="wrap">
	<div id="qAndAMenu">	
	<iframe name="qAndAMenu" src="qAndAMenu" width="100%" height="100%" style="border:0"></iframe>
	</div>
	<div id="qAndAContent">
	<iframe name="qAndAContent" src="qAndAProduct" style="width:100%; border:0"></iframe>
	</div>
</div>
</body>

</html>