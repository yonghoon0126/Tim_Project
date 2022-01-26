<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function mn_res_pic(){
		var f= document.f;
		f.encoding = "multipart/form-data";
		f.action="TimServlet?command=mn_respic";
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

.form{
	height:299px;
	width:500px;
	text-align:center;
	line-height: 150px;
}

</style>
</head>
<body>
	<form name="f" method="post"  enctype="multipart/form-data">
	<div class="form">
		&emsp;&emsp;&emsp;&emsp;
		가게 사진 : <input type="file" name="pic">
		<input type="button" value="추가하기" onclick="mn_res_pic()"> 
		<input type="reset" value="취소하기">
		</div>
	</form>
</body>
</html>