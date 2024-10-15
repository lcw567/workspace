<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/BusinessmyPage.css">
    <link rel="icon" href="<%= request.getContextPath() %>/pic/logo.png"/>
    <link rel="apple-touch-icon" href="<%= request.getContextPath() %>/pic/logo.png"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gybQz2smYl3bKRT6CzYcZT26Q3M0ILy1XczV7flxM7Q5VsFDo" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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
                <form action="<%=contextPath%>/update.bs" method="post" id="profileUpdateForm">
                    <input type="button" value="프로필 수정" class="updateprofile" data-bs-toggle="modal" data-bs-target="#myModal">
                </form>
                <div id="text-area">
                    <h3>${loginbs.bsName}님</h3>
                    <ul>
                        <li>아이디 : ${loginbs.bsId}</li>
                        <li>전화번호 : ${loginbs.bsTel}</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="myhotel">
           <ul>
               <li>나의 호텔 : ${loginbs.bsTitle}</li>
            </ul>
            <a href="<%=contextPath%>/hotel.info?hotel=${loginbs.bsTitle}">
               <img src="${loginbs.bslocation}">
            </a>
        </div>
    </div>
        
    <!-- 모달 구조 -->
    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">프로필 수정</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="<%= request.getContextPath() %>/update.bs" method="post" id="updateForm">
                        <div class="mb-3">
                            <label for="bsId" class="form-label">비즈니스 ID</label>
                            <input type="text" class="form-control" id="bsId" name="bsId" value="${loginbs.bsId}" readonly>
                        </div>
                        <div class="mb-3">
                            <label for="bsName" class="form-label">이름</label>
                            <input type="text" class="form-control" id="bsName" name="bsName" value="${loginbs.bsName}">
                        </div>
                        <div class="mb-3">
                            <label for="bsPwd" class="form-label">비밀번호</label>
                            <input type="password" class="form-control" id="bsPwd" name="bsPwd">
                        </div>
                        <div class="mb-3">
                            <label for="bsEmail" class="form-label">이메일</label>
                            <input type="email" class="form-control" id="bsEmail" name="bsEmail" value="${loginbs.bsEmail}">
                        </div>
                        <div class="mb-3">
                            <label for="bsTel" class="form-label">전화번호</label>
                            <input type="text" class="form-control" id="bsTel" name="bsTel" value="${loginbs.bsTel}">
                        </div>
                        <div class="mb-3">
                            <label for="bsAddress" class="form-label">주소</label>
                            <input type="text" class="form-control" id="bsAddress" name="bsAddress" value="${loginbs.bsAddress}">
                        </div>
                        <div class="mb-3">
                            <label for="bslocation" class="form-label">호텔사진</label>
                            <input type="text" class="form-control" id="bslocation" name="bslocation" value="${loginbs.bslocation}">
                        </div>
                        <div class="mb-3">
                            <label for="bsTitle" class="form-label">호텔명</label>
                            <input type="text" class="form-control" id="bsTitle" name="bsTitle" value="${loginbs.bsTitle}">
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
                window.location.href = '<%= request.getContextPath() %>/views/common/BusinessmyPage.jsp'; // 여기서 페이지 리다이렉트
            }, 2000); // 2초 후에 모달 닫기
        }
    </script>
</c:if>
</body>
</html>
