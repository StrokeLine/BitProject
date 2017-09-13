<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--     
<script src="https://code.jquery.com/jquery-3.0.0.js"></script>
<script src="https://code.jquery.com/jquery-migrate-3.0.0.js"></script>
 -->
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
<script src="/js/followingNotiScript.js"></script>

<div class="followingNoti_main">
	<div class="followingNoti_top">
		<div class="followingNoti_product" style="display: inline-block;">
			<h4><a href="javascript:changePage('followingNotiProduct')">상품별 조회</a></h4>
		</div>
		<div class="followingNoti_store" style="display: inline-block;">
			<h4><a href="javascript:changePage('followingNotiStore')">상점별 조회</a></h4>		
		</div>
	</div>
	<div class="followingNoti_bottom">
		<div class="followingNoti_content">
			<jsp:include page="${param.method}.jsp"></jsp:include>
		</div>
	</div>
</div>