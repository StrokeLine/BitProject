<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<style>
.fnPTable{width:800px; border-style:solid none solid none;}
.fnPHeader{width:800px; text-align:center; border-bottom:solid 1px;}
.fnPImgHeader{float:left; width:17%; height:50px; margin-right:1px;}
.fnPNameHeader{display:inline-block; width:17%; height:50px; margin-right:1px;}
.fnPPriceHeader{display:inline-block; width:17%; height:50px; margin-right:1px;}
.fnPStoreNameHeader{display:inline-block; width:17%; height:50px; margin-right:1px;}
.fnPRegDateHeader{display:inline-block; width:17%; height:50px; margin-right:1px;}
.fnPRows{width:800px;}
.fnPImg{float:left; width:17%; height:100px; margin-right:1px;}
.fnPName{display:inline-block;; width:17%; height:100px; margin-right:1px;}
.fnPPrice{display:inline-block;; width:17%; height:100px; margin-right:1px;}
.fnPStoreName{display:inline-block; width:17%; height:100px; margin-right:1px;}
.fnPRegDate{display:inline-block; width:17%; height:100px; margin-right:1px;}
</style>

<div class="followingNotiPMain">
	<div class="fnPTable">
		<div class="fnPHeader">
			<div class="fnPImgHeader"><h4>이미지</h4></div>
			<div class="fnPNameHeader"><h4>상품명</h4></div>
			<div class="fnPPriceHeader"><h4>가격</h4></div>
			<div class="fnPStoreNameHeader"><h4>상점명</h4></div>
			<div class="fnPRegDateHeader"><h4>등록일</h4></div>
		</div>
		<div class="fnPRows">
		<%-- 
		<c:forEach var="" items="">
		 --%>
			<div class="fnPImg">(이미지)</div>
			<div class="fnPName">(상품명)</div>
			<div class="fnPPrice">(가격)</div>
			<div class="fnPStoreName">(상점명)</div>
			<div class="fnPRegDate">(등록일)</div>
		<%-- 	
		</c:forEach>
		 --%>
		</div> 
	</div>
</div>
</html>