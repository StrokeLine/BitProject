<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
.fnSNoneRow{margin: 5% 39%;}

table th{
	text-align: center;
}

table td{
	text-align: center;
	vertical-align: middle;
}

</style>

<script type="text/javascript">
	function storeNoti(s_index){
		top.location.href="followingNotiStore?s_index=" + s_index;
	}
</script>

<div class="followingNotiSMain">
	<table class="table-wrapper">
		<thead>
			<tr>
				<th style="width: 400px;">상점명</th>
				<th>제목</th>
				<th style="width: 200px;">등록일</th>
			</tr>
		</thead>
		<tbody>
			<c:if test='${notice_view_list == ""}'>
				<tr>
					<td colspan="3">
						<div class="fnSNoneRow"> 등록된 정보가 없습니다.</div>
					</td>
				</tr>
			</c:if>
			<c:forEach var="notice_view" items="${notice_view_list}">
				<tr>
					<td>
						${notice_view.s_nick }
					</td>
					<td>
						<a href="javascript:storeNoti(${notice_view.s_index })"><div style="width: 100%;">${notice_view.sn_subject}</div></a>
					</td>
					<td>
						${notice_view.sn_date}
					</td>
				</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
</html>

