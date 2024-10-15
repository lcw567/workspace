<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath(); // 컨텍스트 경로 얻기
%>
<%@ page import="com.lc.project.business.model.vo.Business" %>
<%@ page import="com.lc.project.member.model.vo.Member" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>방구석 여행</title>
  <link rel="icon" href="./pic/logo.png"/>
  <link rel="apple-touch-icon" href="./pic/logo.png"/>
  <!-- CSS -->
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <link rel="stylesheet" href="./css/main.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  

  <!-- JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script
    src="https://code.jquery.com/jquery-3.7.1.min.js"
    integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
    crossorigin="anonymous"></script>
    
    <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js" 
    integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM=" 
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="./css/main.css">
  <!-- font -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
  
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

</head>
<body>
    <div class="header">
        <div class="header_pic">
            <img src="./pic/caption.jpg" alt="" class="main_img">
        </div>
        <div class="header_bar"></div>
            <div class="header_func">
                <a href="" class="to_main">
                    <div class="header_name">방구석여행</div>
                    <img src="./pic/logo.png" alt="" class="header_main_logo">
                </a>
                <c:choose>
                <c:when test="${empty loginUser && empty loginbs}">
                    <!-- 로그인 전 -->
                    <a href="./views/member/selectlogin.jsp" class="to_login">
                        <div><input type="button" class="header_btn" value="로그인"></div>
                    </a>
                </c:when>
                <c:when test="${!empty loginUser}">
                    <!-- 일반 사용자 로그인 후 -->
                  <div class="dropdown">
                      <button type="button" class="btn" data-bs-toggle="dropdown">
                          <img id="hamBtn" src="./pic/hamburgerBtn.png" alt="hamburgerBtn" width="30px" height="22px">
                          <img id="avatar" src="./pic/avatar.png" alt="avatar" width="35px" height="35px">
                      </button>
                      <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="membermyPage.mem">마이페이지</a></li>
                          <li><a class="dropdown-item" href="logout.me">로그아웃</a></li>
                      </ul>
                  </div>
                </c:when>
                <c:when test="${!empty loginbs}">
                    <!-- 사업자 로그인 후 -->
                    <div class="dropdown">
                        <button type="button" class="btn" data-bs-toggle="dropdown">
                            <img id="hamBtn" src="./pic/hamburgerBtn.png" alt="hamburgerBtn" width="30px" height="22px">
                            <img id="avatar" src="./pic/profile-removebg-preview.png" alt="avatar" width="35px" height="35px">
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="./views/common/BusinessmyPage.jsp">사업자마이페이지</a></li>
                            <li><a class="dropdown-item" href="logout.bs">로그아웃</a></li>
                        </ul>
                    </div>
                </c:when>
            </c:choose>
            </div>
       </div>
      <div class="textarea_container">
            <div class="search_text">
              <div>
                <span class="search_button1">찾아보기</span>
                <a onclick="location.href='index.jsp'" class="to_login">
                <input type="button" value="여행지" class="search_button2">
                </a>
                <a onclick="location.href='index2.jsp'" class="to_login">
                <input type="button" value="호텔" class="search_button3">
                </a>
                <a onclick="location.href='list.rc'" class="to_rentcar">
                <input type="button" value="렌트카 바로가기" class="search_button4">
                </a>
              </div>
            </div>
            <div class="textarea">
                <input class="input_1" list="browsers" name="browser" id="browser" placeholder="가고싶은 여행지를 입력해주세요.">

                <button onclick="gotr()" style="background-color: transparent; border: none;"><img src="./pic/검색-removebg-preview.png" alt="" class="research_btn"></button>
               <script>
               		function gotr(){
               			var sr = document.getElementById("browser").value;
               			console.log(sr)
               			location.href="search.tr?browser="+encodeURIComponent(sr)
               		}
               </script>
               
            </div>
        </div>
    </div>
   
  <form action="recommend.tr" method="post">
    <table id="mainPage_tagSelect_table" align="center">
      <tr>
        <td id="mainPage_tagSelect_table_title" colspan="8">나만의 맞춤 여행!</td>
      </tr>
      <tr>
        <td colspan="8">태그로 쉽게 찾아보세요!</td>
      </tr>
      <tr>
        <td colspan="8">관심 있는 여행 스타일을 선택하면 당신에게 딱 맞는 여행지를 추천해드립니다. 지금 떠날 준비 되셨나요?</td>
      </tr>
      <tr>
         <td class="mainPage_tag"><button class="unselected_tag_personnel" type="button" onclick="mainPage_tagSelect_personnel(this)" value="가족여행">#가족여행</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_personnel" type="button" onclick="mainPage_tagSelect_personnel(this)" value="친구들과">#친구들과</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_personnel" type="button" onclick="mainPage_tagSelect_personnel(this)" value="1인여행">#1인여행</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_personnel" type="button" onclick="mainPage_tagSelect_personnel(this)" value="커플여행">#커플여행</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_personnel" type="button" onclick="mainPage_tagSelect_personnel(this)" value="반려동물">#반려동물</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_personnel" type="button" onclick="mainPage_tagSelect_personnel(this)" value="친목모임">#친목모임</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_personnel" type="button" onclick="mainPage_tagSelect_personnel(this)" value="워크숍">#워크숍</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_personnel" type="button" onclick="mainPage_tagSelect_personnel(this)" value="아이들과">#아이들과</button></td>
          </tr>
          <tr>
              <td class="mainPage_tag"><button class="unselected_tag_location" type="button" onclick="mainPage_tagSelect_location(this)" value="수도권">#수도권</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_location" type="button" onclick="mainPage_tagSelect_location(this)" value="강원도">#강원도</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_location" type="button" onclick="mainPage_tagSelect_location(this)" value="충청도">#충청도</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_location" type="button" onclick="mainPage_tagSelect_location(this)" value="전라남도">#전라남도</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_location" type="button" onclick="mainPage_tagSelect_location(this)" value="전라북도">#전라북도</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_location" type="button" onclick="mainPage_tagSelect_location(this)" value="경상북도">#경상북도</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_location" type="button" onclick="mainPage_tagSelect_location(this)" value="경상남도">#경상남도</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_location" type="button" onclick="mainPage_tagSelect_location(this)" value="제주도">#제주도</button></td>
          </tr>
          <tr>
              <td class="mainPage_tag"><button class="unselected_tag_theme" type="button" onclick="mainPage_tagSelect_theme(this)" value="액티비티">#액티비티</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_theme" type="button" onclick="mainPage_tagSelect_theme(this)" value="맛집">#맛집</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_theme" type="button" onclick="mainPage_tagSelect_theme(this)" value="힐링">#힐링</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_theme" type="button" onclick="mainPage_tagSelect_theme(this)" value="축제">#축제</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_theme" type="button" onclick="mainPage_tagSelect_theme(this)" value="역사">#역사</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_theme" type="button" onclick="mainPage_tagSelect_theme(this)" value="쇼핑">#쇼핑</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_theme" type="button" onclick="mainPage_tagSelect_theme(this)" value="자연">#자연</button></td>
              <td class="mainPage_tag"><button class="unselected_tag_theme" type="button" onclick="mainPage_tagSelect_theme(this)" value="문화">#문화</button></td>
          </tr>
          <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td><button id="mainPage_tagSubmit" type="submit" onclick="tagSelected(); ">검색하기</button></td>
          </tr>
            <input type="hidden" id="personnel" name="personnel" value="">
            <input type="hidden" id="location" name="location" value="">
            <input type="hidden" id="theme" name="theme" value="">
      

         <script>
              //누른 버튼의 클래스를 가져와서 클래스가 unselect이면 select로 변경
              function mainPage_tagSelect_personnel(button){
              //인원수 태그 하나만 고르기
                  if(document.getElementsByClassName('selected_tag_personnel').length === 0){
                    button.className = 'selected_tag_personnel';
                  } else if(document.getElementsByClassName('selected_tag_personnel').length === 1){
                    button.className = 'unselected_tag_personnel';
                  }
              }
              function mainPage_tagSelect_location(button){
                  //위치 태그 하나만 고르기
                  if(document.getElementsByClassName('selected_tag_location').length === 0){
                    button.className = 'selected_tag_location';
                  } else if(document.getElementsByClassName('selected_tag_location').length === 1){
                    button.className = 'unselected_tag_location';
                  }
              }
              function mainPage_tagSelect_theme(button){
                  //테마 태그 하나만 고르기
                  if(document.getElementsByClassName('selected_tag_theme').length === 0){
                    button.className = 'selected_tag_theme';
                  } else if(document.getElementsByClassName('selected_tag_theme').length === 1){
                    button.className = 'unselected_tag_theme';
                  }
              }
              //검색하기 버튼을 누르면 선택되어있는 태그(class가 selected_tag)의 value값을 가져오기
              function tagSelected(){
                  const tagList = [];
      
                  const selectTag1 = document.querySelector(".selected_tag_personnel").value;
                  const selectTag2 = document.querySelector(".selected_tag_location").value;
                  const selectTag3 = document.querySelector(".selected_tag_theme").value;
                  tagList.push(selectTag1);
                  tagList.push(selectTag2);
                  tagList.push(selectTag3);
                  document.getElementById("personnel").value = selectTag1;
                  document.getElementById("location").value = selectTag2;
                  document.getElementById("theme").value = selectTag3;
               
                  // document.getElementById("personnel").value = document.querySelector(".selected_tag_personnel").value;
                  console.log(tagList);
                  console.log(document.getElementById("personnel").value)
                  console.log(document.getElementById("location").value)
                  console.log(document.getElementById("theme").value)
                  
                 return true;
             }
         </script>
     </table>
  </form>
   <br><br><br>
   
 <div id="wrap-main-content1">
        <div id="main-content1">
          <div id="title">
            <h1>"떠나볼래? 지역 따라 골라보는 여행 스팟"</h1>
            <p>이제는 골라 떠나는 재미! <br> 인기 만점 지역별 여행지에서 특별한 순간을 만들어보세요!</p>
          </div>
         <div class="swiper mySwiper2">
            <div class="swiper-wrapper">
                 <div class="swiper-slide">
                      <img src="<%=contextPath%>/pic/main-seoul.jpg" alt="seoul" onclick="location.href='location.tr?location=수도권'">
                     <p>수도권</p>
                 </div>        
                   <div class="swiper-slide">
                     <img src="<%=contextPath%>/pic/gangwon.jpg" alt="gangwon" onclick="location.href='location.tr?location=강원도'">
                     <p>강원</p>
                   </div>
                   <div class="swiper-slide">
                     <img src="<%=contextPath%>/pic/chungcheong.jpg" alt="chungcheong" onclick="location.href='location.tr?location=충청도'">
                     <p>충청</p>
                   </div>
                   <div class="swiper-slide">
                     <img src="<%=contextPath%>/pic/jellabuk.png" alt="jeollabuk" onclick="location.href='location.tr?location=전라북도'">
                     <p>전북</p>
                   </div>
                   <div class="swiper-slide">
                     <img src="<%=contextPath%>/pic/jellanam.png" alt="jeollanam" onclick="location.href='location.tr?location=전라남도'">
                     <p>전남</p>
                 </div>
                   <div class="swiper-slide">
                     <img src="<%=contextPath%>/pic/gyeongsangbuk.jpg" alt="gyeongsangbuk" onclick="location.href='location.tr?location=경상북도'">
                     <p>경북</p>
                   </div>
                   <div class="swiper-slide">
                     <img src="<%=contextPath%>/pic/gyeongsangnam.jpg" alt="gyeongsangnam" onclick="location.href='location.tr?location=경상남도'">
                     <p>경남</p>
                   </div>
                   <div class="swiper-slide">
                     <img src="<%=contextPath%>/pic/제주도.jpg" alt="jeju" onclick="location.href='location.tr?location=제주도'">
                  <p>제주</p>
               </div>
               </div>
               <div class="swiper-button-next"></div>
               <div class="swiper-button-prev"></div>
          </div>
           </div>
           </div>
		
           <br>    
     
     <!-- 이충혁 -->
   <script>
      <%
        String loginSuccess = request.getParameter("loginSuccess"); 
        Business loginbs = (Business) session.getAttribute("loginbs");
      %>
      
      window.onload = function() {
          var loginSuccess = "<%= (loginSuccess != null ? loginSuccess : "") %>";
          
          if (loginSuccess === "true") {
              var bsName = "<%= (loginbs != null && loginbs.getBsName() != null ? loginbs.getBsName() : "") %>";
              alert(bsName.length > 0 ? bsName + "님 환영합니다." : "로그인 정보가 없습니다.");
          } else if (loginSuccess === "false") {
              alert("아이디와 비밀번호를 확인해주세요.");
          }
      }
   </script>

