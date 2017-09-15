<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="qAndAStore" style="width:100%;">

	<!-- 리스트 -->
	<div class="qAndAList"></div>
	
	<!-- 본문과 댓글 -->
	<div class="qAndACommentReply"><!-- style="display:none" -->
		<!-- 본문 -->
		<div class="qAndAComment" style="width:100%">
			<div class="qAndACommentSubject"></div>
			<div class="qAndACommentInfo" align="right">
				<div class="qAndACommentStoreName" style="float:left; padding:0px 5px 0px 5px">상점명</div>
				<div class="qAndACommentRegDate" style="display:inline-block; padding:0px 5px 0px 5px">등록일</div>
			</div>
			<div class="qAndACommentContent" style="width:50%; height:100px;">
				내용
			</div>
			<div class="deleteQAndAComment" align="right">
				<input type="button" value="삭제" onclick=""/>
			</div>
		</div>
		<!-- 댓글 -->
		<div class="qAndAReply" style="width:100%">
		<%-- <c:forEach items="" var=""> --%>
			<div>
				<div class="qAndAReplyInfo" align="right">
					<div class="qAndAReplyWriter" style="float:left; padding:0px 5px 0px 5px">작성자</div>
					<div class="qAndAReplyRegDate" style="display:inline-block; padding:0px 5px 0px 5px">등록일</div>
				</div>
				<div class="qAndACommentContent" style="width:50%; height:100px;">
					내용
				</div>
				<div class="deleteQAndAComment" align="right">
					<input type="button" value="삭제" onclick=""/>
				</div>
			</div>
		<%-- </c:forEach> --%>
		</div>
	</div>
</div>

