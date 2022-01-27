<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Do+Hyeon&family=Dongle:wght@300&family=IBM+Plex+Sans+KR:wght@200&family=Jua&family=Lato:ital,wght@0,300;1,700&family=Luxurious+Roman&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Oswald:wght@600&family=Poppins:wght@500&family=Roboto+Condensed:wght@700&family=Ubuntu:wght@500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/con_main.css">
</head>
<body id="body">

	<div class="all">
		<div class="con_main_form">

			<div class="logo">
				<div class="user">
					<img class="img" src="./img/logo.png">
					<div class="b">
						<img class="usermain" src="./img/usermain1.png">
						${con_login_User.con_name}님<br>(id : ${con_login_User.con_id}) <br>
						<input class="userBtn1" type="button" value="로그아웃"
							onclick="location='TimServlet?command=logout'"> <input
							class="userBtn2" type="button" value="정보수정"
							onclick="location='TimServlet?command=con_update_form'">


					</div>
				</div>
			</div>

			<hr class="hr">
			<div class="Container">
				<div class="mySlides fade">
					<video class="video" width="100%" height="150%" autoplay loop muted>
						<source src="./img/MENU.mp4" />
					</video>
				</div>

				<div class="mySlides fade">
					<video class="video" width="100%" height="150%" autoplay loop muted>
						<source src="./img/reserve.mp4" />
					</video>
				</div>

				<div class="mySlides fade">
					<video class="video" width="100%" height="150%" autoplay loop muted>
						<source src="./img/board.mp4" />
					</video>
				</div>
			</div>
			<br>
			<div class="dotClass">
				<span class="dot"></span> <span class="dot"></span> <span
					class="dot"></span>
			</div>

			<form method="post" name="frm">
				<div class="a">
					<input class="resBtn1" type="button" value="예약하기" onclick="location='TimServlet?command=mn_res_list'">
					
					<input class="resBtn2" type="button" value="예약조회" onclick="location='TimServlet?command=reserve_con_list'">
				
					<input class="resBtn3" type="button" value="게시판" onclick="location='TimServlet?command=board_list'">
				</div>
			</form>
			</div>
	</div>
	<footer class="footer">
		<%@ include file="../footer.jsp" %>
	</footer>
	<script src="script/video.js"></script>
</body>
</html>


