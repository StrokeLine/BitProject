<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="followingNotiProductMain">
	<div class="fnProductList">
		<div class="fnProductListHeader">
			<h5>|    상점명    |    공지 제목    |    등록일    |</h5>
		</div>
		<div class="fnProductList" id="fnProductList">
		<%-- 
		<c:forEach var="" items="">
		 --%>
			<div>
				<div style="float:left; padding:0px 5px 0px 5px">상점명</div>
				<div style="display:inline-block; padding:0px 5px 0px 5px">공지 제목</div>
				<div style="display:inline-block; padding:0px 5px 0px 5px">등록일</div>
			</div>
		<%-- 	
		</c:forEach>
		 --%>
		</div> 
	</div>
</div>