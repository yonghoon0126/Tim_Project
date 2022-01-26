<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome Time Is Money!</title>
</head>
<body>
<script type="text/javascript">
if(window.name=="update"){
	window.opener.parent.location.href="TimServlet?command=board_update&bo_num=${param.bo_num}";
}else if(window.name="delete"){
	alert("삭제되었습니다.");
	window.opener.parent.locaion.href="TimServlet?command=board_delete&bo_num=${param.bo_num}";
}
window.close();
</script>
</body>
</html>