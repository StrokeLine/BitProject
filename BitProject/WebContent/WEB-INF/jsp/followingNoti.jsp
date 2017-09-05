<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String fnPageCtrl=null;
fnPageCtrl=request.getParameter("fnPageCtrl");
%>
<form>
	<table>
		<tr>
			<td><a href="fnPageCtrl.do?fnPageNum=1">상품별 조회</a></td>
			<td><a href="fnPageCtrl.do?fnPageNum=2">상점별 조회</a></td>
		</tr>
		<tr>
			<td colspan="2">
			<%
			if(fnPageCtrl!=null){
			%>
				<jsp:include page='<%="followingNoti"+fnPageCtrl+".jsp"%>' flush="false"></jsp:include>
			<%
			}else{
			%>
				<jsp:include page="followingNotiProduct.jsp" flush="false"></jsp:include>
			<%
			}
			%>
			</td>
		</tr>
	</table>
</form>
