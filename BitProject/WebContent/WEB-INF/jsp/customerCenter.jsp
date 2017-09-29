<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>	
	<div class="wrap" style="margin-left: 350px;">
		<div class="customerCenter_inquiryList_wrap" style="margin-top: 50px;">
			<div class="customerCenter_inquiryList_title">
				<h3>나의 문의내역</h3>
			</div>
			<div class="customerCenter_inquiryList_contents">
				<table class="table">
					<tr>
						<th>NO</th>
						<th>문의내용</th>
						<th>문의일</th>
						<th></th>						
					</tr>
					<c:forEach items="${customerCenterInquiry}" var="customer_center_inquiry">		
						<tr>
							<td id="customerCenter_inquiryNumber">
								${customer_center_inquiry.cc_index}
							</td>
							<td id="customerCenter_inquirySubject">
								${customer_center_inquiry.cc_subject}
							</td>
							<td id="customerCenter_inquiryDate">
								<fmt:formatDate value="${customer_center_inquiry.cc_date}" pattern="yyyy-MM-dd"/>
							</td>
							<td>
								<a href="#"><button type="button" class="btn btn-default">내용보기(아이콘)</button></a>
							</td>					
						</tr>
					</c:forEach>					
				</table>
			</div>
		</div>
		<form action="addCustomerCenterInquiry" method="post">		
			<div class="customerCenter_inquiryReg-wrap" style="margin-top: 100px;">
				<div class="customerCenter_inquiryReg_title">
					<h3>문의하기</h3>
				</div>
				<div class="customerCenter_inquiryReg_contents">			
					<div class="customerCenter_inquiryTitle" style="margin-top: 50px;">
						<h5>문의 제목</h5>
					</div>
					<div class="inquiryTitle_input" >
						<input type="text" name="customerCenterInquiry_title" style="width: 400px;">
					</div>		
					<div class="customerCenter_inquiryContent" style="margin-top: 50px;">
						<h5>문의 내용</h5>
					</div>
					<div class="inquiryContent_input">
						<textarea name="customerCenterInquiry_content" style="height:120px;width:500px;"></textarea>
					</div>				
					<div class="customerCenter_inquiryEmail" style="margin-top: 50px;">
						<h5>답변 받으실 email 주소</h5>
					</div>
					<div class="inquiryEmail_input">
						<input type="text" name="customerCenterInquiry_email" style="width: 400px;">
					</div>					
				</div>
				<div class="customerCenter_inquiryBtn" style="margin-top: 100px;">
					<button type="submit" class="btn btn-primary">문의하기</button>			
				</div>
			</div>		
		</form>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script type="text/javascript" src="/js/bootstrap.js"></script>	
	</div>	
</body>
</html>