<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.lc.project.travel.model.vo.Travel, java.util.ArrayList, com.lc.project.travel.model.vo.tReview, com.lc.project.member.model.vo.Member" %>
<%	
	Member loginUser = (Member)session.getAttribute("loginUser");
	if (loginUser==null){
		loginUser = new Member("000");
	}
	Travel t = (Travel)request.getAttribute("t");
	ArrayList<Travel> tlist = (ArrayList<Travel>)request.getAttribute("tlist");
	ArrayList<String> category = (ArrayList<String>)request.getAttribute("category");
	ArrayList<tReview> rlist = (ArrayList<tReview>)request.getAttribute("rlist");
	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>방구석여행</title>
    <link rel="icon" href="<%=request.getContextPath()%>/pic/logo.png"/>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/pic/logo.png"/>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <!-- jQuery -->
    <script 
        src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script
        src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js"
        integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM="
        crossorigin="anonymous"></script>
         <!--
        2. 설치 스크립트
        * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
    -->
    <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>   


    <link rel="preconnect" href="https://fonts.googleapis.com">

	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	  
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <style>
        body{
        	font-family: "Noto Sans KR", sans-serif;
		    margin: 0px;
		    padding: 0px;
		}
        .side{
            width: 20%;
        }
        .content{
            
            width: 60%;
        }
        #wrapper{
            width: 100%;
        }
        #wishlistbt{
			float: right;
        	width: 90px;
        	background-color: #7bbcb0;
            border: none;
            color: white; 
            border-radius: 15px;
            cursor: pointer;
            font-size: 16px;
            height: 40px;	
        }

        .nav-area{ 
            display: flex;
            justify-content: center;
            background: white;
            border-top: 1px solid rgb(0, 0, 0);
            border-bottom: 1px solid rgb(0, 0, 0);
            width: 100%;
            padding: 0;
        }
        .menu{
            display: table-cell;
            width: 150px;
            height: 50px;
        }
        .menu a{
            color: black;
            font-size: 20px;
            font-weight: bold;
            text-align: center;
            width: 100%;
            height: 100%;
            display: inline-block;
            line-height: 50px;
            text-decoration: none;
        }
        .menu a:hover{
            color:black;
            border-top: 2px solid rgb(0, 0, 0);
            
        }
        #category{
        	display:felx;
        	float: right;
        }
        #category button{
        	float: right;
            width: 75px;
            height: 25px;
            font-size: 15px;
            border: 0px;
            background: #7bbcb0;
            color: white;
            border-radius: 40px;
            margin: 2px;
            
        }
        .sidenav-header {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
            background-color: #7bbcb0;
            color: white;
            border-radius: 15px;
        }

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

        .sidenav-footer {
            margin-top: 20px;
        }

        .sidenav-footer button {
            background-color: #7bbcb0;
            border: none;
            color: white;
            padding: 0px;
            border-radius: 15px;
            width: 100%;
            cursor: pointer;
            height: 50px;
            font-size: 13px;
        }

        .sidenav-footer button:hover {
            background-color: #5da396;
            
        }

        .nav-area.fixed {
            position: fixed; /* 스크롤 시 상단에 고정 */
            top: 0;
            left: 50%; /* 화면 중앙에 배치 */
            transform: translateX(-50%); /* 가운데 정렬 */
            width: 100%; /* width는 JavaScript에서 설정 */
            z-index: 100;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1); /* 고정 시 그림자 추가 */
            border-top: 0px solid rgb(0, 0, 0);
            border-bottom: 0px solid rgb(0, 0, 0);
        }
        /* 기본 상태: 상단에서 40%에 위치 */
        .sidenav {
            width: 150px;
            background-color: #ddeeeb;
            padding: 10px;
            position: absolute;
            top: 40%;
            right: 50px;
			max-height: 600px;
            overflow: auto;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            transition: top 0.5s ease-in-out; /* top 값이 변할 때 부드럽게 변화 */
        }

        /* 스크롤 후 중앙에 고정될 때 적용될 스타일 */
        .sidenav.fixed {
            position: fixed;
            top: 50%; /* 화면 중앙에 고정 */
            transform: translateY(-50%);
            right: 50px;
            z-index: 100;
        }
        .bpcontent{
            padding: 0;
            height: 500px;
            margin-bottom: 100px;
        }
        .spcontent{
            display: flex;
            width: auto;
        }
        .spcontent img{
            width: auto;
        }
        #review{
            width: 90%;
            height: 70%;
            margin-top: 20px;
            margin-left: 50px;
            margin-right: 50px;
            
        }
        #reviewbt{
        	width: 90px;
        	background-color: #7bbcb0;
            border: none;
            color: white;
            padding: 0px;
            border-radius: 15px;
            cursor: pointer;
            font-size: 13px;
            height: 30px;
            float: right;
            margin-top: 10px;
            margin-right: 50px;
        }
        .recommendtr {
            width: 100%;
            height: 250px;
            display: flex;
            background-color: #ddeeeb;
            border-radius: 15px;
            text-align: center;
            justify-content: center;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .recommendtr-item {
        	width: 170px;
            margin: 15px;
            border-radius: 15px;
            margin-bottom: 0px;
            padding: 0px;
            
        }

        .recommendtrimg {
            width: 150px;
            height: 150px;
            border-radius: 10px;
            cursor: pointer;
        }

        .recommendtr p {
            margin: 5px 0;
        }
    </style>

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    
</head>
<body>
    <%@include file="../common/header.jsp" %>
    <% if(alertMsg != null) {%>
		<script>
			alert("<%=alertMsg%>");
		</script>
		<% session.removeAttribute("alertMsg"); %>
	<% } %>

    <div id="wrapper">
        <table>
            <tr style="height:50px">
                <td class="side"></td>
                <td colspan="3" style="text-align: center; vertical-align: bottom;" id="wisharea">
                	<% if(loginUser.getUserName().equals("000")) {%>
						<script>
						function insertwish(){
                			alert("로그인이 필요한 기능입니다.")
                		}
						</script>
					<% } else{%>
						<script>
							function insertwish(){
	                			location.href="insertwish.tr?travel=<%=t.getTrName() %>";
	                	
	                		}
							function deletewish(){
	                			location.href="deletewish.tr?travel=<%=t.getTrName() %>";
	                	
	                		}
							const travelName = "<%= t.getTrName() %>";
	                        window.onload = function() {
	                        	$.ajax({
                        			url: "wish.tr",
                        			contentType: "application/json",
                        			data: {
                        				userId: "<%=loginUser.getUserId()%>"
                        			},
                        			success: function(res){
                        				let str = "";
                                        for(let tra of res){
                                        	str += ("<div class='sidenav-item' onclick='location.href=\"travel.info?travel="+tra.trName+"\"'>" +
                                                    "<img src=\"" +tra.picInfo + "\">" +
                                                    "<p><strong>" + tra.trName + "</strong></p>" +
                                                    "<p>" + tra.trAddress + "</p>" +
                                                    "</div>")
                                              if(tra.trName === travelName){
                                          		var el = document.getElementById("wisharea");
                                          		el.innerHTML = "<button id='wishlistbt' style='float: right;' onclick='deletewish()'><b>취소하기</b></button>"
                                          	}
                                        }
										
                                        var element = document.getElementsByClassName("sidecontent")[0];  
    		                        	element.innerHTML = str;
                        			},error: function(){
                        				console.log("ajax통신 실패")
                        			}
                        		})
	                        	
	                        	
	                        };
                		</script>
					<%} %>
					<button id="wishlistbt" style="float: right;" onclick="insertwish()"><b>찜하기</b></button>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr>
                <td class="side"></td>
                <td colspan="3" style="text-align: center; vertical-align: bottom;">
                	<div>
                		<b style="font-size: 40px; margin-left: 0px;"><%=t.getTrName()%></b>

                	</div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr>
                <td class="side"></td>
                <td class="side" >  	 
                </td>
                <td style="width: 20%; text-align: center; vertical-align: top;"><b style="font-size: 20px;"><%=t.getTrAddress()%></b></td>
                <td class="side">
                    <div id="category">
                    	<%for (String ca : category){ %>
                        	<button style="cursor:context-menu;"><%=ca %></button>
                        <% } %>
                        <button style="cursor:context-menu;"><%=t.getTr_location() %></button>
                        <button style="cursor:context-menu;"><%=t.getTr_theme() %></button>
                    </div>
                </td>
                <td class="side"></td>
            </tr>
            <tr>
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div class="nav-area">
                        <div class="menu"><a href="#picture">사진보기</a></div>
                        <div class="menu"><a href="#info">상제정보</a></div>
                        <div class="menu"><a href="#talk">여행지리뷰</a></div>
                        <div class="menu"><a href="#recommend">근처다른여행지</a></div>
                        <script>
                            $(document).ready(function(){
                                // nav-area 요소를 선택
                                var navArea = $('.nav-area');
                                // nav-area가 처음 위치하는 offset
                                var navOffset = navArea.offset().top;
                                // nav-area의 부모 요소 너비 (스크롤 시에도 고정된 너비로 유지하기 위함)
                                var navAreaWidth = navArea.outerWidth();
                        
                                // 스크롤 이벤트 감지
                                $(window).on('scroll', function() {
                                    // 현재 스크롤 위치
                                    var scrollPos = $(window).scrollTop();
                        
                                    // 스크롤 위치가 nav-area 위치를 넘어가면 fixed 클래스 추가
                                    if (scrollPos >= navOffset) {
                                        navArea.addClass('fixed');
                                        navArea.css('width', navAreaWidth); // 고정된 너비 설정
                                    } else {
                                        // 그렇지 않으면 fixed 클래스 제거하고 원래 상태로 되돌림
                                        navArea.removeClass('fixed');
                                        navArea.css('width', ''); // width 속성을 초기화
                                    }
                                });
                        
                                // 윈도우 크기가 조정될 때도 nav-area의 너비를 업데이트
                                $(window).on('resize', function() {
                                    if (!navArea.hasClass('fixed')) {
                                        // 고정되지 않았을 때만 nav-area의 너비를 다시 계산
                                        navAreaWidth = navArea.outerWidth();
                                    }
                                });
                            });
                        </script>
                        
                    </div>
                    
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="picture">
                <td class="side" id="pic"></td>
                <td colspan="3">
                    <div class="bpcontent">
                        <img src="<%=t.getPicInfo() %>" width="100%" height="100%">
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side">
                    <div class="sidenav">
                        <div class="sidenav-header">찜한 여행지</div>
                        <div class=sidecontent></div>
                        
                        <div class="sidenav-footer">
                        	<button onclick="location.href='tr.hotel'"><div style="vertical-align: middle;">여행지 기준<br>호텔 검색</div></button>
                            
                        </div>
                        <script>
                            $(document).ready(function() {
                                var sidenav = $('.sidenav');
                                var sidenavOffset = sidenav.offset().top; // sidenav의 원래 위치
                                var windowHeight = $(window).height(); // 윈도우 창의 높이
                                var isFixed = false; // sidenav가 고정되었는지 여부를 추적
                        
                                $(window).on('scroll', function() {
                                    var scrollPos = $(window).scrollTop();
                        
                                    // 현재 스크롤이 sidenav의 원래 위치를 넘으면
                                    if (scrollPos >= sidenavOffset && !isFixed) {
                                        isFixed = true;
                                        sidenav.css({
                                            'position': 'fixed',
                                            'top': '50%', // 부드럽게 이동하도록 top 값을 변경
                                            'transform': 'translateY(-50%)'
                                        });
                                    } 
                                    // 스크롤 위치가 sidenav의 원래 위치보다 위로 올라가면 원래 상태로 돌아감
                                    else if (scrollPos < sidenavOffset && isFixed) {
                                        isFixed = false;
                                        sidenav.css({
                                            'position': 'absolute',
                                            'top': '40%', // 원래 위치로 돌아감
                                            'transform': 'none'
                                        });
                                    }
                                });
                            });
                        </script>
                        
                    </div>
                </td>
            </tr>
            <tr id="info">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div>
                        <h2>상세정보</h2>
                        <hr>
                    </div>
                    <%=t.getTrInfo() %>
                    <br><br>
					<!-- 지도를 표시할 div 입니다 -->
			          <div id="map" style="width:100%;height:500px;"></div>
			      
			          <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=99929078a9d810f506f314a69d82b1f2"></script>
			          <script>
			              var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			                  mapOption = { 
			                      center: new kakao.maps.LatLng(<%=t.getTr_map_lat() %>,<%=t.getTr_map_long() %>), // 지도의 중심좌표
			                      level: 3 // 지도의 확대 레벨
			                  };
			      
			              var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			      
			              // 마커가 표시될 위치입니다 
			              var markerPosition  = new kakao.maps.LatLng(<%=t.getTr_map_lat() %>,<%=t.getTr_map_long() %>); 
			      
			              // 마커를 생성합니다
			              var marker = new kakao.maps.Marker({
			                  position: markerPosition
			              });
			      
			              // 마커가 지도 위에 표시되도록 설정합니다
			              marker.setMap(map);
			      
			              // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
			              // marker.setMap(null);    
			          </script>
                    
                    <div style="margin-bottom: 100px;"></div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="talk">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div>
                        <h2>여행지 리뷰</h2>
                        <hr>
                        <form action="review.tra" method="POST">
                        	<input type="hidden" name="userId" value="<%=loginUser.getUserId()%>">
                        	<input type="hidden" name="travel" value="<%=t.getTrName()%>">
                        	<div style="width: 100%; height: 300px; background: #ddeeeb; margin-bottom: 100px;">
                            <textarea id="review" placeholder="리뷰를 작성해주세요." style="resize: none;" name="review"></textarea><br>
                            <button id="reviewbt" type="submit" style="margin-bottom: 20px;">등록</button>
                        	</div>
                        </form>
                        <div>
                            <!-- 리뷰나올영역-->
                            <% for(tReview tr : rlist){ %>
		                        <div style="text-align: right;">
	                            	<table style="margin-top: 30px;">
		                            	<tr>
		                            		<td style="width: 80px; text-align: left;">
		                            			<b><%=tr.getWriter() %></b>
		                            		</td>
		                            		<td style="text-align: left;">
		                            			<%=tr.getContent() %>
		                            		</td>
		                            	</tr>
		                            </table>
		                            <%=tr.getReviewDate() %>
	                            </div>
	                            <hr>
	                		<%} %>
                            
                        </div>
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="recommend">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div style="margin-top: 50px;">
                        <h2>근처 다른 여행지</h2>
                        <hr>
                    </div>
                    <div class="recommendtr" style="margin-bottom: 100px;">
                    <% for(Travel tra : tlist){ %>
	                        <div class="recommendtr-item">
	                            <img class="recommendtrimg" src="<%=tra.getPicInfo() %>" onclick="location.href='travel.info?travel=<%=tra.getTrName()%>'">
	                            <p onclick="location.href='travel.info?travel=<%=tra.getTrName()%>'" style="cursor: pointer;"><strong><%=tra.getTrName() %></strong></p>
	                            <p onclick="location.href='travel.info?travel=<%=tra.getTrName()%>'" style="cursor: pointer;"><%=tra.getTrAddress() %></p>
	                        </div>
	                <%} %>
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
        </table>
    </div>
    <%@include file="../common/footer.jsp" %>
</body>
</html>
