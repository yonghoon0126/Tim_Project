<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Do+Hyeon&family=Dongle:wght@300&family=IBM+Plex+Sans+KR:wght@200;300;500&family=Jua&family=Lato:ital,wght@0,300;1,700&family=Luxurious+Roman&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Oswald:wght@600&family=Poppins:wght@500&family=Roboto+Condensed:wght@700&family=Ubuntu:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Do+Hyeon&family=Dongle:wght@300&family=IBM+Plex+Sans+KR:wght@200&family=Jua&family=Lato:ital,wght@0,300;1,700&family=Luxurious+Roman&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Oswald:wght@600&family=Poppins:wght@500&family=Roboto+Condensed:wght@700&family=Ubuntu:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/main.css">
</head>


<body id="body">
	<div class="leftSide"></div>
	<div class="all">
  		<div id="logo">
			<img class="logoImg" src="./img/logo.png">
   		</div>
   		
	<form class="logForm">
      <div class="All">
		<div class="conAll">
            	<div class="con">
                	<img class="img1" src="./img/consumer.png" alt="손님" width="70" height="70">
            	</div>
            	<div class="con">
               		<input class="input1" type="button" value="손님으로 로그인"
                  	onclick="location='TimServlet?command=con_login_form'">
            	</div>
            </div>


            <div class="ow">
               <div class="owIn">
                  <img class="img2" src="./img/ow.png" alt="사장님" width="70" height="70">
               </div>

               <div class="owIn">
                  <input class="input1" type="button" value="사장님으로 로그인"
                     onclick="location='TimServlet?command=ow_login_form'">
               </div>
            </div>

        

      </div>



      <div class="log">
         <div class="join">
            계정이 없으신가요? 
            <input class="input2" type="button" value="회원 가입"
               onclick="location='TimServlet?command=join_select'">
         </div>
      </div>

   </form>

   <div class="Container">

      <div class="mySlides fade">
         <img class="food" src="./img/food1.jpg"> 
         <img class="food" src="./img/food2.jpg"> 
         <img class="food" src="./img/food4.jpg">
         <img class="food" src="./img/food8.jpg">
      </div>

      <div class="mySlides fade">
         <img class="food" src="./img/food5.jpg"> 
         <img class="food" src="./img/food6.jpg"> 
         <img class="food" src="./img/food7.jpg">
         <img class="food" src="./img/food3.jpg">
      </div>

      <div class="mySlides fade">
         <img class="food" src="./img/food10.jpg"> 
         <img class="food" src="./img/food14.jpg"> 
         <img class="food" src="./img/food11.jpg"> 
         <img class="food" src="./img/food17.jpg">
      </div>
      
      <div class="mySlides fade">
         <img class="food" src="./img/food9.jpg"> 
         <img class="food" src="./img/food13.jpg"> 
         <img class="food" src="./img/food12.jpg"> 
         <img class="food" src="./img/food15.jpg">
      </div>
      
      <div class="mySlides fade">
         <img class="food" src="./img/food24.jpg"> 
         <img class="food" src="./img/food25.jpg"> 
         <img class="food" src="./img/food11.jpg"> 
         <img class="food" src="./img/food16.jpg">
      </div>
      
      <div class="mySlides fade">
         <img class="food" src="./img/food23.jpg"> 
         <img class="food" src="./img/food19.jpg"> 
         <img class="food" src="./img/food20.jpg"> 
         <img class="food" src="./img/food21.jpg">
      </div>
      
      <div class="mySlides fade">
         <img class="food" src="./img/food18.jpg"> 
         <img class="food" src="./img/food26.jpg"> 
         <img class="food" src="./img/food23.jpg"> 
         <img class="food" src="./img/food22.jpg">
      </div>

   </div>
   

   <script src="script/main.js"></script>

</div>
<div class="rightSide"></div>
</body>


</html>
<%@ include file="../footer.jsp"%>