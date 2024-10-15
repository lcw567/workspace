<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath(); // 컨텍스트 경로 얻기
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <link rel="icon" href="../../pic/logo.png"/>
    <link rel="apple-touch-icon" href="../../pic/logo.png"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../css/myPage.css">
</head>
<body>
    <div id="header_wrapper">
        <a href="<%=contextPath%>">
            <div id="header_wrapper1">
                <div id="header_logo">
                    <img src="../../pic/logo.png" alt="" width="80" height="64">
                </div>
                <div id="header_letter">방구석 여행</div>
            </div>
        </a>
        <div id="header_wrapper2">
            <div id="header_toBusiness"><button>사업자 등록하기</button></div>
            <div id="myPage_Circle">
                <img id="hamBtn" src="../../pic/hamburgerBtn.png" alt="hamburgerBtn" width="30px" height="22px">
                <img id="avatar" src="../../pic/avatar.png" alt="avatar" width="35px" height="35px">
            </div>
        </div>
    </div>

    <div id="myPage_body">
        <div class="myPage"></div>
            <div id="profile">
                <div id="img-area">

                    <img src="../..pic/profile.png">

                    <img src="../../pic/profile.png">

                </div>
                <button>프로필 사진 변경</button>
                <div id="text-area">
                    <h3>${loginbs.bsName}님</h3>
                    <ul>
                        <li>email <br>${loginbs.bsEmail}</li>
                        <li>phone : ${loginbs.bsTel}</li>
                    </ul>
                </div>
            </div>
            <div>
                <div id="booking-area">
                    예약현황
                </div>
            </div>
        </div>
    </div>
</body>
</html>