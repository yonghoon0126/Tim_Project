<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 완료</title>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Gothic+Coding:wght@700&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@200&family=Gowun+Dodum&family=Nanum+Gothic+Coding&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<style>
.text1{
   position: absolute;
     width: 100%;
     top: 61%;
     left: 50%;
     transform: translate(-52%,-100%);
     font-family:"Nanum Gothic Coding",sans-serif;
}
.text2{
   position: absolute;
     width: 100%;
     top: 75%;
     left: 50%;
     transform: translate(-51%,-100%);
     text-align:center;
   font-size:30px;
     font-family:"Gowun Dodum",sans-serif;
}
.text3{
   position: absolute;
     width: 100%;
     top: 80%;
     left: 50%;
     transform: translate(-52%,-100%);
     text-align:center;
   font-size:30px;
     font-family:"Gothic A1",sans-serif;
}
.text1 p{
  text-align: center;
  font-size: 45px;
}
.video{
   height:450px;
   width:430px;
}
.videoDiv{
   margin-left:auto;
   margin-right:auto;
   margin-top:50px;
}
.btn1{
   font-size:20px;
   background-color:#E9B663;
   border:1px solid #E8D581;
}
.btn2{
   font-size:20px;
   background-color:#E9B663;
   border:1px solid #E8D581;
}
.all{
	height:600px;
   width:600px;
   border:7px solid #B8997C;
      	margin-top:120px;
        margin-left:auto;
  		margin-right:auto;
  	 
}
</style>
</head>
<body>
<div class="all">
<div class="videoDiv">
      <video class="video" muted autoplay loop>
        <source src="img/finish.mp4" type="video/mp4">
      </video>
      <div class="text1">
         <p>예약 완료되었습니다.</p>
      </div>


<br>
<div class="text2">${con_login_User.con_name}님 ${mn_name}식당의 예약이 완료되었습니다.</div>
<div class="text3">
   <form>
      <input class="btn1" type="button" value="예약 목록" onclick="location='TimServlet?command=reserve_con_list'">
      <input class="btn2" type="button" value="메인으로" onclick="location='TimServlet?command=con_main'">
   </form>
</div>
</div>
</div>
</body>
</html>