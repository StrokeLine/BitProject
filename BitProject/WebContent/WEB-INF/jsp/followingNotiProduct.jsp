<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>Hand Made - Pet Product</title>
	
	<!-- Bootstrap core JavaScript -->
	<script src="/jquery/jquery.min.js"></script>
	<script src="/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Bootstrap core CSS -->
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom fonts for this template -->
	<link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	<!-- Custom styles for this template -->
	<link rel="stylesheet" href="/css/main.css" />
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	
	<!-- Scripts -->
	<script src="/js/skel.min.js"></script>
	<script src="/js/util.js"></script>
	<script src="/js/main.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>

<style>
.fnPNoneRow{margin: 5% 39%;}

table th{
	text-align: center;
}

table td{
	text-align: center;
	vertical-align: middle;
}


</style>

<body>
	<div class="followingNotiPMain">
		<table class="table-wrapper">
			<thead>
				<tr>
					<th colspan="2">상품명</th>
					<th>가격</th>
					<th>상점명</th>
					<th>등록일</th>				
				</tr>
			</thead>
			<tbody>
				<c:if test='${notice_view_list == ""}'>
					<tr>
						<td colspan="5">
							<div class="fnPNoneRow"> 등록된 정보가 없습니다.</div>							
						</td>
					</tr>
				</c:if>
				<c:forEach var="notice_view" items="${notice_view_list }">
					<tr>
						<td>
							<c:if test="${notice_view.p_img != null }">
								<img src="downloadProductImg?p_index=${notice_view.p_index }" width="50" height="50">
							</c:if>						
						</td>
						<td>
							${notice_view.p_name }							
						</td>
						<td>
							<fmt:formatNumber value="${notice_view.p_price }" pattern="###,###,###,###원"></fmt:formatNumber>
						</td>
						<td>
							${notice_view.s_nick}						
						</td>
						<td>
							${notice_view.pn_date }							
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>