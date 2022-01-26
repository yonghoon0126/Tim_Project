<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<script type="text/javascript">

</script>


<style type="text/css">
div {
	position: absolute;
	top: 20%;
	left: 50%;
}

table {
	position: absolute;
	top: 30%;
	left: 40%;
}
</style>

</head>
<body>
	<form method="post" action="TimServlet?command=login" >
		<div>로고</div>
		<table>
			<tr>
				<td></td>
				<td>아이디 </td>
				<td><input type="text" name="userid" value="${userid}"> </td>
				<td>&nbsp;&nbsp;<input type="submit" value="로그인" onclick="return loginCheck()"></td>
			</tr>
			
			<tr>
				<td></td>
				<td>비밀번호</td>
				<td><input type="password" name="pwd"></td>
				<td>&nbsp;&nbsp;<input type="button" value="회원 가입" 
				onclick="location='TimServlet?command=join_select'"></td>
			</tr>
		</table>
	</form>
	
</body>
</html>