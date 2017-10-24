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
.fnSName{float:left; width:30%; margin-right:1px; height:30px; text-align: center;}
.fnSSubject{display:inline-block; width:30%; margin-right:1px; height:30px; text-align: center;}
.fnSRegDate{display:inline-block; width:30%; margin-right:1px; height:30px; text-align: center;}
.fnSNoneRow{margin: 5% 39%;}

</style>
<div class="followingNotiSMain">
	<div class="fnSTable">
		<div class="fnSHeader">
			<div class="fnSNameHeader"><h4>상점명</h4></div>
			<div class="fnSSubjectHeader"><h4>제목</h4></div>
			<div class="fnSRegDateHeader"><h4>등록일</h4></div>
		</div>
		<div class="fnSRows">
		
		<c:if test='${notice_view_list == ""}'>
			<div class="fnSNoneRow"> 등록된 정보가 없습니다.</div>
		</c:if>
		
		<c:forEach var="notice_view" items="${notice_view_list}">
			<div class="fnSName">${notice_view.s_nick }</div>
			<div class="fnSSubject">${notice_view.sn_subject}</div>
			<div class="fnSRegDate">${notice_view.sn_date}</div>
		</c:forEach>
	
		</div> 
	</div>
</div>
</html>

