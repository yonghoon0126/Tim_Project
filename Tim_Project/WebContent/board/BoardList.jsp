<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome Time Is Money!</title>
<link rel="stylesheet" type="text/css" href="">

<style>
hr {
	width: 80%;
}

table {
	width: 1300px;
	table-layout: fixed;
	margin-left: auto;
	margin-right: auto;
	border-spacing: 0px;
	border-collapse: collapse;
	font-family: "Nanum Gothic", sans-serif;
	font-size: 25px;
	border: 1px solid #8F784B;
}

th {
	border: 1px solid #444444;
	padding: 10px;
	vertical-align: center;
	font-weight: bold;
	font-size: 25px;
}

td {
	border: 1px solid #444444;
	padding: 10px;
	width: 100%;
	vertical-align: center;
	font-size: 20px;
}

.btn1 {
	background-image: url("./img/button.png");
	background-repeat: no-repeat;
	background-size: 220px 90px;
	background-color: white;
	height: 60px;
	width: 220px;
	border: none;
	background-position: 0px center;
	font-size: 26px;
	cursor: pointer;
}

.btn2 {
	background-image: url("./img/button.png");
	background-repeat: no-repeat;
	background-size: 220px 90px;
	background-color: white;
	height: 60px;
	width: 220px;
	border: none;
	background-position: 0px center;
	font-size: 26px;
	cursor: pointer;
}

.btn {
	margin-left: auto;
	margin-right: auto;
	width: 1000px;
}

html, body {
	margin: 0;
	padding: 0;
	position: relative;
	min-height: 100%;
}

.all {
	margin-left: auto;
	margin-right: auto;
	height: 393px; 					/* 테이블 전체 높이 */
	width: 1000px; 					/* 너비 */
	border: 1px solid #444444; 
	border-spacing: 0px;
}

.list2 {
	margin-right: auto;
	margin-left: auto;
	box-shadow: inset 0 0 8px #deb13a;
	border-collapse: collapse;
	text-align: center;
	background-color: #FFFFcc;
	width: 1000px; 					/* tr 너비 */
	height: 50px; 					/* 글 내용 높이 */
	border-spacing: 0px;
	border: 1px solid #444444;
}

.scroll {
	height: 337px; 					/* 스크롤 높이 */
	margin-left: auto;
	margin-right: auto;
	overflow-y: scroll;
	overflow-x: hidden;
	width: 998px; 					/* td 너비 */
	border-spacing: 0px;
	border: 1px solid #444444; 
	}

.list {
	margin-left: auto;
	margin-right: auto;
	border-collapse: collapse;
	text-align: center;
	border: none;
	width: 100%;
	height: 50px;
	border-spacing: 0px;
	border: 1px solid #444444;
}

.tbody {
	width: 1000px;
}

.t1 {
	width: 30px;
}

.t2 {
	width: 100px;
}

.t3 {
	width: 150px;
}

.t4 {
	width: 60px;
}

.t5 {
	width: 50px;
}


.t6 {
	width: 29.5px;
}

.t7 {
	width: 99.5px;
}

.t8 {
	width: 149.5px;
}

.t9 {
	width: 60px;
}

.t10 {
	width: 40.5px;
}
</style>
<script type="text/javascript" src="script/board.js"></script>
</head>



<body>
<%@ include file="../header.jsp" %>
<hr>
   <div id="wrap" align="center">
      
      
      <h1>생생 리뷰!</h1>

      <div class="all">
      <table class="list2">
         
         <tr>
            <th class="t1">번호</th>
            <th class="t2">작성자</th>
            <th class="t3">제목</th>
            <th class="t4">날짜</th>
            <th class="t5">조회수</th>
         </tr>
         
         </table>
         
<div class="scroll">



      <table class="list">

         <c:forEach var="board" items="${boardList}">
            <tr class="record">
               <td class="t6">${board.bo_num}</td>
               <td class="t7">${board.bo_name}</td>
               <td class="t8"><a href="TimServlet?command=board_view&bo_num=${board.bo_num}">${board.bo_title}</a></td>
               <td class="t9"><fmt:formatDate value="${board.bo_date}" /></td>
               <td class="t10">${board.bo_readCount}</td>
            </tr>
         </c:forEach>
      </table>
      </div>
      <br>
      
       
       <div class="btn">
         <input class="btn1" type="button" value="글쓰기" onclick="location.href='TimServlet?command=board_write_form'">
         <input class="btn2" type="button" value="메인으로 " onclick="location.href='TimServlet?command=con_main'">
      </div>
   </div>
   
   </div>
   
</body>
</html>
<%@ include file="../footer.jsp" %>