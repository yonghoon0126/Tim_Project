<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게 상세보기</title>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
}

.tg1 {
	border-collapse: none;
	border-spacing: 0;
	height: 200px;
	width: 200px;
	margin-left: 50px;
	margin-top: 70px;
}

.tg td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
	height: 25px;
}

.tg .tg-c3ow {
	border-color: inherit;
	text-align: center;
	vertical-align: center;
	font-size: medium;
	box-shadow: inset 0 0 8px #deb13a;
	background-color: #FFFFcc;
}

.tg .tg-0pky {
	border-color: inherit;
	text-align: center;
	vertical-align: center;
	font-size: x-large;
}

.mn-font {
	font-size: x-large;
}

table {
	width: 100%;
	height: 10%;
}

.bo {
	height: 366px;
	width: 1000px;
	border: 1px solid gray;
}

hr {
	margin-top: 0;
	width: 80%;
}

.mnBtn {
	border: none;
	background-image: url("../img/button.png");
	background-repeat: no-repeat;
	background-size: 100%;
	font-size: medium;
	width: 182px;
	height: 65px;
	line-height: 48px;
	margin-top: 1%;
}

.scroll {
	width: 100%;
	height: 87%;
	overflow: scroll;
	overflow-x: hidden;
}

.a {
	margin-top: 3%;
	float: right;
	margin-right: 15%;
}

.img {
	width: 200px;
	height: 100%;
	object-fit: cover;
}

.img2 {
	margin-top: 15%;
	width: 100%;
	height: 100%;
	object-fit: contain;
}

.res { /* 전체div */
	float: left;
	margin-left: 250px;
	margin-top: 0px;
	background-image: url("../img/info.png");
	background-size: 300px;
	background-repeat: no-repeat;
	background-position: center;
	width: 300px;
	height: 500px;
}

.name {
	text-align: center;
	font-size: 32px;
	padding: 0 10px 0 5px;
	font-family: Do Hyeon, sans-serif;
	
}

.add {
	float: left;
	font-size: 20px;
	padding: 20px 0 0 20px;
	font-family: Do Hyeon, sans-serif;
}

.phon {
	float: left;
	font-size: 20px;
	padding: 3px 0 0 20px;
	font-family: Do Hyeon, sans-serif;
}

.imgTd {
	height: 120px;
	width: 300px;
}

.infoTd {
	height: 130px;
	width: 300px;
	
}

.InfoDiv {
	height: 40px;
	width: 180px;
	transform: translate(35%, 195%);
	font-size: 24px;
	font-family: Do Hyeon, sans-serif;
}
</style>
<script type="text/javascript" src="script/reserve.js"></script>
</head>
<body>
	<%@include file="../header.jsp"%>
	<hr>
	<div class="res">
		<div class="InfoDiv">가게정보</div>
		<table class="tg1">
			<tr>
				<td class="imgTd"><c:choose>
						<c:when test="${ow_img ne '0'}">
							<img src="../upload/${ow_img}" class="img2">
						</c:when>
						<c:otherwise>
							<img src="../upload/default_res.jpg" class="img2">
						</c:otherwise>
					</c:choose></td>
			</tr>
			<tr><td class="infoTd">
            <div class="name">${mn_owner}</div>
            <div class="add">${ow_addr}</div>
            <div class="phon">${ow_phon}</div>
         </td></tr>					
		</table>
	</div>
	<div class="a">
		<div class="bo">
			<table class="tg">
				<tr>
					<th class="tg-c3ow" colspan="2">메뉴</th>
					<th class="tg-c3ow" width="147px">가격</th>
					<th class="tg-c3ow" width="381px">설명</th>
				</tr>
			</table>
			<div class="scroll">
				<table class="tg">
					<c:forEach items="${mn_res}" var="menu">
						<tr>
							<td class="tg-0pky" width="200px"><img src="upload/${menu.mn_img}" class="img"></td>
							<td class="tg-0pky" width="150px">${menu.mn_name}</td>
							<td class="tg-0pky" width="120px">${menu.mn_price}</td>
							<td class="tg-0pky" width="300px">${menu.mn_content}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<!-- <input class="mnBtn" type="button" value="예약하기" onclick="location='TimServlet?command=reserve_add_form'"> -->
		<input class="mnBtn" type="button" value="예약하기" onclick="revAdd()">
		<input class="mnBtn" type="button" value="메인으로 가기" onclick="location='TimServlet?command=con_main'">
	</div>
</body>
</html>