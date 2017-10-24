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
.fnPImg{float:left; width:17%; height:30px; margin-right:1px;}
.fnPName{display:inline-block;; width:17%; height:30px; margin-right:1px; text-align: center;}
.fnPPrice{display:inline-block;; width:17%; height:30px; margin-right:1px; text-align: center;}
.fnPStoreName{display:inline-block; width:17%; height:30px; margin-right:1px; text-align: center;}
.fnPRegDate{display:inline-block; width:17%; height:30px; margin-right:1px; text-align: center;}
.fnPNoneRow{margin: 5% 39%;}
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
		
		<c:if test='${notice_view_list == ""}'>
			<div class="fnPNoneRow"> 등록된 정보가 없습니다.</div>
		</c:if>
		<c:forEach var="notice_view" items="${notice_view_list }">
			<div class="fnPImg">(이미지)
				<c:if test="${notice_view.p_img != null }">
					<img src="${notice_view.p_img }">
				</c:if>
			</div>
			<div class="fnPName">${notice_view.p_name }</div>
			<div class="fnPPrice">${notice_view.p_price }</div>
			<div class="fnPStoreName">${notice_view.s_nick}</div>
			<div class="fnPRegDate">${notice_view.pn_date }</div>
		 	
		</c:forEach>
		
		</div> 
	</div>
</div>
</html>