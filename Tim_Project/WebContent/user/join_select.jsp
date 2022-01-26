<%@ page language="java" 
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 선택</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/login.css">
<link rel="stylesheet" type="text/css" href="./css/join.css">
<script type="text/javascript" src="script/user.js"></script>
</head>
<div class="all">
<div class="bodyWrapper">
<div class="login_form">
<header>
<%@include file="../header.jsp"%>
</header>
<hr class="hr">
<br><br><br><br>
<section>
<form id="join_select" method="post" 
		action="TimServlet?command=con_join_form" name="frm">
	
	<input type="radio" name="select" value="consumer"><label>&nbsp;손님으로 가입하기&nbsp;&nbsp;&nbsp;</label>
	
	<br><br><br>
	
	<input type="radio" name="select" value="owner"><label>&nbsp;사장으로 가입하기&nbsp;&nbsp;&nbsp;</label>
	
	<br><br><br>

	<input type="button" value="확인" class="submit btn2"  onclick="go_next()"><br>
	<input type="reset" value="취소" class="cancel btn2"  onclick="history.back()">
</form>
</section>
</div>
</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>