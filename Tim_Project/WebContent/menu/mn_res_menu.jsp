<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function mn_insert(){
	var url="TimServlet?command=mn_insertForm"
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500 height=300");
}
function mn_res_pic(){
	var url="TimServlet?command=mn_respicForm"
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500 height=300");
}
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:center;font-size: medium;background-color: #FFF9C4;}
.tg .tg-0pky{border-color:inherit;text-align:center;vertical-align:center;font-size: x-large;}
.mn-font{
   font-size: x-large;
}
table{
   width: 100%;
   height: 27%;
 }  
.bo{
  height:450px; 
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
  
  
}
input[type=checkbox] {
   width:25px;
  height:25px;
}    
.scroll{
 	width:100%;
 	height:58.5%;	
   overflow:scroll;
     overflow-x: hidden;

}
.a{
	 float:left;
   margin-left: 22%;
}
.img {
  width: 100px;
  height: 100%;
  object-fit: cover;
}
</style>
</head>
<body>
<%@include file="../header.jsp"%>
<hr class="hr">
	<form name="f" action="TimServlet?command=mn_delete" method="post">
	<div class="a">
      <div class="bo"> 
      <table class="tg" >
			<tr>
				<td>가게 사진</td>
				<td colspan='4'>
				
					<c:choose>
							<c:when test="${ow_img ne '0'}">
								<img src="upload/${ow_img}">
							</c:when>
							<c:otherwise>
								<img src="upload/default_res.jpg" width="200px">
							</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<th class="tg-c3ow" colspan="2">메뉴</th>
				<th class="tg-c3ow" width="180px">가격</th>
				<th class="tg-c3ow" width="300px">설명</th>
				<th class="tg-c3ow" width="117px">삭제</th>
			</tr>
			</table>
			<div class="scroll" >
			<table class="tg">
			<c:forEach items="${menu}" var="menu">
				<tr>
					<td class="tg-0pky" width="100px"><img src="upload/${menu.mn_img}" class="img"></td>
					<td class="tg-0pky">${menu.mn_name}</td>
					<td class="tg-0pky" width="180px">${menu.mn_price}</td>
					<td class="tg-0pky" width="300px">${menu.mn_content}</td>
					<td class="tg-0pky" width="100px"><input type="checkbox" name="num" value="${menu.mn_name}"></td>
				</tr>
			</c:forEach>
		</table>
	  </div>
      </div>
			<input class="mnBtn" type="button" onclick="mn_insert()" value="메뉴추가"> 
			<input class="mnBtn" type="button" onclick="mn_res_pic()" value="가게 사진 추가"> 
			<input class="mnBtn" type="submit" value="메뉴삭제">		
			<input class="mnBtn" type="button" onclick="location='TimServlet?command=ow_main'" value="메인으로가기">
	</div>
	</form>
	<%@include file="../footer.jsp"%>
</body>
</html>