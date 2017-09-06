<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String qnaPageCtrl=null;
qnaPageCtrl=request.getParameter("qnaPageCtrl");
%>

<form>
	<table>
		<tr>
			<td><a href="qnaPageCtrl.do?qnaPageNum=1">상품문의</a></td>
			<td><a href="qnaPageCtrl.do?qnaPageNum=2">상점문의</a></td>
		</tr>
		<tr>
			<td colspan="2">
			<%
			if(qnaPageCtrl!=null){
			%>
				<jsp:include page='<%="qAndA"+qnaPageCtrl+".jsp"%>' flush="false"></jsp:include>
			<%
			}else{
			%>
				<jsp:include page="qAndAProduct.jsp" flush="false"></jsp:include>
			<%
			}
			%>
			</td>
		</tr>
	</table>
</form>
