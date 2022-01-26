<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 완료</title>
</head>
<body>
<h1>예약 완료되었습니다.</h1>
<br>
${con_login_User.con_name}님 ${mn_name}식당의 예약이 완료되었습니다.
<form>
	<input type="button" value="예약 목록" onclick="location='TimServlet?command=reserve_con_list'">
	<input type="button" value="메인으로 가기" onclick="location='TimServlet?command=con_main'">
</form>
</body>
</html>