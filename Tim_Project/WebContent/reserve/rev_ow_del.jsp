<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
예약이 삭제 완료되었습니다!
<form>
	<input type="button" value="예약 목록" onclick="location='../TimServlet?command=reserve_ow_list'">
	<input type="button" value="메인으로 가기" onclick="location='TimServlet?command=ow_main'">
</form>
</body>
</html>