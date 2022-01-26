<%@ page language="java" 
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Do+Hyeon&family=Dongle:wght@300&family=IBM+Plex+Sans+KR:wght@200&family=Jua&family=Lato:ital,wght@0,300;1,700&family=Luxurious+Roman&family=Nanum+Gothic+Coding&family=Oswald:wght@600&family=Poppins:wght@500&family=Roboto+Condensed:wght@700&family=Ubuntu:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Do+Hyeon&family=Dongle:wght@300&family=IBM+Plex+Sans+KR:wght@200&family=Jua&family=Lato:ital,wght@0,300;1,700&family=Luxurious+Roman&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Oswald:wght@600&family=Poppins:wght@500&family=Roboto+Condensed:wght@700&family=Ubuntu:wght@500&display=swap" rel="stylesheet">
<style type="text/css">
body{
	background-image:url("img/bg8.png");
	background-repeat:no-repeat;
	height:100vh;
	background-size:cover;
	margin:0;
	padding:0;
	height:100%;
}
html{
	margin:0;
	padding:0;
	height:100%;
}
.Eng{
	font-size:135px;
	padding-top:110px;
	padding-left:130px;
	font-family:"Poppins",sans-serif;
}
.Kor{
	font-size:57px;
	padding-left:185px;
	font-family:"Nanum Gothic",sans-serif;
}
.start{
	text-align:center;
	border-radius:60px;
	height:100px;
	width:215px;
	font-size:35px;
	background-color:#FFF44F;
	opacity: 0.8;
	font-color:white;
	outline:0;
   	border:0;
   	margin-top:232px;
   	margin-left:1250px;
	font-family:"Nanum Gothic",sans-serif;
}
</style>

</head>
<body>
<div class="contentBox">
	<div class="Eng">
		TIME IS MONEY
	</div>
	<div class="Kor">
		예약을 더욱 쉽게.
	</div>
	<div class="btn">
		<input class="start" type="button" onclick="location='TimServlet?command=main'"
		value="시작하기">
	</div>

</div>
</body>
</html>