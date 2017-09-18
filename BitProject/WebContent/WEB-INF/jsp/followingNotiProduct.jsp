<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<style>
.fnPTable{width:700px;}
.fnPHeader{width:700px; height:50px}
.fnPImgHeader{float:left; width:18%; margin-right:1%;}
.fnPNameHeader{display:inline-block; width:18%; margin-right:1%;}
.fnPPriceHeader{display:inline-block; width:18%; margin-right:1%;}
.fnPStoreNameHeader{display:inline-block; width:18%; margin-right:1%;}
.fnPRegDateHeader{display:inline-block; width:18%;}
.fnPRows{width:700px; height:100px;}
.fnPImg{float:left; width:18%; margin-right:1%;}
.fnPName{display:inline-block; width:18%; margin-right:1%;}
.fnPPrice{display:inline-block; width:18%; margin-right:1%;}
.fnPStoreName{display:inline-block; width:18%; margin-right:1%;}
.fnPRegDate{display:inline-block; width:18%;}
.

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
			<div>
				<div class="fnPImg">(이미지)</div>
				<div class="fnPName">(상품명)</div>
				<div class="fnPPrice">(가격)</div>
				<div class="fnPStoreName">(상점명)</div>
				<div class="fnPRegDate">(등록일)</div>
			</div>
		<%-- 	
		</c:forEach>
		 --%>
		</div> 
	</div>
</div>
</html>