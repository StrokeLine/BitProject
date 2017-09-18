/**
 * 페이지 이동
 */

//로그인 버튼
function login(url){
	if(url == '') {
		location.reload(true);
		return;
	}
	
	$(".container").load(url);		
	
} 


//마이페이지 
function myPagebutton(url){
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
			$('.container').load(data);

		},
		
		error: function(request, status, error) {

		}
	});
	*/
	$(".container").load(url);		
}

function productClick(url){
	if(url == '') {
		location.reload(true);
		return;
	}

		$(".container").load(url);		
	
} 
