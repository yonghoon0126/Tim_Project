<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게 목록, 가게 찾기</title>
<link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Do+Hyeon&family=Dongle:wght@300&family=IBM+Plex+Sans+KR:wght@200&family=Jua&family=Lato:ital,wght@0,300;1,700&family=Luxurious+Roman&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Oswald:wght@600&family=Poppins:wght@500&family=Roboto+Condensed:wght@700&family=Ubuntu:wght@500&display=swap" rel="stylesheet">
<style>
body{
	
}
.a {
	width: 1300px;
	table-layout: fixed;
	margin-top:65px;
	margin-left:450px;
	margin-right:auto;
	font-family:"Nanum Gothic",sans-serif;
	font-size:22px;
}
th, td {
	border: 1px solid #444444;
}
hr{
	width:80%;
}
.row{
	margin-top:20px;
}
.form-control{
	background-image:url("./img/search.png");
	background-repeat:no-repeat;
	background-size:43px;
	background-position:10px center;
	height:40px;
	width:520px;
	font-size:20px;
	padding:0 0 0 65px;
	cursor: pointer;
	transform:translate(-20%,35%);
	font-family:"Do Hyeon",sans-serif;
}
.btn{
	background-image:url("./img/resBtn.png");
   	background-repeat:no-repeat;
   	background-size:102%;
    height:100px;          
   	width:150px;
   	border:none;
    background-position: 0px center;
    padding:0px;     
	float:left;
	transform:translate(890%,-60%);
	font-size:35px;
	font-family:"Jua",sans-serif;
}
.divBtn{
	background-color:white;
	height:10px;
}
</style>

<script type="text/javascript" src="script/reserve.js"></script>

</head>
<body>
	<%@ include file="../header.jsp" %>
	<hr>
	<div class="container" align="center">
		<div class="row">
			<form method="post" name="search" action="TimServlet?command=mn_search">
				<input type="text" class="form-control" placeholder="검색어 입력" name="searchText" maxlength="100">
					<div class="divBtn">

 							<button class="btn" onclick="searchCheck()">검색</button>

					</div>
			</form>
		</div>
		<table class="a">
			<tr>
				<th>가게 사진</th>
				<th>가게 정보</th>
			</tr>
			<c:forEach var="owner" items="${ownerList}">
				<tr>
					<td>
						<c:choose>
							<c:when test="${owner.ow_img ne '0'}">
								<img src="upload/${owner.ow_img}" width="200px">
							</c:when>
							<c:otherwise>
								<img src="upload/default_res.jpg" width="200px">
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<a href="TimServlet?command=mn_res_view&mn_name=${owner.ow_name}">${owner.ow_name}</a>
						<br>
						${owner.ow_addr}
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<%@ include file="../footer.jsp" %>
</body>
</html>