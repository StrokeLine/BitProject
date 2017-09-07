<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int myPageNum=Integer.parseInt(request.getParameter("myPageNum"));
String myPageCtrl=null;
%>
<%
switch(myPageNum){
	case 1:	//내 정보
		myPageCtrl="memberInfo";
		break;
	case 2:	//판매자 등록/내 상점
		myPageCtrl="";
		break;
	case 3:	//관심스토어 알림
		myPageCtrl="followingNoti";
		break;
	case 4:	//찜
		myPageCtrl="productDibs";
		break;
	case 5:	//장바구니
		myPageCtrl="productBasket";
		break;
	case 6:	//주문/배송
		myPageCtrl="consumerContractList";
		break;
	case 7:	//문의사항
		myPageCtrl="qAndA";
		break;
	case 8:	//고객센터
		myPageCtrl="customerCenter";
		break;
	case 9: //탈퇴하기
		myPageCtrl="deleteMember";
		break;
	default:	//내 정보
		myPageCtrl="memberInfo";
}
%>
<jsp:forward page="myPage.jsp">
	<jsp:param value="<%=myPageCtrl%>" name="myPageCtrl"/>
</jsp:forward>