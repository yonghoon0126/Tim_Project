<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 목록</title>
<script type="text/javascript" src="script/reserve.js"></script>
<style type="text/css">
html, body{
   margin:0;
   padding:0;
   height:100%;
}
hr{
   width:80%;
}
.all{
   margin-left:auto;
   margin-right:auto;
}
table{
 width: 100%;
  height: 100%;
   border-collapse:collapse;
   text-align:center;
   line-height:1.5;
  border-style: hidden;
}
table tr{
   width:150px;
   padding:10px;
}
table th{
   width:150px;
   padding:10px;
   font-weight:bold;
   vertical-align:center;
   border:1px solid #8F784B;
   font-size:20px;
}
table td{
   width:350px;
   padding:10px;
   vertical-align:top;
   border:1px solid #8F784B;
}
.btn1{
   background-image:url("./img/button.png");
      background-repeat:no-repeat;
      background-size:280px 90px;
      background-color:white;
    height:90px;          
      width:280px;
      border:none;
    background-position: 0px center;
    font-size:20px;
    line-height:5px;
}
.tableDiv{
   border:1px solid #8F784B;
   background-color:#FFFFcc;
   border-radius:16px;
   box-shadow:inset 0 0 8px #deb13a;
   height:auto;
   width:700px;
   margin-left:auto;
   margin-right:auto;
}
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<form name="listRev" method="post">
   <hr>
   <div class="all">
   <h2>진행중인 예약</h2>   
   <div class="tableDiv">
   <table class="table">
      <tr>
         <th>날짜</th><th>시간</th><th>예약자 닉네임</th><th>삭제하기</th>
      </tr>
      <c:forEach var="row" items="${revList}">
        <tr>
            <td>${row.rev_date}</td>
            <td>${row.rev_time}</td>
            <td>${row.rev_id}</td>
            <td><input type="checkbox" name="num" value="${row.rev_num}"></td>
        </tr>
        </c:forEach>
   </table>
   </div>

   <input class="btn1" type="button" onclick="delOwRev()" value="삭제하기">
   <input class="btn1" type="button" onclick="goOwMain()" value="메인으로 가기">
   </div>
</form>
<%@ include file="../footer.jsp" %>
</body>
</html>