<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="followingNoti_main">
	<div class="followingNoti_top">
		<div class="followingNoti_product" style="display: inline-block;">
			<h4><a href="followingNoti?method=followingNotiProduct">상품별 조회</a></h4>		
		</div>
		<div class="followingNoti_store" style="display: inline-block;">
			<h4><a href="followingNoti?method=followingNotiStore">상품별 조회</a></h4>		
		</div>
	</div>
	<div class="followingNoti_bottom">
		<div class="followingNoti_content">
			<jsp:include page="${param.method}.jsp"></jsp:include>
		</div>
	</div>
</div>
<%-- 
<form>
	<table>
		<tr>
			<td><a href="fnPageCtrl?fnPageNum=1">상품별 조회</a></td>
			<td><a href="fnPageCtrl?fnPageNum=2">상점별 조회</a></td>
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
 --%>