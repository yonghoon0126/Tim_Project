<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 추가</title>
<script>
	function mn_insert(){
		var f= document.insertForm;
	//	f.action="TimServlet?command=mn_insertForm&name="+f.name.value+"&pic="
	//			+f.pic.value+"&price="+f.price.value+"&content="+f.content.value;
		f.encoding = "multipart/form-data";
		f.action="TimServlet?command=mn_insert";
		f.submit();
	}
	function insert_ok(){
		
		self.close();
	}
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<style type="text/css">

body {
        margin:0;
      }

table {
	line-height: 50px;
}
.form{
	position:relative;
	height:299px;
	width:355px;
	margin:auto;
	text-align:center;
}


</style>
</head>
<body>
	<form name="insertForm" method="post" enctype="multipart/form-data">
		<div class="form">
		<table>
			<tr>
				<td>이름 : <input type="text" name="name"></td>
			</tr>
			<tr>
				<td>&emsp;&emsp;&emsp;&emsp;사진<input type="file" name="pic"></td>
			</tr>
			<tr>
				<td>가격 : <input type="text" name="price"></td>
			</tr>
			<tr>
				<td>설명 : <input type="text" name="content"></td>
			</tr>
		</table>

		<input class="insertBtn" type="button" value="추가하기" onclick="mn_insert()" > 
		<input class="insertBtn" type="reset" value="취소하기">
		<input class="insertBtn" type="button" value="닫기" onclick="insert_ok()">	
		</div>		
	</form>
</body>
</html>