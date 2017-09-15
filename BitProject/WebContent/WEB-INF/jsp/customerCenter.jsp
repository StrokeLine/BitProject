<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<div class="customerCenter_page" style="margin-left: 350px;">
		<div class="customerCenterInquiry_list">
			<h3>나의 문의내역</h3>	
		</div>	
		<div class="customerCenterInquiry_items">
			<div class="inquiryNumber_item" style="width: 5%; display: inline-block;">
				<h5>NO</h5>
			</div>
			<div class="inquiryContent_item" style="width: 40%; display: inline-block;">
				<h5>문의내용</h5>
			</div>
			<div class="inquiryDate_item" style="width: 10%; display: inline-block;">
				<h5>문의일</h5>
			</div>
		</div>
		
		<%-- <c:forEach items="">
			<div class="customerCenterInquiry_contents">
				<div class="inquiryNumber">
					NO
				</div>
				<div class="inquiryContent">
					문의내용
				</div>
				<div class="inquiryDate">
					문의일
				</div>
			</div>			
		</c:forEach> --%>
		
		<div class="customerCenterInquiry_add" style="margin-top: 100px;">
			<h3>문의하기</h3>	
		</div>
		<div class="customerCenterInquiry_title" >
			<h5>문의 제목</h5>
		</div>
		<div>
			<input type="text" name="customerCenterInquiry_title" style="width: 400px;">
		</div>		
		<div class="customerCenter_inquiryContent" >
			<h5>문의 내용</h5>
		</div>
		<div>
			<textarea style="height:120px;width:500px;"></textarea>
		</div>				
		<div class="customerCenter_email">
			<h5>답변 받으실 email 주소</h5>
		</div>
		<div>
			<input type="text" name="customerCenter_email" style="width: 400px;">
		</div>			
				
		<div class="customerCenterInquiry_btn" style="margin-top: 150px;">
			<input type="button" value="문의하기"> 
		</div>
	</div>	
</body>
</html>