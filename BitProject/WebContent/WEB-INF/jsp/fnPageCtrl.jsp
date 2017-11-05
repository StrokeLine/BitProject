<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
int fnPageNum=Integer.parseInt(request.getParameter("fnPageNum"));
String fnPageCtrl=null;
%>
<%
switch(fnPageNum){
	case 1:	//상점별조회
		fnPageCtrl="Product";
		break;
	case 2:	//상품별조회
		fnPageCtrl="Store";
		break;
	default:	//상점별조회
		fnPageCtrl="Product";
}
%>
<jsp:forward page="myPage.jsp">
	<jsp:param value="followingNoti" name="myPageCtrl"/>
	<jsp:param value="<%=fnPageCtrl%>" name="fnPageCtrl"/>
</jsp:forward>
