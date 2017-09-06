<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
int qnaPageNum=Integer.parseInt(request.getParameter("qnaPageNum"));
String qnaPageCtrl=null;
%>
<%
switch(qnaPageNum){
	case 1:
		qnaPageCtrl="Product";
		break;
	case 2:
		qnaPageCtrl="Store";
		break;
}
%>
<jsp:forward page="myPage.jsp">
	<jsp:param value="qAndA" name="myPageCtrl"/>
	<jsp:param value="<%=qnaPageCtrl%>" name="qnaPageCtrl"/>
</jsp:forward>
