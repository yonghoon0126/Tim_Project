<%@ page language="java"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정</title>
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
<%@include file="../header.jsp"%>
<section>
<form name="frm" action="TimServlet?command=con_update" method="post">
<h1>정보 수정</h1>

	<table>
		<tr>
			<td><span class="textbox" >아이디 |&nbsp;<input type="text" name="con_id" value="${con_login_User.con_id}" readonly/>&emsp;(수정 불가)</span></td>
		<tr> 
				
		<tr>
			<td><span class="textbox" >닉네임 |&nbsp;<input type="text" name="con_name" /></span></td>
			<td><input type="hidden" name="re_con_name"></td>
			<td><input type="button" value="중복 확인" class="dup btn3" onclick="con_name_update_check()"></td>
		</tr>

		<tr>
			
			<td><span class="textbox" >비밀번호 |&nbsp;<input type="password" name="con_pwd" /></span></td>
		</tr>

		<tr>
			<td><span class="textbox" >비밀번호 확인 |&nbsp;<input type="password" name="con_pwd_ck" /></span></td>
		</tr>

		<tr>
			
			<td><span class="textbox" >전화번호 |&nbsp;<input type="text" name="con_phon"  placeholder="예)010-1234-5678"/></span></td>
		</tr>
		
		
	</table>
				<input type="button" value="변경하기" class="submit btn1" onclick="go_update()"> 
      			<input type="reset" value="취소하기" class="cancel btn1" onclick="location='TimServlet?command=con_main'">
			
		
	

</form>
</section>
</div>
</div>
</div>
</body>
</html>