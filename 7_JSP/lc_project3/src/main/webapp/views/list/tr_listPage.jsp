<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.lc.project.travel.model.vo.Travel, java.util.ArrayList"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>방구석여행</title>
    <link rel="icon" href="pic/logo.png"/>
    <link rel="apple-touch-icon" href="pic/logo.png"/>
    <!-- jQuery -->
    <script 
        src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script
        src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js"
        integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM="
        crossorigin="anonymous"></script>
    
    <!-- css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tr_list.css">
    
        
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link rel="icon" href="../../pic/logo.png"/>
    <link rel="apple-touch-icon" href="../../pic/logo.png"/>
</head>
<body>
   <header>
        <%@include file="../common/header.jsp"%>
    </header>

    <!-- 서울 추천 여행지 섹션 -->
    <section>
        <h1>${location} 추천 여행지</h1>
        <div class="gallery">
            <c:forEach var="item" items="${list1}">
                <div>
                    <img src="${item.picInfo}" alt="${item.trName}" onclick="location.href='travel.info?travel=${item.trName}'">
                    <h3>${item.trName}</h3>
                    <p>${item.trAddress}</p>
                </div>
        	</c:forEach>
        </div>
    </section>

    <!-- 서울 추천 맛집 섹션 -->
    <section class="sec">
        <h1>${location} 추천 맛집</h1>
        <div class="food">
            <c:forEach var="item2" items="${list2}">
            	<div>
	                <img src="${item2.picInfo}" alt="${item2.trName}" onclick="location.href='travel.info?travel=${item2.trName}'">
	                <h3>${item2.trName}</h3>
	                <p>${item2.trAddress}</p>
            	</div>
			</c:forEach>
        </div>
    </section>

    <!-- 행사 정보 섹션 -->
    <section>
        <div class="events">
            <c:forEach var="item3" items="${list3}">
            	<div>
	                <h2>행사</h2>
	                <h3>${item3.trName}</h3>
	                <p>${item3.trInfo}</p>
	                <button onclick="location.href='travel.info?travel=${item3.trName}'" class="but">자세히보기-></button>
            	</div>
			</c:forEach>
        </div>
    </section>
	<footer>
		<%@include file="../common/footer.jsp"%>
	</footer>
</body>
</html>