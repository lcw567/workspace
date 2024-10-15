<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.lc.project.hotel.model.vo.Hotel, java.util.ArrayList, com.lc.project.travel.model.vo.Travel, com.lc.project.hotel.model.vo.Room"%>
<%	
	Hotel h = (Hotel)request.getAttribute("h");	
	ArrayList<Travel> tlist = (ArrayList<Travel>)request.getAttribute("tlist");
	ArrayList<Hotel> hlist = (ArrayList<Hotel>)request.getAttribute("hlist");
	ArrayList<Room> rlist = (ArrayList<Room>)request.getAttribute("rlist");
	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>방구석여행</title>
    <!-- jQuery -->
    <script 
        src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script
        src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js"
        integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM="
        crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	
    <script src="https://cdn.portone.io/v2/browser-sdk.js"></script>
    <link rel="icon" href="././pic/logo.png"/>
    <link rel="apple-touch-icon" href="././pic/logo.png"/>
    <link rel="stylesheet" href="././css/ht_infoPage.css" />
</head>
<body id=system-ui>
    <%@include file="../common/header.jsp" %>
    <% if(alertMsg != null) {%>
		<script>
			alert("<%=alertMsg%>");
		</script>
		<% session.removeAttribute("alertMsg"); %>
	<% } %>
    <div id="wrapper">
        <table>
            <tr>
                <td class="side"></td>
                <td ></td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr class="picture">
                <td class="side"></td>
                <td colspan="3">
                    <img src="<%=h.getPicInfo()%>" class="large-image">
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="info">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div style="margin-top: 100px;">
                        <b style="font-size: 30px"><%=h.gethName() %></b><br>
                        <b style="font-size: 15px; margin-bottom: 0px"><%=h.gethAddress() %></b>
                        <hr>
                    </div>
                    <div style="margin-bottom: 20px;">
                    	사업자 정보 <br>
                        <%=h.getBsName() %> <br>
						<%=h.getBsTel() %>
                    </div>
                    
                    <br><br>
                    <!-- 지도를 표시할 div 입니다 -->
			          <div id="map" style="width:100%; height:500px;"></div>
			      
			          <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=99929078a9d810f506f314a69d82b1f2"></script>
			          <script>
			              var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			                  mapOption = { 
			                      center: new kakao.maps.LatLng(<%=h.getHt_map_lat() %>,<%=h.getHt_map_long() %>), // 지도의 중심좌표
			                      level: 3 // 지도의 확대 레벨
			                  };
			      
			              var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			      
			              // 마커가 표시될 위치입니다 
			              var markerPosition  = new kakao.maps.LatLng(<%=h.getHt_map_lat() %>,<%=h.getHt_map_long() %>); 
			      
			              // 마커를 생성합니다
			              var marker = new kakao.maps.Marker({
			                  position: markerPosition
			              });
			      
			              // 마커가 지도 위에 표시되도록 설정합니다
			              marker.setMap(map);
			      
			          </script>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="info">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div style="margin-top: 100px; margin-bottom: 100px;">
                        <h2>서비스 및 부대시설</h2>
                        <hr>
                        <div id="serv">
                            <button><b>피트니스</b></button><button><b>수영장</b></button><button><b>무선인터넷</b></button><button><b>레스토랑</b></button><button><b>금연</b></button>
                        </div>
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="talk">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div>
                        <h2>객실 선택</h2>
                        <hr>
                        <%for (Room ro : rlist){ %>
	                            <table  style="background: #ddeeeb; border-radius: 15px; height: 250px; margin-bottom: 50px;">
	                                <tr>
	                                    <td rowspan="2">
	                                        <img src="<%=ro.getPicInfo() %>" class="reservepic">
	                                    </td>
	                                    <td class="roomti"><b><h3><%=ro.getrName() %></h3></b></td>
	                                </tr>
	                                <tr>
	                                    <td>
	                                        <div class="container">
	                                            체크인 : <%=ro.getCheckin() %><br>
	                                            체크아웃 : <%=ro.getCheckout() %><br>
	                                            가격 : <%=ro.getPrice() %>원<br>
	                                            객실정보<br>
	                                            최대<%=ro.getrMax() %>인<br>
	                                         	<br>
	                                            <button style="float:left;" class="reviewbt" type="button" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#info-modal">추가정보확인</button>
	                                            
	                                            <button class="reviewbt" type="button" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#update-pwd-modal">예약하기</button>
	                                        </div>
	                                    </td>  
	                                </tr>
	                            </table>
										    <!-- 비밀번호 변경 Modal -->
									        <div class="modal fade" id="update-pwd-modal" tabindex="-1" aria-labelledby="updatePwdModalLabel" aria-hidden="true">
									        <div class="modal-dialog modal-dialog-centered">
									        <div class="modal-content">
									    
						                    <!-- Modal Header -->
						                    <div class="modal-header">
						                        <h4 class="modal-title" id="updatePwdModalLabel">예약 확인</h4>
						                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
						                    </div>
						    
						                    <!-- Modal body -->
						                    <div class="modal-body" align="center">
						                        <form action="hotel.booking" method="POST">
						                        	<input type="hidden" name="rnum" value="<%=ro.getrNum() %>">
						                        	<input type="hidden" name="hName" value="<%=h.gethName() %>">
						                        	<div>
						                        		<h3><%=h.gethName() %></h3><br>
						                        		<h4><%=ro.getrName() %></h4><br>
						                        		예약하시겠습니까?
						                        	</div>
						                            <br>
						                            <button id="edit-pwd-btn" type="submit" class="btn btn-sm btn-secondary">
						                                예약
						                            </button>
						                        </form>
						                    </div>
						    
						                </div>
						            </div>
						        </div>
						        <!-- 비밀번호 변경 Modal -->
									        <div class="modal fade" id="info-modal" tabindex="-1" aria-labelledby="updatePwdModalLabel" aria-hidden="true">
									        <div class="modal-dialog modal-dialog-centered">
									        <div class="modal-content">
									    
						                    <!-- Modal Header -->
						                    <div class="modal-header">
						                        <h4 class="modal-title" id="updatePwdModalLabel">추가 정보</h4>
						                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
						                    </div>
						    
						                    <!-- Modal body -->
						                    <div class="modal-body" align="center">
						                        <%=ro.getrInfo() %>
						                    </div>
						    
						                </div>
						            </div>
						        </div>
	                        </div>
                        <%} %>
                    <div style="margin-bottom: 50px;"></div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
			<tr class="recommend">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div style="margin-top: 50px;">
                        <h2>근처 다른 호텔</h2>
                        <hr>
                    </div>
                    <div class="recommendtr" style="margin-bottom: 100px;">
                    <% for(Hotel ht : hlist){ %>
	                        <div class="recommendtr-item">
	                            <img class="recommendtrimg" src="<%=ht.getPicInfo() %>" onclick="location.href='hotel.info?hotel=<%=ht.gethName()%>'">
	                            <p onclick="location.href='hotel.info?hotel=<%=ht.gethName()%>'" style="cursor: pointer;"><strong><%=ht.gethName() %></strong></p>
	                            <p onclick="location.href='hotel.info?hotel=<%=ht.gethName()%>'" style="cursor: pointer;"><%=ht.gethAddress() %></p>
	                        </div>
	                <%} %>
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr class="recommend">
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
     <%@include file="../common/footer.jsp"%>
</body>
</html>