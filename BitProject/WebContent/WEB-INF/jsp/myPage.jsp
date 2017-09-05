<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String myPageCtrl=request.getParameter("myPageCtrl");
String fnPageCtrl=null;
fnPageCtrl=request.getParameter("fnPageCtrl");
%>
<form>
	<table>
		<tr>
			<td colspan="2">프리하개</td>
		</tr>
		<tr>
			<td>My Page</td>
			<td rowspan="9">
			<%
			if(myPageCtrl=="followingNoti"){
				if(fnPageCtrl!=null){
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
			}else if(myPageCtrl!=null){
			%>
				<jsp:include page='<%=myPageCtrl+".jsp" %>' flush="false"></jsp:include>
			<%
			}else{
			%>
				받은 내용 없음
			<%
			}
			%>
			</td>
		</tr>
		<tr>
			<td><a href="myPageCtrl.do?myPageNum=1">회원정보 수정</a></td>
		</tr>
		<tr>
			<td><a href="myPageCtrl.do?myPageNum=2">판매자 등록/내 상점</a></td>
		</tr>
		<tr>
			<td>
			<%
			if(fnPageCtrl!=null){
				%>
				<a href="myPageCtrl.do?myPageNum=3&fnPageCtrl=<%=fnPageCtrl%>">관심스토어 알림</a>
				<%
			}else{
				%>
				<a href="myPageCtrl.do?myPageNum=3">관심스토어 알림</a>
				<%
			}
			%>
			</td>
		</tr>
		<tr>
			<td><a href="myPageCtrl.do?myPageNum=4">찜</a></td>
		</tr>
		<tr>
			<td><a href="myPageCtrl.do?myPageNum=5">장바구니</a></td>
		</tr>
		<tr>
			<td><a href="myPageCtrl.do?myPageNum=6">주문/배송</a></td>
		</tr>
		<tr>
			<td><a href="myPageCtrl.do?myPageNum=7">문의사항</a></td>
		</tr>
		<tr>
			<td><a href="myPageCtrl.do?myPageNum=8">고객센터</a></td>
		</tr>
		<tr>
			<td><a href="myPageCtrl.do?myPageNum=9">탈퇴하기</a></td>
		</tr>
	</table>
</form>
