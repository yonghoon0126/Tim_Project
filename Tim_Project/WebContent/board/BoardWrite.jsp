<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome Time Is Money!</title>
<link rel="stylesheet" type="text/css" href="">

<style>
hr {
	width: 80%;
}

table {
	width: 1000px;
	table-layout: fixed;
	margin-top: 30px;
	margin-left: auto;
	margin-right: auto;
	font-family: "Nanum Gothic", sans-serif;
	font-size: 20px;
	border-spacing: 0px;
	border: 1px solid #8F784B;
	background-color: #FFFFcc;
	box-shadow: inset 0 0 8px #deb13a;
}

th, td {
	border: 1px solid #444444;
	padding: 10px;
}

.btn1 {
	background-image: url("./img/button.png");
	background-repeat: no-repeat;
	background-size: 220px 90px;
	background-color: white;
	height: 90px;
	width: 220px;
	border: none;
	background-position: 0px center;
	font-size: 26px;
	cursor:pointer;
}

.btn2 {
	background-image: url("./img/button.png");
	background-repeat: no-repeat;
	background-size: 220px 90px;
	background-color: white;
	height: 90px;
	width: 220px;
	border: none;
	background-position: 0px center;
	font-size: 26px;
	cursor:pointer;
}

.btn3 {
	background-image: url("./img/button.png");
	background-repeat: no-repeat;
	background-size: 220px 90px;
	background-color: white;
	height: 90px;
	width: 220px;
	border: none;
	background-position: 0px center;
	font-size: 26px;
	cursor:pointer;
}

.btn{
	margin-left:auto;
	margin-right:auto;
	width:1000px;
}


textarea {
	resize: none;
	width: 99%;
	hegith: 100%;
	border: 0;
	font-size: 22px;
	font-family: "Nanum Gothic", sans-serif;
}

input {
	width: 99%;
	border: 0;
	font-size: 20px;
}

.t1 {
	width: 15%;
}

.t2 {
	background-color: white;
	width: 30%;
}

.t3 {
	width: 15%;
}

.t4 {
	background-color: white;
	width: 40%;
	padding: 0px;
}

.t5 {
	background-color: white;
	padding: 0px;
}

.t6 {
	background-color: white;
	padding: 0px;
}
</style>

<script type="text/javascript" src="script/board.js"></script>

</head>



<body>
	<%@ include file="../header.jsp"%>
	<hr>

	<div id="wrap" align="center">

		<h1>생생 리뷰 - 작성</h1>

		<form name="frm" method="post" action="TimServlet?command=board_write">



			<table>
			
				<tr>
					<th class="t1">닉네임</th>
					<td class="t2"><input type="hidden" name="bo_name" value="">${con_login_User.con_name}</td>
					
					<th class="t3">비밀번호</th>
					<td class="t4"><input type="password" name="bo_pass" value="" placeholder=" * 로그인 시 비밀번호를 입력해주세요.">
									<input type="hidden" name="con_pwd"	value="${con_login_User.con_pwd}"></td>
				</tr>
				
				<tr>
					<th>제목</th>
					<td class="t5" colspan="3"><input type="text" size="10" name="bo_title" value="" placeholder="  * 제목을 작성해주세요."></td>
				</tr>
				<tr>
					<th>내용</th>
					<td class="t6" colspan="3">
					<textarea rows="10" name="bo_content" value="" placeholder=" * 내용을 작성해주세요."></textarea></td>
				</tr>
			</table>
				
				<div class="btn">
					<input class="btn1" type="button" value="등록"	onclick="boardCheck()"> 
					<input class="btn2" type="reset" value="다시 작성"> 
					<input class="btn3" type="button" value="목록" onclick="location.href='TimServlet?command=board_list'">
				</div>
		</form>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>