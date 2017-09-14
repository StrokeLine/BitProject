<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

<style>
html, body{margin:0; width:100%;	height:100%;}
#wrap{
	width:100%;	height:100%;	position: relative;
}
#followingNotiMenu{
	height:100px;
}
#followingNotiContent{
	position: absolute;	height:100%; overflow:hidden;
}
</style>

<body>
<h2>관심스토어 알림</h2>
<div id="wrap">
	<div id="followingNotiMenu">	
	<iframe name="followingNotiMenu" src="followingNotiMenu" width="100%" height="100%" style="border:0"></iframe>
	</div>
	<div id="followingNotiContent">
	<iframe name="followingNotiContent" src="followingNotiProduct" width="100%" height="100%" style="border:0"></iframe>
	</div>
</div>
</body>

</html>