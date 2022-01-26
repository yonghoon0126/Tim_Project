<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/reserve.js"></script>
<style type="text/css">
body {
	font-size: x-large;
	margin-top: 15%;
	margin-left: 46%;
}
h3{
	margin-left: -10%	
}
div{
	margin-left: -2%
}
input[type=date]{
	margin-left: -2%
}
</style>
</head>

<body>
	<h3>날짜와 시간을 골라주세요!</h3>
	<form id="reserve" action="TimServlet?command=reserve_add2" method="post" name="form">
	
		<p><input type="date" name="date" id="date"></p>
		<p><input type="time" name="time" id="time"></p>
	<div>
		<input type="button" value="예약하기" onclick="revAdd2()"> 
		<input type="button" onclick="history.back()" value="뒤로가기">
	</div>
	</form>
</body>
</html>