<div id="main-content2">
    <div id="title">
      <h1>"인기 폭발 여행지, 예약은 서둘러야 제맛!"</h1>
      <p>요즘 핫한 여행지, 나만 빼고 다 갔다? <br>
        더 늦기 전에 떠나세요! 인기 폭발 중인 여행지에서 잊지 못할 순간을 만들어보세요!</p>
    </div>
    <div class="swiper mySwiper2">
      <div class="swiper-wrapper">
      <script>
        window.onload = function() {
           $.ajax({
                url: "main.tr",
                contentType: "application/json",
                success: function(res){
                   console.log(res);
                   let str = "";
                       for(let tra of res){
                          str += ("<div class='swiper-slide'>" +
                                "<img src=\'"+tra.picInfo+"\'"+" onclick='trInfoPage(\"" + encodeURIComponent(tra.trName) + "\")'>" +
                                   "<p><strong>" + tra.trName + "</strong></p>" +
                                   "</div>")
                       }

                var element = document.getElementsByClassName("swiper-wrapper")[1];  // 첫 번째 요소 선택
                element.innerHTML = str;
                },error: function(){
                   console.log("ajax통신 실패")
                }
             })
           
           
        };
        
          function trInfoPage(travel){
             location.href="travel.info?travel="+travel
        };
   </script>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
  </div>
  
  <script>
       const mySwiper2 = new Swiper(".mySwiper2", {
           slidesPerView: 'auto', // 한 번에 표시할 슬라이드 수
           spaceBetween: 20, // 슬라이드 간의 간격
           breakpoints : {
               700: {
               slidesPerView: 4,
               spaceBetween: 20,
               },
               1024: {
                   slidesPerView: 6,
                   spaceBetween: 20,
               }
           }, 
           slideToclickedSlide : true,
           navigation: {
               nextEl: ".swiper-button-next", 
               prevEl: ".swiper-button-prev"
           },
           loop: true,
           freemode : true,
           watchOverflow : true,
           centeredSlides : false,
           initialSlide: 0,
           slideOffsetAfter: 10,
           slideOffsetBefore: 10
       });

       $('.btn_like').click(function () {
         $(this).toggleClass("on")
       });
       //---------로그인 성공 메시지-----------
   </script>
      <%@include file="/views/common/footer.jsp"%>
</body>
</html>