<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Map Test</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2beae3923c33025b9d6238c5db89d2a4&libraries=services"></script>
<script type="text/javascript">

	var wpid = null;
	var map = null;
	var infowindow = null;
	var geocoder = null;
	
	var latitude = null;
	var longitude = null;
	
	var errorMsg = ["알 수 없는 에러가 발생했습니다.", "위치정보를 수집할 권한이 없습니다.", "위치정보를 수집하는 시간을 초과하였습니다."];
	
	var address = new Array("서울 중구 덕수궁길 15", "서울 중구 무교로 21", "서울 중구 세종대로 110", "서울 중구 덕수궁길 15", "서울 중구 무교로 21", "서울 중구 세종대로 110");
	
	function geo_success(position) {
		/* do_something(position.coords.latitube, posision.coords.longitude); */
		
		var print = document.getElementById("print");
		print.innerHTML = "위치 정보를 가져왔습니다.</br>";
		
		latitude = position.coords.latitude;
		longitude = position.coords.longitude;
		
		var print = document.getElementById("print");
		print.innerHTML += "경도 : " + latitude + ", 위도 : " + longitude + "</br>";
		
		var container = document.getElementById('map');
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new daum.maps.LatLng(latitude, longitude), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
		
		map = new daum.maps.Map(container, options);
		geocoder = new daum.maps.services.Geocoder();
		infowindow = new daum.maps.InfoWindow({removable: true});
		
		addMarkers(address);
		
	}
	
	function geo_error(e) {
		var print = document.getElementById("print");
		print.innerHTML = errorMsg[e.code];
		
		var container = document.getElementById('map');
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new daum.maps.LatLng(37.566535, 126.97796919999999), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
		
		map = new daum.maps.Map(container, options);
		geocoder = new daum.maps.services.Geocoder();
		infowindow = new daum.maps.InfoWindow({removable: true});
		addMarkers(address);
	}

	var geo_options = {
		enableHighAccuracy	: true,
		maximunAge			: 30000,
		timeout				: 15000
		
	};
	
	function initMap() {
		wpid = navigator.geolocation.getCurrentPosition(geo_success, geo_error, geo_options);
	}
	
	var markers = [];
	var overlays = [];
	
	function addMarkers(address) {
		for(var i in address){
			geocoder.addressSearch(address[i], function(result, status) {
		
			    // 정상적으로 검색이 완료됐으면 
			     if (status === daum.maps.services.Status.OK) {
		
			        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
		
			        // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new daum.maps.Marker({
			            map: map,
			            position: coords
			        });
			        
			        markers.push(marker);
		
			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        daum.maps.event.addListener(marker, 'click', function() {
			        	var content = '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>';
			        	
			        	infowindow.setContent(content);
				        infowindow.open(map, marker);
					});
		
			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			    } else {
			    	var print = document.getElementById("print");
					print.innerHTML += addr + "의 위치를 알 수 없습니다.</br>";
			    }
			}); 					
		}
	}
	
	
	window.onload = initMap();
	
</script>
</head>
<body>
<div id="print"></div>

<div id="map" style="width:500px;height:400px;"></div>
</body>
</html>