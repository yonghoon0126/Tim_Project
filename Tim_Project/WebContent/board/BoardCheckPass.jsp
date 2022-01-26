<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome Time Is Money!</title>
<link rel="stylesheet" src="">
<script type="text/javascript" src="script/board.js">
	
</script>
</head>



<body>
	
	<div align="center">
		<h1>비밀번호 확인</h1>
		
		
		<form action="TimServlet" name="frm" method="get">
			<input type="hidden" name="command" value="board_check_pass">
			<input type="hidden" name="bo_num" value="${param.bo_num}">
			<table>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="bo_pass" size="20"></td>
				</tr>
			</table>
			<br> 
			<input type="submit" value="확인"
				onclick="return passCheck()"> <br>${message}
		</form>
	</div>
</body>
</html>