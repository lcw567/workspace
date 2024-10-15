<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.lc.project.travel.model.vo.Travel, java.util.ArrayList, com.lc.project.travel.model.vo.tReview, com.lc.project.member.model.vo.Member, com.lc.project.hotel.model.vo.Room" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	Room room = (Room)request.getAttribute("room");
	if(room == null){
		room = new Room();
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/MembermyPage.css">
    <link rel="icon" href="<%= request.getContextPath() %>/pic/logo.png"/>
    <link rel="apple-touch-icon" href="<%= request.getContextPath() %>/pic/logo.png"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gybQz2smYl3bKRT6CzYcZT26Q3M0ILy1XczV7flxM7Q5VsFDo" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
    <%@include file="../common/header.jsp" %>

    <div id="myPage_body">
        <div class="myPage"></div>
        <div id="profile">
            <div id="img-area">
                <img src="<%= request.getContextPath() %>/pic/profile.png">
            </div>
            <div class="profile_info">
                <form action="<%=contextPath%>/update.me" method="post" id="profileUpdateForm">
                    <input type="button" value="프로필 수정" class="updateprofile" data-bs-toggle="modal" data-bs-target="#myModal">
                </form>
                <div id="text-area">
                    <h3 class="userName">${loginUser.userName}님</h3>
                    <ul>
                        <li>아이디 : ${loginUser.userId}</li>
                        <li>전화번호 : ${loginUser.tel}</li>
                        <li>방 번호 : <%=room.getrNum() %></li>
                        <li>예약자 : ${loginUser.userName} </li>
                        <li>체크인시간 : <%=room.getCheckin() %></li>
                        <li>체크아웃시간 : <%=room.getCheckout() %></li>
                    </ul>
                    
                </div>
                <!-- 
                <div class="booking-check">
                    <ul>
                        <li>방 번호 : </li>
                        <li>예약자 : ${loginUser.userName} </li>
                        <li>체크인날짜 : </li>
                        <li>체크아웃날짜 : </li>
                    </ul>
                </div>
                 -->
            </div>
        </div>
    </div>

    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">프로필 수정</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="<%= request.getContextPath() %>/update.me" method="post" id="updateForm">
                        <div class="mb-3">
                            <label for="userId" class="form-label">ID</label>
                            <input type="text" class="form-control" id="userId" name="userId" value="${loginUser.userId}" readonly>
                        </div>
                        <div class="mb-3">
                            <label for="userName" class="form-label">이름</label>
                            <input type="text" class="form-control" id="userName" name="userName" value="${loginUser.userName}">
                        </div>
                        <div class="mb-3">
                            <label for="userPwd" class="form-label">비밀번호</label>
                            <input type="password" class="form-control" id="userPwd" name="userPwd">
                        </div>
                        <div class="mb-3">
                            <label for="tel" class="form-label">전화번호</label>
                            <input type="text" class="form-control" id="tel" name="tel" value="${loginUser.tel}">
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">주소</label>
                            <input type="text" class="form-control" id="address" name="address" value="${loginUser.address}">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                            <button type="submit" class="btn btn-primary">수정 완료</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <c:if test="${not empty param.modalMessage}">
    <script>
    console.log('Modal message:', param.modalMessage);

        var myModal = new bootstrap.Modal(document.getElementById('myModal'));
        myModal.show();

        // 모달 제목과 메시지 설정
        var modalTitle = param.modalMessage == 'success' ? '수정 성공' : '수정 실패';
        var modalBodyMessage = param.modalMessage == 'success' ? '프로필이 성공적으로 수정되었습니다.' : '수정 실패. 다시 시도해 주세요.';
        
        document.querySelector('.modal-title').textContent = modalTitle;
        document.querySelector('.modal-body').innerText = modalBodyMessage;

        // 수정 성공 시 모달 자동 닫기
        if (param.modalMessage == 'success') {
            setTimeout(function() {
                myModal.hide();
                window.location.href = '<%= request.getContextPath() %>/views/common/myPage.jsp'; // 여기서 페이지 리다이렉트
            }, 2000); // 2초 후에 모달 닫기
        }
    </script>
</c:if>
</body>
</html>
