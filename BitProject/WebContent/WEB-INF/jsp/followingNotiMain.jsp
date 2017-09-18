<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

<style>
.followingNotiMain{margin:50px 100px 0 100px;}
.followingNotiMenu{width:1000px; height:100px; border:0;}
.followingNotiContent{width:1000px; height:100%; border:0;}
</style>

<body>
<div class="followingNotiMain">
	<h2>관심스토어 알림</h2>
	<div class="followingNotiMenu">
	<iframe class="followingNotiMenu" name="followingNotiMenu" src="followingNotiMenu"></iframe>
	</div>
	<div class="followingNotiContent">
	<iframe class="followingNotiContent" name="followingNotiContent" src="followingNotiProduct"></iframe>
	</div>
</div>
</body>

</html>