<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

문의사항 상점별

<!-- 리스트 -->
<div id="qAndAList"></div>
<br>

<!-- 본문과 댓글 -->
<div id="qAndAContent" style="display:none">
	<form name="qnaContentForm">
		<table>
			<tr><!-- 제목 -->
				<th colspan="4"></th>
			</tr>
			<tr>
				<td>상품명</td>
				<td></td>
				<td>등록일</td>
				<td></td>
			</tr>
			<tr><!-- 내용 -->
				<td colspan="4"></td>
			</tr>
			<tr>
				<td><input type="button" value="삭제" onclick=""></td>
			</tr>
			<%--  답변
			<c:forEach items="" var="">
			<tr>
				<td>작성자</td>
				<td></td>
				<td>등록일</td>
				<td></td>
			</tr>
			<tr>	<%-- 답변 내용 --%><%--
				<td colspan="4"></td>
			</tr>
			<tr>
				<td colspan="4"><input type="button" value="삭제" onclick=""></td>
			</tr>
			</c:forEach>
			 --%>
			 <tr>
			 	<td><textarea rows="3" cols="70"></textarea></td>
			 </tr>
			 <tr>
				<td colspan="4"><input type="button" value="등록" onclick=""></td>
			</tr>			 	
		</table>
	</form>
</div>
