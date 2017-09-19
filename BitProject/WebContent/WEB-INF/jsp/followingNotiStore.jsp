<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<style>
.fnSTable{width:800px; border-style:solid none solid none;}
.fnSHeader{width:800px; text-align:center; border-bottom:solid 1px;}
.fnSNameHeader{float:left; width:30%; margin-right:1px; height:50px;}
.fnSSubjectHeader{display:inline-block; width:30%; margin-right:1px; height:50px;}
.fnSRegDateHeader{display:inline-block; width:30%; margin-right:1px; height:50px;}
.fnSRows{width:800px;}
.fnSName{float:left; width:30%; margin-right:1px; height:100px;}
.fnSSubject{display:inline-block; width:30%; margin-right:1px; height:100px;}
.fnSRegDate{display:inline-block; width:30%; margin-right:1px; height:100px;}
.

</style>
<div class="followingNotiSMain">
	<div class="fnSTable">
		<div class="fnSHeader">
			<div class="fnSNameHeader"><h4>상점명</h4></div>
			<div class="fnSSubjectHeader"><h4>제목</h4></div>
			<div class="fnSRegDateHeader"><h4>등록일</h4></div>
		</div>
		<div class="fnSRows">
		<%-- 
		<c:forEach var="" items="">
		 --%>
			<div class="fnSName">(상점명)</div>
			<div class="fnSSubject">(제목)</div>
			<div class="fnSRegDate">(등록일)</div>
		<%-- 	
		</c:forEach>
		 --%>
		</div> 
	</div>
</div>
</html>

