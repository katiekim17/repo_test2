	 var map = new daum.maps.Map(document.getElementById('map-cluster'), { // 지도를 표시할 div
	        center : new daum.maps.LatLng(37.566826005485716, 126.9786567859313), // 지도의 중심좌표 
	        level : 9 // 지도의 확대 레벨 
	    });
	    
	    // 마커 클러스터러를 생성합니다 
	    var clusterer = new daum.maps.MarkerClusterer({
	        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
	        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
	        minLevel: 5 // 클러스터 할 최소 지도 레벨 
	    });
	 
	    // 데이터를 가져오기 위해 jQuery를 사용합니다
	    // 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
	    
	    $.get("../resources/json/chicken.json", function(data) {
	        // 데이터에서 좌표 값을 가지고 마커를 표시합니다
	        // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
	        var markers = $(data.positions).map(function(i, position) {
	            return new daum.maps.Marker({
	                position : new daum.maps.LatLng(position.lat, position.lng)
	            });
	        });

	        // 클러스터러에 마커들을 추가합니다
	        clusterer.addMarkers(markers);
	    });
