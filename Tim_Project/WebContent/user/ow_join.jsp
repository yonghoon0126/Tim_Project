<%@ page language="java" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/login.css">
<link rel="stylesheet" type="text/css" href="./css/join.css">
<script type="text/javascript" src="script/user.js"></script>
</head>
<body>
<div class="all">
<div class="bodyWrapper">
<div class="login_form">
<header>
<%@include file="../header.jsp"%>
</header>
<section>
<form name="frm" action="TimServlet?command=ow_join" method="post">
<h1>TIM에 오신걸 환영합니다!</h1>
	<table>
		<tr>
			<td><span class="textbox" >아이디 |&nbsp;<input type="text" name="ow_id"></span></td>
			<td><input type="hidden" name="re_ow_id"></td>
			<td><input type="button" value="중복 확인" class="dup btn3" onclick="ow_id_check()"></td>
		<tr> 
				
		<tr>
			<td><span class="textbox" >가게 이름 |&nbsp;<input type="text" name="ow_name"></span></td>
			<td><input type="hidden" name="re_ow_name"></td>
			<td><input type="button" value="중복 확인"  class="dup btn3" onclick="ow_name_check()"></td>
		</tr>

		<tr>
			<td><span class="textbox" >비밀번호 |&nbsp;<input type="password" name="ow_pwd"></span></td>
		</tr>
	
		<tr>
			<td><span class="textbox" >비밀번호 확인 |&nbsp;<input type="password" name="ow_pwd_ck"></span></td>
		</tr>
		
		<tr>
			<td><span class="textbox" >전화번호 |&nbsp;<input type="text" name="ow_phon" placeholder="예)010-1234-5678"/></span></td>
		</tr>
		
		<tr>
			<td><span class="textbox" >가게 주소 |&nbsp;<input type="text" name="ow_addr" placeholder="예)서울시 강동구"/></span></td>
		</tr> 
</table>

				<input type="button" value="가입하기" class="submit btn1" onclick="go_savee()"> 
      			<input type="reset" value="취소하기" class="cancel btn1" onclick="location='TimServlet?command=main'">
	
		
	
	

</form>
</section>
</div>
</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>