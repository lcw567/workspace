<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방구석 여행</title>
<style>
    .nxbutton {
        background-color: #7bbcb0;
        border: none;
        color: white;
        padding: 0px;
        border-radius: 15px;
        width: 100px;
        cursor: pointer;
        height: 50px;
        font-size: 16px;
    }
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

    <%@include file="./header.jsp" %>
    <div style="text-align: center; margin-top: 200px; margin-bottom: 50px; height: 500px;">
        <h1>예약 완료</h1><br>
        <button class="nxbutton" style="margin-right: 10px" onclick="location.href='<%=contextPath%>'">처음으로</button>
        <button class="nxbutton" onclick="location.href='<%=contextPath%>/membermyPage.mem'">마이페이지로</button>
    </div>
    <%@include file="./footer.jsp" %>

</body>
</html>
