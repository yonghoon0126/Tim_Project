<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Do+Hyeon&family=Dongle:wght@300&family=IBM+Plex+Sans+KR:wght@200&family=Jua&family=Lato:ital,wght@0,300;1,700&family=Luxurious+Roman&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Oswald:wght@600&family=Poppins:wght@500&family=Roboto+Condensed:wght@700&family=Ubuntu:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/ow_main.css">
</head>



<body id="body">
<div class="all">
<div class="con_main_form">

	<form method="post" name="action">
	
	<div class="logo">
      <div class="user">
         <img class="img" src="./img/logo.png">
      <div class="b">
         <img class="usermain" src="./img/usermain1.png">
	     	   	${ow_login_User.ow_name}님<br>(id : ${ow_login_User.ow_id})
	     	<br>
		
		
			<input class="userBtn1" type="button" value="로그아웃"
					onclick="location='TimServlet?command=logout'">
			
			<input class="userBtn2" type="button" value="정보수정"
					onclick="location='TimServlet?command=ow_update_form'">
		</div>
	  </div>
	 </div>
	 
	<hr class="hr">
	
	<div class="Container">
   		<div class="mySlides fade">
	  		<video class="video" width="100%" height="150%" autoplay loop muted>
	       		<source src="./img/owner.mp4"/>
	  		</video>
		</div>	
	</div>
	
		<div id="a">
			<input class="owBtn1" type="button" value="가게"
			onclick="location='TimServlet?command=mn_res_menu'">
			
			<input class="owBtn2" type="button" value="예약 확인"
				onclick="location='TimServlet?command=reserve_ow_list'">
		</div>
	
	</form>
</div>
</div>

<footer class="footer">
<%@ include file="../footer.jsp" %>
</footer>
<script src="script/video2.js"></script>
</body>
</html>