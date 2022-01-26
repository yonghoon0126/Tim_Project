<%@ page language="java" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/login.css">
<link rel="stylesheet" type="text/css" href="./css/join.css">
<script type="text/javascript" src="script/user.js"></script>
</head>
<body>
<div class="all">
<div class="bodyWrapper">
<div class="login_form">
<%@include file="../header.jsp"%>
<section>
<form name="frm" action="TimServlet?command=ow_update" method="post">

<h1>정보 수정</h1>

   <table>
   <hr>
      <tr>
         <td><span class="textbox" >아이디 |&nbsp;<input type="text" name="ow_id" value="${ow_login_User.ow_id}" readonly/>&emsp;(수정 불가)</span></td>
      <tr> 
            
      <tr>
         <td><span class="textbox" >가게이름 |&nbsp;<input type="text" name="ow_name"/></span></td>
         <td><input type="hidden" name="re_ow_name"></td>
         <td><input type="button" value="중복 확인" class="dup btn3" onclick="ow_name_update_check()"></td>
      </tr>

      <tr>
         <td><span class="textbox" >비밀번호 |&nbsp;<input type="password" name="ow_pwd" /></span></td>
      </tr>

      <tr>
         <td><span class="textbox" >비밀번호 확인 |&nbsp;<input type="password" name="ow_pwd_ck"/></span></td>
      </tr>

      <tr>
         <td><span class="textbox" >전화번호 |&nbsp;<input type="text" name="ow_phon"  placeholder="예)010-1234-5678"/></span></td>
      </tr>

      <tr>
         <td><span class="textbox" >가게주소 |&nbsp;<input type="text" name="ow_addr"  placeholder="예)서울시 강동구"/></span></td>
      </tr>
   </table>   
            <input type="button" value="변경하기" class="submit btn1" onclick="go_updatee()"> 
               <input type="reset" value="취소하기" class="cancel btn1" onclick="location='TimServlet?command=ow_main'">
      
   

</form>
</section>
</div>
</div>
</div>
</body>
</html>