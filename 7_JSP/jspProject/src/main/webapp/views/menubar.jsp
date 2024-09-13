<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
    <!-- jQuery -->
    <script 
        src="https://code.jquery.com/jquery-3.7.1.js" 
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" 
        crossorigin="anonymous">
    </script>
    <script 
        src="https://code.jquery.com/ui/1.14.0/jquery-ui.js" 
        integrity="sha256-u0L8aA6Ev3bY2HI4y0CAyr9H8FRWgX4hZ9+K7C2nzdc=" 
        crossorigin="anonymous">
    </script>
    <!-- 부트 스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        a{
            text-decoration: none;
            color: rgb(0, 0, 0);
        }
        .login-area *{
            float: right;
        }
        .login-area input[type="button"],
        .login-area input[type="submit"]{
            width: 50%;
            float: left;
        }
        .nav-area{background-color: black;}
        .menu{
            display: table-cell;
            width: 150px;
            height: 50px;
        }
        .menu a{
            color: white;
            font-size: 20px;
            font-weight: bold;
            text-align: center;
            width: 100%;
            height: 100%;
            display: inline-block;
            line-height: 50px;
        }
    </style>
</head>
<body>
    <h1 align="center">Welcome KH World</h1>
    <div class="login-area">
        <!-- 로그인 전 -->
        <form action="" method="post">
            <table>
                <tr>
                    <th>아이디</th>
                    <td><input type="text" name="userId" required></td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td><input type="password" name="userPwd" required></td>
                </tr>
                <tr>
                    <th colspan="2">
                        <input type="submit" value="로그인">
                        <input type="button" value="회원가입">
                    </th>
                </tr>
            </table>
        </form>
        <!-- 로그인 후 -->
         <!--
        <div>
            <b>오태영님</b>의 방문을 환연합니다. <br><br>
            <div>
                <a href="">마이페이지</a>
                <a href="">로그아웃</a>
            </div>
        </div>
        -->
    </div>
    

    <br clear="both">
    <div class="nav-area">
        <div class="menu"><a href="">HOME</a></div>
        <div class="menu"><a href="">공지사항</a></div>
        <div class="menu"><a href="">일반게시판</a></div>
        <div class="menu"><a href="">사진게시판</a></div>
    </div>
    



    
    
</body>
</html>