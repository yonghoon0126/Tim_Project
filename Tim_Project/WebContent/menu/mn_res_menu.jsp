<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function mn_insert() {
		var url = "TimServlet?command=mn_insertForm"
		window
				.open(url, "_blank_1",
						"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500 height=300");
	}
	function mn_res_pic() {
		var url = "TimServlet?command=mn_respicForm"
		window
				.open(url, "_blank_1",
						"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500 height=300");
	}
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap"
	rel="stylesheet">
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
	margin-top: 100px;
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
	height: 10%
}

.bo {
	height: 367px;
	width: 100%;
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

input[type=checkbox] {
	width: 25px;
	height: 25px;
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
	margin-right: 12%;
}

.img {
	width: 200px;
	height: 100%;
	object-fit: cover;
}

.img2 {
	width: 100%;
	height: 100%;
	object-fit: contain;
}

.res { /* 전체div */
	float: left;
	margin-left: 250px;
	margin-top: 0px;
	background-image: url("img/info.png");
	background-size: 300px;
	background-repeat: no-repeat;
	background-position: center;
	width: 300px;
	height: 500px;
}

.name {
	float: left;
	font-size: 32px;
	padding: 0 10px 0 5px;
	font-family: Do Hyeon, sans-serif;
}

.add {
	float: left;
	font-size: 20px;
	padding: 20px 0 0 5px;
	font-family: Do Hyeon, sans-serif;
}

.phon {
	float: left;
	font-size: 20px;
	padding: 3px 0 0 5px;
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

#container {
	position: relative;
	width: 2000px;
	padding: 20px 30px;
	margin: 0 auto;
	letter-spacing: -.2px
}
</style>
</head>
<body>
	<div>
		<%@include file="../header.jsp"%>
		<hr class="hr">
	</div>
	<div id="container">
		<form name="f" action="TimServlet?command=mn_delete" method="post">
			<div class="res">
				<div class="InfoDiv">가게 정보</div>
				<table class="tg1">
					<tr>
						<td class="imgTd"><c:choose>
								<c:when test="${ow_img ne '0'}">
									<img src="foodImg/${ow_img}" class="img2">
								</c:when>
								<c:otherwise>
									<img src="foodImg/default_res.jpg" class="img2">
								</c:otherwise>
							</c:choose></td>
					</tr>
					<tr>
						<td class="infoTd">
							<div class="name">${ow_name}</div>
							<div class="add">${ow_addr}</div>
							<div class="phon">${ow_phon}</div>
						</td>
					</tr>
				</table>
			</div>
			
			<div class="a">
				<div class="bo">
					<table class="tg">
						<tr>
							<th class="tg-c3ow" colspan="2" width="406px">메뉴</th>
							<th class="tg-c3ow" width="180px">가격</th>
							<th class="tg-c3ow" width="300px">설명</th>
							<th class="tg-c3ow" width="117px">삭제</th>
						</tr>
					</table>
					<div class="scroll">
						<table class="tg">
							<c:forEach items="${menu}" var="menu">
								<tr>
									<td class="tg-0pky" width="230px"><img src="foodImg/${menu.mn_img}" class="img"></td>
									<td class="tg-0pky" width="195px">${menu.mn_name}</td>
									<td class="tg-0pky" width="129px">${menu.mn_price}</td>
									<td class="tg-0pky" width="336px">${menu.mn_content}</td>
									<td class="tg-0pky" width="110px"><input type="checkbox" name="num" value="${menu.mn_name}"></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<input class="mnBtn" type="button" onclick="mn_insert()"
					value="메뉴추가"> <input class="mnBtn" type="button"
					onclick="mn_res_pic()" value="가게 사진 추가"> <input
					class="mnBtn" type="submit" value="메뉴삭제"> <input
					class="mnBtn" type="button"
					onclick="location='TimServlet?command=ow_main'" value="메인으로가기">
			</div>
		</form>
		</div>
		<div>
		<%@include file="../footer.jsp"%>
		</div>
</body>
</html>