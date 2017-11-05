<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Map Test</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2beae3923c33025b9d6238c5db89d2a4&libraries=services"></script>

<style>
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 13px 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info .link {color: #5085BB;}
    .great_stars {position: relative; overflow: hidden; display: inline-block; width: 54px; height: 10px; background: no-repeat 0 0 url(/images/img_star.gif); vertical-align: text-top;}
	.great_stars * {overflow: hidden; float: left; width: 0; height: 100%; background: no-repeat 0 -25px url(/images/img_star.gif);}
</style>

<script type="text/javascript">

	var wpid = null;
	var map = null;
	var infowindow = null;
	var geocoder = null;
	
	var latitude = null;
	var longitude = null;
	
	var errorMsg = ["알 수 없는 에러가 발생했습니다.", "위치정보를 수집할 권한이 없습니다.", "위치정보를 수집하는 시간을 초과하였습니다."];
	
	var store_list = new Array();
	
	
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
		
		getAllAddress();
		
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
		
		getAllAddress();
	}

	var geo_options = {
		enableHighAccuracy	: true,
		maximunAge			: 30000,
		timeout				: 15000
		
	};
	
	
	var overlays = [];
	
	// 문자열에 해당 문자 삽입
	String.prototype.splice = function(idx, rem, str) {
	    return this.slice(0, idx) + str + this.slice(idx + Math.abs(rem));
	};
	
	function getAllAddress() {
		var idx = 0;
		for(var i in store_list) {
			geocoder.addressSearch(store_list[i].s_address, function(result, status) {
				
				// 주소에서 좌표 값으로 변환
			    // 정상적으로 검색이 완료됐으면 
				if (status === daum.maps.services.Status.OK) {
					var coords = new daum.maps.LatLng(result[0].y, result[0].x);
					
					// 최표에서 도로명, 구 주소 변환
					geocoder.coord2Address(coords.getLng(), coords.getLat(), function(result, status) {
						if (status === daum.maps.services.Status.OK) {
					    	var addr = null;
							
							console.log("도로명 주소 : " + result[0].road_address.address_name);
					    	addr = result[0].address.region_3depth_name + " " + result[0].address.main_address_no;
					    	if(result[0].address.sub_address_no) {
					    		addr += "-" + result[0].address.sub_address_no;
					    	}
					    	console.log("구 주소 : " + addr);
					    	
					    	var post = result[0].address.zip_code.splice(3, 0, "-");
					    	
					    	
					    	console.log("(우)"+result[0].road_address.zone_no + " (" + post + ")");
   	
				        	var content = '<div class="wrap">' + 
							            '    <div class="info">' + 
							            '        <div class="title">' + 
							            			store_list[idx].s_nick + 
							            '        </div>' + 
							            '        <div class="body">' + 
							            '            <div class="img">' +
							            '                <img src="/images/store_default.jpg" width="73" height="70">' +
							            '           </div>' + 
							            '            <div class="desc">' + 
							            '                <div class="ellipsis">' + result[0].road_address.address_name + '</div>' + 
							            '                <div class="jibun ellipsis">(우)' + result[0].road_address.zone_no + ' (지번) ' + addr + '</div>' + 
							            '                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
							            '				 <span class="great_stars">' +
							            '				 	<span class="stars" style="width: ' + (Math.floor(Math.random() * (100 - 0 + 1)) + 0) + '%;"></span>' +
							            ' 				 </span>'
							            '            </div>' + 
							            '        </div>' + 
							            '    </div>' +    
							            '</div>';
							
							var markers = [{
				        		content: content,
				        		latlng: coords
							}];
							
							addMarkers(markers, idx++);
						}
					});
				} else {
				
				}
			});		
		}
		
		
	}

	var positions = new Array();
	
	function addMarkers(markers, idx) {
		positions.push(markers);
		var marker = new daum.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: markers[0].latlng // 마커의 위치
	    });

	    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
	    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
	    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	    daum.maps.event.addListener(marker, 'click', makeClickListener(map, marker, idx));
	    /* daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow)); */
	
	}
	
	function makeClickListener(map, marker, idx) {
		return function() {
			infowindow.setContent(positions[idx][0].content);
	        infowindow.open(map, marker);
	    };
	}

	function initMap() {
		
		<c:forEach var="store" items="${store_list}">
			var obj = new Object();
			obj.s_index = "${store.s_index}";
			obj.m_index = "${store.m_index}";
			obj.s_nick = "${store.s_nick}";
			obj.s_bank = "${store.s_bank}";
			obj.s_holder = "${store.s_holder}";
			obj.s_account = "${store.s_account}";
			obj.s_imgSrc = "${store.s_imgSrc}";
			obj.s_address = "${store.s_address}";
			obj.s_visit = "${store.s_visit}";
			obj.s_sale = "${store.s_sale}";
			obj.s_grade = "${store.s_grade}";
			obj.s_date = "${store.s_date}";
			store_list.push(obj);
		</c:forEach>
		
		wpid = navigator.geolocation.getCurrentPosition(geo_success, geo_error, geo_options);
	}
	
	window.onload = initMap();
	
</script>
</head>
<body>
<div id="print"></div>

<div id="map" style="width:500px;height:400px;"></div>
</body>
</html>