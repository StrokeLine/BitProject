<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<style>
.qAndASubject{width:790px; padding:5px; margin:0 5px 0 5px; border-style:solid none solid none; border-width:1px;}
.qAndACommentReply{width:800px; padding:5px;}
.qAndAComment{width:790px; border-style:solid none solid none; border-width:1px; padding:5px;}
.qAndACommentSubject{height:30px;}
.qAndACommentInfo{height:30px;}
.qAndACommentProductName{float:left; width:50px; margin-left:5px;}
.qAndACommentRegDate{float:right; width:50px; margin-left:5px;}
.qAndACommentContent{width: 770px; margin:0 5px 0 5px; border:solid 1px; height:100px; padding:5px;}
.deleteQAndAComment{text-align:right; height:30px; margin:5px;}
.qAndAReply{width:790px; border-style:solid none solid none; border-width:1px; padding:5px;}
.qAndAReplyInfo{height:30px;}
.qAndAReplyWriter{float:left; width:50px; margin-left:5px;}
.qAndAReplyRegDate{float:right;; width:50px; margin-left:5px;}
.qAndAReplyContent{width: 770px; margin:0 5px 0 5px; border:solid 1px; height:50px; padding:5px;}
.deleteQAndAReply{text-align:right; height:30px; margin:5px;}
</style>

<div class="qAndAProductMain">
	<div class="qAndAProduct">
	
		<!-- 리스트 -->
		<div class="qAndAList">
			<%-- <c:forEach var="" items=""> --%>
			<div class="qAndASubject">리스트 글 제목</div>
			<%-- </c:forEach> --%>
		</div>
		
		<!-- 본문과 댓글 -->
		<div class="qAndACommentReply"><!-- display:none -->
			<!-- 본문 -->
			<div class="qAndAComment">
				<div class="qAndACommentSubject">제목</div>
				<div class="qAndACommentInfo">
					<div class="qAndACommentProductName">상품명</div>
					<div class="qAndACommentRegDate">등록일</div>
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
					<div class="qAndAReplyInfo">
						<div class="qAndAReplyWriter">작성자</div>
						<div class="qAndAReplyRegDate">등록일</div>
					</div>
					<div class="qAndAReplyContent">
						내용
					</div>
					<div class="deleteQAndAReply">
						<input type="button" value="삭제" onclick=""/>
					</div>
				</div>
				<%-- </c:forEach> --%>
			</div>
		</div>
	</div>	
</div>

</html>

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
