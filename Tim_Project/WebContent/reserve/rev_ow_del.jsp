<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
.all {
	margin-left: auto;
	margin-right: auto;
	height: 600px;
	width: 600px;
	margin-top: 120px;
	border: 7px solid #B8997C;
}

.text {
	font-family: "Nanum Gothic Coding", sans-serif;
	font-size: 43px;
	text-align: center;
	margin-top: 70px; /* 예약완료 글씨 세로 위치 */
}

.btn1 {
	font-size: 25px;
	background-color: #E9B663;
	border: 1px solid #E8D581;
	font-family: "Gothic A1", sans-serif;
}

.btn2 {
	font-size: 25px;
	background-color: #E9B663;
	border: 1px solid #E8D581;
	font-family: "Gothic A1", sans-serif;
}

.image {
	margin-left: auto;
	margin-right: auto;
	height: 200px;
	width: 200px;
	margin-top: 80px;
}

img {
	max-height: 100%;
	max-width: 100%;
}

.btn {
	position: absolute;
	width: 100%;
	top: 65%;
	left: 50%;
	transform: translate(-50%, -100%);
	text-align: center;
}
</style>
</head>
<body>
	<div class="all">
		<div class="image">
			<img src="img/ok.png">
		</div>
		<div class="text">예약이 삭제 완료되었습니다!</div>
		<div class="btn">
			<form>
				<input class="btn1" type="button" value="예약 목록" onclick="location='../TimServlet?command=reserve_ow_list'">
				<input class="btn2" type="button" value="메인으로" onclick="location='TimServlet?command=ow_main'">
			</form>
		</div>
	</div>
</body>
</html>