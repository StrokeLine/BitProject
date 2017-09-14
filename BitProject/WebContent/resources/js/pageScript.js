/**
 * 페이지 이동
 */

//마이페이지 
function myPagebutton(url){
	if(url == '') {
		location.reload(true);
		return;
	}
	
	if(url == "myPage"){
		$(".container").load("myPageCtrl?myPageNum=1");
	}else {
		$(".container").load(url);		
	}
	
}

function productClick(url){
	if(url == '') {
		location.reload(true);
		return;
	}

		$(".container").load(url);		
	
} 
