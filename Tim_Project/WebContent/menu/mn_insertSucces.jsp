<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>   
        alert("메뉴가 추가되었습니다");
        opener.location.reload();
        location.href="TimServlet?command=mn_insertForm";  	
    </script>
</body>
</html>