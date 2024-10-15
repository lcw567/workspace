<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath(); // 컨텍스트 경로 얻기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 선택</title>
<link rel="icon" href="<%=contextPath %>/pic/logo.png"/>
    <link rel="apple-touch-icon" href="pic/logo.png"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <style>
    .header{
    position: relative;
    display: flex;
    top: 0;
    width: 100%;
    align-items: center;
    padding: 0.5px;
    border-bottom: 1px solid #ccc ;
    justify-content: center;
}

.header_name{
    position: absolute;
    left: 104px;
    top: 32px;
    font-weight: 500;
    font-size: x-large;
    color: rgb(0, 0, 0);
    font-family: "Jua", sans-serif;
}
body{
    display: flex;
    justify-content: center;
    font-family: "Noto Sans KR", system-ui;
    margin: 0px;
    padding: 0px;
    width: 100%;
}

.header_main_logo{
    position: absolute;
    width: 80px;
    height: 64px;
    top: 12px;
    left: 16px;
    cursor: pointer;
}

.header_name{
    position: absolute;
    left: 104px;
    top: 32px;
    font-weight: 500;
    font-size: x-large;
    color: rgb(0, 0, 0);
    font-family: "Jua", sans-serif;
    cursor: pointer;
}
.normal_mem{
    box-sizing: border-box;
    width: 300px;
    height: 300px;
    border-radius: 30px;
    cursor: pointer;
    border-color: #60aca2;
    border: 2px solid #60aca2;
    background: #ffffff;
    font-family: "Noto Sans KR", system-ui;
    font-weight: bold;
    color: #60aca2;
}

.body {
    position: absolute;
    box-sizing: border-box;
    top: 356px;
    left: 1050px;
}

.body2 {
    position: absolute;
    box-sizing: border-box;
    top: 356px;
    left: 570px;
}

.bs_mem{
    box-sizing: border-box;
    width: 300px;
    height: 300px;
    border-radius: 30px;
    cursor: pointer;
    border-color: #60aca2;
    border: 2px solid #60aca2;
    background: #ffffff;
    font-family: "Noto Sans KR", system-ui;
    font-weight: bold;
    color: #60aca2;
}
.body #btn1:hover {
    background-color: #60aca2;
    color: white;
}
.body2 #btn2:hover {
    background-color: #60aca2;
    color: white;
}
    
    </style>
</head>
<body>
	<div class="header">
        <div class="logo">
            <a href="/lc_project/index.jsp" class="to_main">
                <div class="header_name">방구석여행</div>
                <img src="<%=contextPath %>/pic/logo.png" alt="" class="header_main_logo">
            </a>
        </div>
        <h1>로그인</h1>
    </div>
    <div class="select">
        <div class="body">
            <a href="<%=contextPath %>/login.me">
                <button type="submit" id="btn1" class="normal_mem">일반회원로그인</button>
            </a>
        </div>
        <div class="body2">
            <a href="<%=contextPath %>/login.bs">
                <button type="submit" id="btn2" class="bs_mem">사업자로그인</button>
            </a>
        </div>
    </div>
</body>
</html>