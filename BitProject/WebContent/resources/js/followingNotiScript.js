/**
 * 관심목록 알림 페이지
 */

function changePage(url) {
	if(url == '') {
		location.reload(true);
		return;
	}
	/*
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
	*/
	
	$(".followingNoti_content").load(url);
	
}