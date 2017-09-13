/**
 * 페이지 이동
 */

//마이페이지 
function myPagebutton(url){
	if(url == '') {
		location.reload(true);
		return;
	}
	$(".container").load(url);
}
