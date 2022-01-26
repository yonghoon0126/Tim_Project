<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게 상세보기</title>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal; height: 25px;}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:center;font-size: medium;background-color: #FFF9C4;}
.tg .tg-0pky{border-color:inherit;text-align:center;vertical-align:center;font-size: x-large;}

.mn-font{
   font-size: x-large;
}
table{
   width: 100%;
   height: 10%;
   
 }  
.bo{
  height:565px; 
   width: 1000px;
   border: 1px solid gray;
}  

hr{
   margin-top:0;
   width: 80%;
}
.mnBtn{
   border:none;
   background-image:url("../img/button.png");
   background-repeat:no-repeat;
   background-size:100%;
   font-size: medium;
   width: 182px;
  height:65px;
  line-height: 48px; 
  margin-left: 20%;
  margin-top: 1%;
  
} 
.scroll{
 	width:100%;
 	height:90%;	
   overflow:scroll;
     overflow-x: hidden;

}
.a{
	 float:right;
   margin-right: 23%;
}
.img {
  width: 200px;
  height:100%;
  object-fit: cover;
}
.img2 {
  width: 230px;
  height:180px;
  object-fit: cover;
}
header{
 text-align: center;
}
</style>


<script type="text/javascript" src="script/reserve.js"></script>




</head>
<body>
<header>
	<h1>${mn_owner}</h1>
	<c:choose>
							<c:when test="${ow_img.ow_img ne '0'}">
								<img src="upload/${ow_img.ow_img}" width="200px" class="img2">
							</c:when>
							<c:otherwise>
								<img src="upload/default_res.jpg" width="200px" class="img2">
							</c:otherwise>
					</c:choose>
</header>
	<hr>
	<div class="a">
     <div class="bo"> 
	<table class="tg">
		<tr>
			<th class="tg-c3ow" colspan="2">메뉴</th>
			<th class="tg-c3ow" width="147px">가격</th>
			<th class="tg-c3ow" width="381px">설명</th>
		</tr>
		</table>
		<div class="scroll" >
			<table class="tg">
		<c:forEach items="${mn_res}" var="menu">
			<tr>
				<td class="tg-0pky" width="200px"><img src="upload/${menu.mn_img}" class="img"></td>
				<td class="tg-0pky" width="150px"> ${menu.mn_name}</td>
				<td class="tg-0pky" width="120px">${menu.mn_price}</td>
				<td class="tg-0pky" width="300px">${menu.mn_content}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
<!-- 	<input class="mnBtn" type="button" value="예약하기" onclick="location='TimServlet?command=reserve_add_form'">
 -->	
 	<input class="mnBtn" type="button" value="예약하기" onclick="revAdd()">
	<input class="mnBtn" type="button" value="메인으로 가기" onclick="location='TimServlet?command=con_main'">
</div>
</body>
</html>