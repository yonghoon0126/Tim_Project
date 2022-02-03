<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게 목록, 가게 찾기</title>
<script>
function searchCheck(){
		if(document.search.searchText.value==""){
			alert("검색어를 입력하세요.");
			document.search.searchText.focus();
	 	   document.search.action = "TimServlet?command=mn_res_list";
			return;
	   }else{
			document.search.action = "TimServlet?command=mn_search";
			document.search.submit();
	  }
	}

</script>
<link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Do+Hyeon&family=Dongle:wght@300&family=IBM+Plex+Sans+KR:wght@200&family=Jua&family=Lato:ital,wght@0,300;1,700&family=Luxurious+Roman&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Oswald:wght@600&family=Poppins:wght@500&family=Roboto+Condensed:wght@700&family=Ubuntu:wght@500&display=swap" rel="stylesheet">
<style>
th, td {
	border: 1px solid #444444;
	border-color: #8F784B;
}
hr{
	width:80%;
}
.row{
	margin-left: 5%;
	
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
	font-family:"Do Hyeon",sans-serif;
	margin-left: -3%;
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
	font-size:35px;
	font-family:"Jua",sans-serif;
}
.btn2{
   border:none;
   background-image:url("./img/button.png");
   background-repeat:no-repeat;
   background-size:100%;
  font-size:20px;
	font-family:"Jua",sans-serif;
   width: 200px;
  height:70px;
  line-height: 48px; 
  margin-top:1%;
}
.a th{
background-color: #FFF9C4;
}



.all {
	margin-left: auto;
	margin-right: auto;
	height: 393px; 					/* 테이블 전체 높이 */
	width: 1000px; 					/* 너비 */
	border: 1px solid #444444; 
	border-spacing: 0px;
}



.container{
	height: 575px;
}


.a {
	width: 40%;
	table-layout: fixed;
	margin-top: 0px;
	margin-left:580px;
	margin-right:auto;
	font-family:"Nanum Gothic",sans-serif;
	font-size:22px;
	
}

.scroll {
	margin-left: 582px;
	margin-right: auto;
	overflow-y: scroll;
	overflow-x: hidden;
	border-spacing: 0px;
	border: 1px solid #444444; 
	height: 268px; 					/* 스크롤 높이 */
	width: 762px; 					/* td 너비 */
	}
	
.list {
	margin-left: auto;
	margin-right: auto;
	border-collapse: collapse;
	text-align: center;
	border: none;
	height: 50px;
	border-spacing: 0px;
	border: 1px solid #444444;
	width: 100%;
}



	
	
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<hr>
	
	<div class="container" align="center">
		<div class="row">
			<form method="post" name="search" action="TimServlet?command=mn_search">
				<input type="text" class="form-control" placeholder="검색어 입력" name="searchText" maxlength="100">
				<button class="btn" onclick="searchCheck()">검색</button>
			</form>
		</div>
		
		
		
		
		
      
      
      
      
      
		<table class="a">
			<tr>
				<th>가게 사진</th>
				<th>가게 정보</th>
			</tr>
			
		</table>	
			
			
	<div class="scroll">
			
			
			
		<table class="list">	
			
			<c:forEach var="owner" items="${ownerList}">
				<tr>
					<td>
						<c:choose>
							<c:when test="${owner.ow_img ne '0'}">
								<img src="./foodImg/${owner.ow_img}" width="200px">
							</c:when>
							<c:otherwise>
								<img src="./foodImg/default_res.jpg" width="200px">
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<a href="TimServlet?command=mn_res_view&mn_owner=${owner.ow_name}">${owner.ow_name}</a>
						<br>
						${owner.ow_addr}
					</td>
				</tr>
			</c:forEach>
		</table>
		
		
		</div>
		
		
		
		<input class="btn2" type="button" value="메인으로 가기" onclick="location='TimServlet?command=con_main'">


	
	
	</div>
	<%@ include file="../footer.jsp" %>
</body>
</html>