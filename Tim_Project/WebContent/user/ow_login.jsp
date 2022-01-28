<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Dongle:wght@300&family=IBM+Plex+Sans+KR:wght@200&family=Jua&family=Lato:wght@300&family=Nanum+Gothic+Coding&family=Roboto+Condensed:wght@700&family=Ubuntu:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Do+Hyeon&family=Dongle:wght@300&family=IBM+Plex+Sans+KR:wght@200&family=Jua&family=Lato:wght@300&family=Nanum+Gothic+Coding&family=Roboto+Condensed:wght@700&family=Ubuntu:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/login.css">
<script type="text/javascript">
</script>
<style type="text/css">
#container{
     width: 1920px;  
     height: 937px;
}
</style>
</head>
<body>
<div id="container">
<div class="all">
<div class="bodyWrapper">
<div class="login_form">
	<form method="post" action="TimServlet?command=ow_login" >
		<header>
		<%@ include file="../header.jsp"%>
		</header>
	<main>
		<div>
			<input type="text" name="ow_id" value=""  placeholder="아이디를 입력" class="text1">
		</div>
		
		<div>
			<input type="password" name="ow_pwd"   placeholder="비밀번호를 입력" class="text2">
		</div>
		
		<div>
			<input type="submit" value="Login" class="btn1">
		</div>
		
		<div>
			<input type="button" value="Home" class="btn2"
			onclick="location='TimServlet?command=main'">
		</div>
		
		<div class="con">
        	계정이 없으신가요?
            <input class="input" type="button" value="회원 가입"
            onclick="location='TimServlet?command=join_select'">
        </div>
        </main>
	</form>
</div>
</div>
<footer>
<%@ include file="../footer.jsp" %>
</footer>
</div>
</div>
</body>
</html>