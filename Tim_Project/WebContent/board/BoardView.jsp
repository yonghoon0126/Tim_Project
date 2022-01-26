<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome Time Is Money!</title>
<link rel="stylesheet" type="text/css" href="">

<style>
hr{
	width:80%;
}	
table{
	width: 1000px;
	table-layout: fixed;
	margin-top:30px;
	margin-left:auto;
	margin-right:auto;
	font-family:"Nanum Gothic",sans-serif;
	font-size:20px;
	border-spacing:0px;
				border:1px solid #8F784B;
				background-color:#FFFFcc;
				box-shadow:inset 0 0 8px #deb13a;   
	
	
}
th, td {
	border: 1px solid #444444;
	 padding:18px;
}
.btn1{
	background-image:url("./img/button.png");
   	background-repeat:no-repeat;
   	background-size:220px 90px;
   	background-color:white;
    height:90px;          
   	width:220px;
   	border:none;
    background-position: 0px center;
    font-size:26px;
    cursor:pointer;
}
.btn2{
	background-image:url("./img/button.png");
   	background-repeat:no-repeat;
   	background-size:220px 90px;
   	background-color:white;
    height:90px;          
   	width:220px;
   	border:none;
    background-position: 0px center;
    font-size:26px;
    cursor:pointer;
}
.btn3{
	background-image:url("./img/button.png");
   	background-repeat:no-repeat;
   	background-size:220px 90px;
   	background-color:white;
    height:90px;          
   	width:220px;
   	border:none;
    background-position: 0px center;
    font-size:26px;
    cursor:pointer;
}


.t1{
	width:10%;
}
.t2{
	width:10%;
		background-color:white;
	
}
.t3{
	width:10%;
}
.t4{
	width:25%;
		background-color:white;
	
}
.t5{
	width:10%;
}
.t6{
	width:15%;
		background-color:white;
	
}
.t7{
	width:10%;
}
.t8{
	width:10%;
		background-color:white;
}


.t9{
	text-align:left;
   	background-color:white;
}
.t10{
	text-align:left;
   	background-color:white;
	padding:0px;
}
textarea{
	resize:none;
	width:99%;
	hegith:100%;
		border:0;
		font-size:20px;
}

.btn{
	margin-left:auto;
	margin-right:auto;
	width:1000px;
}



</style>

<script type="text/javascript" src="script/board.js"></script>
</head>


<body>
<%@ include file="../header.jsp" %>
<hr>


	<div id="wrap" align="center">
		<h1>생생 리뷰!</h1>
		<table>
			<tr>
				<th class="t1">번호</th>
				<td class="t2">${board.bo_num}</td>
				
				<th class="t3">닉네임</th>
				<td class="t4">${board.bo_name}</td>
				
				<th class="t5">작성일</th>
				<td class="t6">${board.bo_date}</td>
				
				<th class="t7">조회수</th>
				<td class="t8">${board.bo_readCount}</td>
			</tr>
		
			<tr>
				<th>제목</th>
				<td class="t9"colspan="7">${board.bo_title}</td>
			</tr>
			
			<tr>
				<th>내용</th>
				<td class="t10" colspan="7">
					<textarea rows="10" name="bo_content" value="">${board.bo_content}</textarea></td>
			</tr>
		</table>
		
		
		<div class="btn">
		
		<input class="btn1"  type="button" value="수정"
			onclick="open_win('TimServlet?command=board_check_pass_form&bo_num=${board.bo_num}','update')">
		
		<input class="btn2"  type="button" value="삭제"
			onclick="open_win('TimServlet?command=board_check_pass_form&bo_num=${board.bo_num}','delete')">
		
		<input class="btn3"  type="button" value="목록"
			onclick="location.href='TimServlet?command=board_list'">
		</div>

	</div>
<%@ include file="../footer.jsp" %>
</body>
</html>


