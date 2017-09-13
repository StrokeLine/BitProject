<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String myPageCtrl=request.getParameter("myPageCtrl");
/* 관심스토어 알림 */
String fnPageCtrl=null;
fnPageCtrl=request.getParameter("fnPageCtrl");
/* 문의사항 */
String qnaPageCtrl=null;
qnaPageCtrl=request.getParameter("qnaPageCtrl");
%>
<form>
	<table>
		<tr>
			<td colspan="2">프리하개</td>
		</tr>
		<tr>
			<td><a href="myPage">My Page</a></td>
			<td rowspan="9">
			<%
			if(myPageCtrl=="followingNoti"){	//관심스토어 알림
				if(fnPageCtrl!=null){	//하위분류 정보 있을 때
					%>
					<jsp:include page='followingNoti.jsp' flush="false">
						<jsp:param value="<%=fnPageCtrl%>" name="fnPageCtrl"/>
					</jsp:include>
					<%
				}else{
				%>
				<jsp:include page='followingNoti.jsp' flush="false"></jsp:include>
				<%
				}
			}else if(myPageCtrl=="qAndA"){	//문의사항
				if(qnaPageCtrl!=null){	//하위분류 정보 있을 때
					%>
					<jsp:include page='qAndA.jsp' flush="false">
						<jsp:param value="<%=qnaPageCtrl%>" name="qnaPageCtrl"/>
					</jsp:include>
					<%
				}else{
				%>
				<jsp:include page='qAndA.jsp' flush="false"></jsp:include>
				<%
				}
			}else if(myPageCtrl!=null){	//관심스토어 알림, 문의사항 외 카테고리 선택
			%>
				<jsp:include page='<%=myPageCtrl+".jsp" %>' flush="false"></jsp:include>
			<%
			}else{	//기본화면
			%>
				<jsp:include page='memberInfo.jsp' flush="false"></jsp:include>
			<%
			}
			%>
			</td>
		</tr>
		<tr>
			<td><a href="myPageCtrl?myPageNum=1">내 정보</a></td>
		</tr>
		<tr>
			<td><a href="myPageCtrl?myPageNum=2">판매자 등록/내 상점</a></td>
		</tr>
		<tr>
			<td>
			<%
			if(fnPageCtrl!=null){
				%>
				<a href="myPageCtrl?myPageNum=3&fnPageCtrl=<%=fnPageCtrl%>">관심스토어 알림</a>
				<%
			}else{
				%>
				<a href="myPageCtrl?myPageNum=3">관심스토어 알림</a>
				<%
			}
			%>
			</td>
		</tr>
		<tr>
			<td><a href="myPageCtrl?myPageNum=4">찜</a></td>
		</tr>
		<tr>
			<td><a href="myPageCtrl?myPageNum=5">장바구니</a></td>
		</tr>
		<tr>
			<td><a href="myPageCtrl?myPageNum=6">주문/배송</a></td>
		</tr>
		<tr>
			<td><a href="myPageCtrl?myPageNum=7">문의사항</a></td>
		</tr>
		<tr>
			<td><a href="myPageCtrl?myPageNum=8">고객센터</a></td>
		</tr>
		<tr>
			<td><a href="myPageCtrl?myPageNum=9">탈퇴하기</a></td>
		</tr>
	</table>
</form>
