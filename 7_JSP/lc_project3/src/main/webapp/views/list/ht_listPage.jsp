<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.lc.project.travel.model.vo.Travel, java.util.ArrayList, com.lc.project.travel.model.vo.tReview, com.lc.project.member.model.vo.Member, com.lc.project.hotel.model.vo.Hotel"%>
<%	
	String browser = (String)request.getAttribute("browser");
	ArrayList<Hotel> hlist= (ArrayList<Hotel>)request.getAttribute("hlist");
	ArrayList<Travel> slist = (ArrayList<Travel>)request.getAttribute("slist");
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
    
    <!-- css -->
    <link rel="stylesheet" href="../../css/ht_listPage.css">
        
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link rel="icon" href="../../pic/logo.png"/>
    <link rel="apple-touch-icon" href="../../pic/logo.png"/>
</head>
<body>
    <%@include file="../common/header.jsp"%>
	<table style="margin-top: 70px;">
        	<tr>
	        	<td class="side" width="500px"></td>
	        	<td rowspan="3" class="content"></td>
	        	<td></td>
	        	<td></td>
	        	<td class="side"></td>
        	</tr>
            <tr>
                <td class="side"></td>             
                <td class="content" rowspan="3" width="800px">
                    <div style="height: 2000px;">
                        <h3>'<%=browser %>' 검색결과 <%=slist.size() %>개 </h3>
                        <hr>
                        <div class="reviewcon" >
                         <%for (Travel tra : slist){ %>
                        	<table onclick="location.href='travel.info?travel=<%=tra.getTrName()%>'">
                                <tr>
                                    <td style="width: 30%;"><img src="<%=tra.getPicInfo()%>" style="width: 300px; height: 200px; margin: 8px; border-radius: 15px;" ></td>
                                    <td style="width: 50%;">
                                        <div style="margin-left: 20px;" >
                                        <h4><%=tra.getTrName() %></h4><br>
                                        <%=tra.getTrAddress() %>
                                        </div>
                                    </td>
                                    <td style="width: 20%; padding-top: 90px;">

                                    </td>
                                </tr>
                            </table>
                           <%} %>
						</div>
					</div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
        </table>
    <%@include file="../common/footer.jsp"%>
</body>
</html>