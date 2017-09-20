<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

<style>
.memberInfo{margin:50px 100px 0 100px;}
.memberInfoTitle{width:700px;}
.memberInfoTable{width:700px;}
.rowId{width:700px; height:50px; border-top:solid 2px;;}
.rowName{width:700px; height:50px;}
.rowGender{width:700px; height:50px;}
.rowAge{width:700px; height:50px;}
.rowPhone{width:700px; height:50px;}
.rowBtn{width:700px; height:50px; border-bottom:solid 2px;}
.rowTitle{width:300px; float:left; margin-right:2px; height:30px; text-align:center;}
.memberId{width:398px; display:inline-block; height:30px;}
.memberName{width:398px; display:inline-block; height:30px;}
.memberGender{width:398px; display:inline-block; height:30px;}
.memberAge{width:398px; display:inline-block; height:30px;}
.memberPhone{width:398px; display:inline-block; height:30px;}
.memberModBtn{width:700px; float:left; height:30px; text-align:right;}
</style>

	<body>
	
	<div class="memberInfo">
		<div class="memberInfoTitle"><h2>내 정보</h2></div>
		<div class="memberInfoTable">
			<div class="rowId">
				<div class="rowTitle"><h4>아이디</h4></div>
				<div class="memberId">(회원 아이디)</div>
			</div>
			<div class="rowName">
				<div class="rowTitle"><h4>이름</h4></div>
				<div class="memberName">(회원 이름)</div>
			</div>
			<div class="rowGender">
				<div class="rowTitle"><h4>성별</h4></div>
				<div class="memberGender">(회원 성별)</div>
			</div>
			<div class="rowAge">
				<div class="rowTitle"><h4>나이</h4></div>
				<div class="memberAge">(회원 나이)</div>
			</div>
			<div class="rowPhone">
				<div class="rowTitle"><h4>전화번호</h4></div>
				<div class="memberPhone">(회원 전화번호)</div>
			</div>
			<div class="rowBtn">
				<div class="memberModBtn"><input type="button" class="btn btn-info" value="수정" onclick="location.href='modifyMember'"></div>
			</div>
		</div>
	</div>
	
	</body>
</html>
