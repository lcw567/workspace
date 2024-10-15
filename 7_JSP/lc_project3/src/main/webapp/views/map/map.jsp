<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>방구석 여행</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<style>
    body {
        font-family: "Noto Sans KR", system-ui;
        margin: 0px;
        padding: 0px;
    }
    /*오른쪽 사이드바*/
	.right-title {
    	font-size: 18px;
        font-weight: bold;
        margin-bottom: 15px;
        background-color: #7bbcb0;
        color:white;
        border-radius: 15px;
        text-align : center;
    }
    .right-sidenav{
    	width: 180px;
        background-color: #ddeeeb;
        padding: 10px;
        position: absolute;
        top: 20%;
        right: 50px;
        max-height: 480px;
        border-radius: 15px;
        text-align: center;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        z-index: 2;
        overflow: auto;
    }
    /* 왼쪽 사이드바 */
    .sidenav-title {
    	font-size: 18px;
        font-weight: bold;
        margin-bottom: 15px;
        background-color: #7bbcb0;
        color:white;
        border-radius: 15px;
        text-align : center;
    }
    .left-sidenav{
    	width: 150px;
        background-color: #ddeeeb;
        padding: 10px;
        position: absolute;
        top: 20%;
        left: 50px;
        max-height: 480px;
        border-radius: 15px;
        text-align: center;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        z-index: 2;
        overflow: auto;
    }
    /* 각각의 호텔 정보를 담는 박스 (이미지를 왼쪽에 배치하고 텍스트를 오른쪽에 배치) */
    .hotel-box {
        display: flex;
        align-items: center;
        padding: 15px;
        background-color: white;
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }
    .hotel-box img {
        width: 50px;  /* 이미지 너비를 줄임 */
        height: 50px;  /* 이미지 높이도 동일하게 줄임 */
        object-fit: cover;
        border-radius: 8px;
        margin-right: 10px; /* 이미지와 텍스트 간의 간격 */
    }
    .hotel-info {
        flex: 1; /* 텍스트 영역이 남은 공간을 차지하도록 설정 */
    }
    .hotel-name {
        font-size: 14px;
        font-weight: bold;
        margin-bottom: 5px;
    }
    .hotel-price {
        font-size: 12px;
        font-weight: bold;
        margin-bottom: 5px;
    }
    .hotel-button {
        width: 70px;
        padding: 5px;
        background-color: rgba(123, 188, 176, 0.9);
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        text-align: center;
        font-size: 12px; /* 버튼 텍스트 크기 줄임 */
    }
    /* 각각의 여행지 정보를 넣는 박스 */
    .sidenav-item {
		background-color: #ddeeeb;
        border-radius: 15px;
        margin-bottom: 0px;
        padding: 0px;
	}

    .sidenav-item img {
		width: 100%;
        height: auto;
        border-radius: 10px;
	}

    .sidenav-item p {
		margin: 5px 0;
    }
    
</style>
</head>
<body>
    <!-- header -->
	<%@include file="../common/header.jsp" %>

    <!-- 지도를 표시할 div 입니다 -->
        <!-- 관광지 박스 -->
        <div class="left-sidenav">
            <div class="sidenav-title">찜한 여행지</div>
			<c:forEach var="travel" items="${wishList}">
            	<div class="sidenav-item">
	                <img src="${travel.picInfo}" alt="${travel.trName}">
	                <p>${travel.trName}</p>
	                <p>${travel.trAddress}</p>
            	</div>
        </c:forEach>
    </div>
        <!-- 숙박업소 박스 -->
        <div class="right-sidenav">
            <div class="right-title">근처 숙박업소</div>
            <c:forEach var="hotel" items="${hotelList}">
            <div class="hotel-box">
                <img src="${hotel.picInfo}" alt="${hotel.hName}">
                <div class="hotel-info">
                    <div class="hotel-name">${hotel.hName}</div>
                    <div class="hotel-price">₩${hotel.price}</div> <!-- 호텔 가격 표시 -->
                    
                    <!-- 예약 버튼: hotel.info 페이지로 호텔 이름을 URL 파라미터로 전달 -->
	                <form action="${pageContext.request.contextPath}/hotel.info" method="get">
	                    <input type="hidden" name="hotel" value="${hotel.hName}" />
	                    <button type="submit" class="hotel-button">예약</button>
	                </form>
                </div>
            </div>
        </c:forEach>
    </div>
    
   <!-- 지도를 표시할 div 입니다 -->
    <div id="map" style="width:100%;height:900px;"></div>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=99929078a9d810f506f314a69d82b1f2"></script>
    <script language="javaScript">
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(37.575409, 126.983279), // 지도의 중심좌표
                level: 10 // 지도의 확대 레벨
            };

        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // 관광지 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [];
		<c:forEach var="travel" items="${wishList}">
		    positions.push({
		        title: '${travel.trName}',
		        latlng: new kakao.maps.LatLng(parseFloat('${travel.tr_map_lat}'), parseFloat('${travel.tr_map_long}'))
		    });
		</c:forEach>
		
		// 호텔 좌표 로그를 출력하려면 별도의 반복문을 사용하세요.
		<c:forEach var="hotel" items="${hotelList}">
		    console.log(parseFloat('${hotel.ht_map_lat}'));
		</c:forEach>

        // 숙박업소 마커를 표시할 위치와 title 객체 배열입니다
		 var accommodations = [];
		<c:forEach var="hotel" items="${hotelList}">
		    accommodations.push({
		        title: '${hotel.hName}',
		        latlng: new kakao.maps.LatLng(parseFloat('${hotel.ht_map_lat}'), parseFloat('${hotel.ht_map_long}'))
		    });
		    console.log(parseFloat('${hotel.ht_map_lat}'));
		</c:forEach>

        
        var imageSrc = "https://cdn-icons-png.flaticon.com/512/6350/6350319.png";
            
        for (var i = 0; i < positions.length; i ++) {

             // 마커 이미지의 이미지 크기 입니다
            var imageSize = new kakao.maps.Size(40, 40); 
    
            // 마커 이미지를 생성합니다    
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                map: map, // 마커를 표시할 지도
                position: positions[i].latlng, // 마커를 표시할 위치
                title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
                image : markerImage // 마커 이미지  
            });
            
      		// 인포윈도우를 생성합니다
        	var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="padding:5px; text-align:center; width:150px; font-size:12px;">' + positions[i].title + '</div>' // 인포윈도우에 표시할 내용
        	});

        	// 인포윈도우를 표시합니다
        	infowindow.open(map, marker);
    	}   
        
		var imageSrc = "https://cdn-icons-png.flaticon.com/512/5717/5717316.png";
            
        for (var i = 0; i < accommodations.length; i ++) {

             // 마커 이미지의 이미지 크기 입니다
            var imageSize = new kakao.maps.Size(40, 40); 
    
            // 마커 이미지를 생성합니다    
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                map: map, // 마커를 표시할 지도
                position: accommodations[i].latlng, // 마커를 표시할 위치
                title : accommodations[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
                image : markerImage // 마커 이미지  
            });
        }
    </script>
</body>
</html>