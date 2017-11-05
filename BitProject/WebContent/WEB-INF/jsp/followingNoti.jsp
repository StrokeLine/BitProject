<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--     
<script src="https://code.jquery.com/jquery-3.0.0.js"></script>
<script src="https://code.jquery.com/jquery-migrate-3.0.0.js"></script>
 -->
<script src="/jquery/jquery.min.js"></script> 
<script src="/js/followingNotiScript.js"></script>
<script type="text/javascript">
	/**
	 * 관심목록 알림 페이지
	 */
	
	function changePage(url) {
		if(url == '') {
			location.reload(true);
			return;
		}
		
		$.ajax({
			type: 'POST',
			url: url,
			async: false,
			data: "",
			contentType: "application/x-www-form-urlencode; charset=UTF-8",
			success: function(data) {
				$('.followingNoti_content').html(data);
		
			},
			
			error: function(request, status, error) {
				alert(error);
			}
		});
		
		
	//	$(".followingNoti_content").html(url);
		
	}
</script>
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