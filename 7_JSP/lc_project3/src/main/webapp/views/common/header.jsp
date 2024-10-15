<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath(); // 컨텍스트 경로 얻기
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%=contextPath %>/css/header.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <div id="header_wrapper">
        <div id="header_wrapper1">
            <div id="header_logo"><a href="<%=contextPath %>"><img src="<%=contextPath %>/pic/logo.png" alt="" width="80" height="64"></a></div>
            <div id="header_letter"><a href="<%=contextPath %>">방구석 여행</a></div>
        </div>
        <c:choose>
        	<c:when test="${empty loginUser && empty loginbs}">
        		<a href="./views/member/selectlogin.jsp"><div id="header_signIn"><button>로그인</button></div></a>
        	</c:when>
        	<c:when test="${!empty loginUser}">
        		<div class="dropdown">
                    <button type="button" class="btn" data-bs-toggle="dropdown">
                        <img id="hamBtn" src="<%=contextPath %>/pic/hamburgerBtn.png" alt="hamburgerBtn" width="30px" height="22px">
                        <img id="avatar" src="<%=contextPath %>/pic/avatar.png" alt="avatar" width="35px" height="35px">
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="./views/common/myPage.jsp">마이페이지</a></li>
                        <li><a class="dropdown-item" href="logout.me">로그아웃</a></li>
                    </ul>
                </div>
        	</c:when>
        	<c:when test="${!empty loginbs}">
        		<div class="dropdown">
			        <button type="button" class="btn" data-bs-toggle="dropdown">
			            <img id="hamBtn" src="<%=contextPath %>/pic/hamburgerBtn.png" alt="hamburgerBtn" width="30px" height="22px">
			            <img id="avatar" src="<%=contextPath %>/pic/profile-removebg-preview.png" alt="avatar" width="35px" height="35px">
			        </button>
			        <ul class="dropdown-menu">
			            <li><a class="dropdown-item" href="./views/common/myPage2.jsp">사업자마이페이지</a></li>
			            <li><a class="dropdown-item" href="logout.bs">로그아웃</a></li>
			        </ul>
			    </div>
        	</c:when>
        </c:choose>
    </div>
</body>
</html>