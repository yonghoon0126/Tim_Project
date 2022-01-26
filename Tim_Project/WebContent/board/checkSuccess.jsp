<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome Time Is Money!</title>
<link rel="stylesheet" type="text/css" href="">
</head>
<body>
<script type="text/javascript">
	if(window.name=="update"){
		window.opener.parent.location.href=
		"TimServlet?command=board_update_form&bo_num=${param.bo_num}";
	}else if(window.name=="delete"){
		window.opener.parent.location.href=
		"TimServlet?command=board_delete&bo_num=${param.bo_num}";
	}
window.close();
</script>
</body>
</html>