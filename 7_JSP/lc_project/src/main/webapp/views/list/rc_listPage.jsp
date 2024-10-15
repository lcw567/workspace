<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta logo="viewport" content="width=device-width, initial-scale=1.0">
   	<title>방구석여행</title>
    <link rel="icon" href="pic/logo.png"/>
    
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="./css/rentcar.css" />
</head>
<body>
	<%@include file="../common/header.jsp"%>
    <div class="rentcar-wrap">
        <div id="rentcar-area">
        	<c:forEach var="car" items="${carList}">
	            <div id="car-container">
	                <div id="car-area">
	                    <div id="car-logo">
	                    	<c:choose>
	                    		<c:when test="${car.carId eq '기아'}">
	                    			<img src="./pic/kialogo.png" alt="">
	                    		</c:when>
	                    		<c:when test="${car.carId eq '현대'}">
	                    			<img src="./pic/hyundailogo.png" alt="">
	                    		</c:when>
	                    	</c:choose>
	                    	<script>
							  console.log("${car.carNum}");
							</script>
	                        <p>${car.carId}</p>
	                        <h3>${car.carName}</h3>
	                    </div>
	                    <div id="car-img">
	                        <img src="${car.carPic}" alt="${car.carName}">
	                    </div>
	                </div>
	                <div id="price-area">
	                    <div id="car-name">
	                        <div id="car-tag">방구석여행</div>
	                        <p>${car.carName}</p>
	                        <span>${car.carInfo}</span>
	                    </div>
	                    <div id="car-price">
	                        <div id="price-text">
	                            <div id="sale-tag"></div>
	                            <span id="price-regular">1일 요금 ${car.carPrice}원</span>
	                            <span id="price-sale">총 금액 ${car.carPrice * day}원</span>
	                        </div>
	                        <c:choose>
	                        	<c:when test="${startDate != null}">
	                            	<form>
	                            		<input type="hidden" name="startDate" value="${startDate}">
	                            		<input type="hidden" name="endDate" value="${endDate}">
	                            		<input type="hidden" name="location" value="${location}">
	                            		<input type="hidden" name="carNum" value="${car.carNum}">
	                            		<button id="b-button" type="submit" onclick="alert('아직 예약 불가능합니다.')">
		                            	예약
		                            	</button>
	                            	</form>
	                        	</c:when>
	                        	<c:otherwise>
	                            	<button id="b-button"disabled="disabled">
	                            	날짜를 선택해주세요
	                            	</button>
	                        	</c:otherwise>
	                        </c:choose>
	                    </div>
	                </div>
	            </div>
	        </c:forEach>
	    </div>
        <div class="rent-sidebar">
            <div id="side-bar">
                <h2>선택한 여정</h2>
                   <c:choose>
                       <c:when test="${startDate == null}">
	                    <form action="selectDate.rc" method="post">
                       	<div id="rent-location">
                        <h2>지점선택</h2>
                        <select name="rent-location" id="rent-select">
                            <option value="서울">서울</option>
                            <option value="부산">부산</option>
                            <option value="대구">대구</option>
                            <option value="인천">인천</option>
                            <option value="대전">대전</option>
                            <option value="울산">울산</option>
                            <option value="제주">제주</option>
                        </select>
                        </div>
                        <div id="rent-date">
                            <input type="text" id="rentcarDate">
                            <input type="hidden" name="startDate" id="startDateInput">
                            <input type="hidden" name="endDate" id="endDateInput">
                        </div>
                        <button id="rent-btn">검색</button>
               		   </form>	
                       </c:when>
                       <c:otherwise>
                       	<div id="rent-location">
                        <h2>지점선택</h2>
                        <select name="rent-location" id="rent-select">
                            <option value="">${location}</option>
                        </select>
                        </div>
                        <div id="rent-date">
                            ${startDate} ~ ${endDate}
                        </div>
                           <button id="rent-btn"></button>
                       </c:otherwise>
               	</c:choose>
            </div>
        </div>
    </div>
    <script>
        $('#rentcarDate').daterangepicker({
            "locale": {
                "format": "YYYY-MM-DD",
                "separator": " ~ ",
                "applyLabel": "확인",
                "cancelLabel": "취소",
                "fromLabel": "From",
                "toLabel": "To",
                "customRangeLabel": "Custom",
                "weekLabel": "W",
                "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
                "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
            },
            "startDate": new Date(),
            "endDate": new Date(),
            "drops": "auto"
        }, function search(start, end, label) {
            console.log('stard: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
        });
        $('#rentcarDate').on('apply.daterangepicker', function(ev, picker) {
                $('#startDateInput').val(picker.startDate.format('YYYY-MM-DD'));
                $('#endDateInput').val(picker.endDate.format('YYYY-MM-DD'));
                $(this).val(picker.startDate.format('YYYY-MM-DD') + ' - ' + picker.endDate.format('YYYY-MM-DD'));
        });
        $('#rentcarDate').on('cancel.daterangepicker', function(ev, picker) {
            $('#startDateInput').val('');
            $('#endDateInput').val('');
            $(this).val('');
        });
    </script>
	<%@include file="../common/footer.jsp"%>
</body>
</html>