<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="<%=contextPath %>/css/footer.css">
    <!-- jQuery -->
    <script 
        src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script
        src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js"
        integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM="
        crossorigin="anonymous"></script>
        
    <!-- font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

    <script src="https://cdn.portone.io/v2/browser-sdk.js"></script>
</head>
<body>
    <div id="footer_wrapper">
        <div class="footer" id="footer_wrapper1">
            <table align="center">
                <tr id="footer_left">
                    <th id="footer_logo_picture" rowspan="2" width="150px"><img src="<%=contextPath%>/pic/logo.png" alt="logo" width="100px" height="80px"></th>
                    <td id="footer_logo_letter" rowspan="2" width="150px">방구석 여행</td>
                    <th>COMPANY</th>
                    <th>HELP CENTER</th>
                    <th>CONTACT INFO</th>
                    <th style="width: 50px;"></th>
                </tr>
                <tr>
                    <td>About Us</td>
                    <td>Find a Property</td>
                    <td>Phone: 1234567890</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td id="footer_left1" colspan="2" rowspan="3">
                        "세상을 보라, 그것이 삶이다. – 조지 버나드 쇼"<br>
바쁜 일상 속에서도 세상을 만나는 방법은 방구석 여행에 있습니다. 여행은 멀리 있지 않습니다. 방구석에서 세계 각지의 호텔을 예약하고 새로운 삶의 일면을 경험하세요. 당신만의 특별한 순간을 방구석에서 시작하세요! 
                    </td> 
                    <td>Legal Information</td>
                    <td>How To Host?</td>
                    <td>Email: company@email.com</td>
                    <td>&nbsp;</td>
                </tr>&nbsp
                <tr>
                    <td>Contact Us</td>
                    <td>Why Us?</td>
                    <td>Location: 100 Smart Street, LA, USA</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Blogs</td>
                    <td>FAQs</td>
                    <td rowspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <th id="footer_store" rowspan="2" colspan="2">
                        <button style="border-radius: 5px;">PlayStore</button>
                        <button style="border-radius: 5px;">AppleStore</button>
                    </th>
                    <td>&nbsp;</td>
                    <td>Rental Guides</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr>
        </div>
        <div id="footer_wrapper2">
            <table align="center">
                <tr>
                    <td id="footer_bottom_left">
                        Copyright © 2024 Life Cloud | All Right Reserved
                    </td>
                    <td id="footer_bottom_middle"></td>
                    <td id="footer_bottom_right">
                        Created with LifeCloud
                    </td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>