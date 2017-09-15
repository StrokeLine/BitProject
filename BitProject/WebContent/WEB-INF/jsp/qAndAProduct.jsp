<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="qAndAProduct">

	<!-- 리스트 -->
	<div class="qAndAList"></div>
	
	<!-- 본문과 댓글 -->
	<div class="qAndACommentReply"><!-- style="display:none" -->
		<!-- 본문 -->
		<div class="qAndAComment">
			<div class="qAndACommentSubject"></div>
			<div class="qAndACommentInfo" align="right">
				<div class="qAndACommentProductName" style="float:left; padding:0px 5px 0px 5px">상품명</div>
				<div class="qAndACommentRegDate" style="display:inline-block; padding:0px 5px 0px 5px">등록일</div>
			</div>
			<div class="qAndACommentContent">
				내용
			</div>
			<div class="deleteQAndAComment">
				<input type="button" value="삭제" onclick=""/>
			</div>
		</div>
		<!-- 댓글 -->
		<div class="qAndAReply">
		<%-- <c:forEach items="" var=""> --%>
			<div>
				<div class="qAndAReplyInfo" align="right">
					<div class="qAndAReplyWriter" style="float:left; padding:0px 5px 0px 5px">작성자</div>
					<div class="qAndAReplyRegDate" style="display:inline-block; padding:0px 5px 0px 5px">등록일</div>
				</div>
				<div class="qAndACommentContent">
					내용
				</div>
				<div class="deleteQAndAComment">
					<input type="button" value="삭제" onclick=""/>
				</div>
			</div>
		<%-- </c:forEach> --%>
		</div>
	</div>

</div>
