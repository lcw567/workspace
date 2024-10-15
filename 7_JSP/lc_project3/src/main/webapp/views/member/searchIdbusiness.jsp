<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath(); // 컨텍스트 경로 얻기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방구석 여행</title>
<script src="./login.js" defer></script>
<script type="text/javascript"></script>
    <link rel="icon" href="<%=contextPath %>/pic/logo.png"/>
    <link rel="apple-touch-icon" href="pic/logo.png"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
     <style>
     body {
    font-family: Arial, sans-serif;
    background-color: #ffffff; 
    margin: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center; 
    height: 100vh;
    font-family: "Noto Sans KR", system-ui;
    margin: 0px;
    padding: 0px;
	}
	
	
	.header {
	    position: absolute;
	    top: 0;
	    width: 100%;
	    height: 90px;
	    display: flex;
	    align-items: center;
	    border-bottom: 1px solid #ccc;
	}
	
	.header_main_logo{
	    position: absolute;
	    width: 80px;
	    height: 64px;
	    top: 12px;
	    left: 16px;
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
	
	.header h1 {
	    position: relative;
	    color: #000000; 
	    font-weight: bold; 
	    margin: 0 auto;
	    text-align: center;
	}
	
	.searchid-container {
	    background-color: #e0f7f6;
	    border-radius: 20px;
	    width: 400px;
	    padding: 50px;
	    text-align: center;
	    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
	    margin-top: 90px;
	}
	
	.searchid-container img {
	    width: 90px;
	    height: 72px;
		position: relative;
		left: -15px;
	}
	
	.searchid-container h2 {
	    position: relative;
	    margin-top: -14px;
	    font-family: "Jua", sans-serif;
	    left: 2px;
	}
	
	body input[type="text"],
	 input[type="password"] {
	    width: 90%;
	    padding: 15px;
	    margin-bottom: 20px;
	    border: 1px solid #ccc;
	    border-radius: 5px;
	    outline: none;
	}
	
	.searchid-container button {
	    width: 100%;
	    padding: 15px;
	    background-color: #ffffff;
	    border: 2px solid #00bfa5;
	    border-radius: 50px;
	    cursor: pointer;
	    font-size: 1rem;
	    color: #00bfa5;
	}
	
	.searchid-container button:hover {
	    background-color: #00bfa5;
	    color: white;
	}
	
	.searchid-container .links {
	    margin-top: 20px;
	    font-size: 0.9rem;
	    color: #00bfa5;
	}
	
	.searchid-container .links a {
	    text-decoration: none;
	    color: #00bfa5;
	    margin: 0 5px;
		cursor: pointer;
	}
	
	.searchid-container .links a:hover {
	    text-decoration: underline;
	}
	.logo_form{
	    position: relative;
	    margin-top: -39px;
	    padding-top: 5px;
	    height: 100px;
	    left: -42px;
		top: 7px;
	}
	.name{
	    position: relative;
	    margin: 0px;
	    top: -53px;
	    left: 89px;
	    font-family: "Jua", sans-serif;
	    font-size: x-large;
	}
	.to_main{
		cursor: pointer;
	}
     </style>
</head>
<body>
	<div class="header">
        <div class="logo">
            <a href="<%=contextPath %>/index.jsp" class="to_main">
                <div class="header_name">방구석여행</div>
                <img src="<%=contextPath %>/pic/logo.png" alt="" class="header_main_logo">
            </a>
        </div>
        <h1>아이디찾기</h1>
    </div>
    
    <div class="searchid-container">
        <div class="logo_form">
            <img src="<%=contextPath %>/pic/logo.png" alt="logo">
            <p class="name">방구석여행</p>
        </div>
        <form action="<%=contextPath%>/searchid.bn" method="post">
            <input type="text" placeholder="이름을 입력하세요." required name="bsName">
            <input type="password" placeholder="비밀번호을 입력하세요." required name="bsPwd">
            <button type="submit" id="btn">아이디찾기</button>
        </form>
    </div>

</body>
</html>