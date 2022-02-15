<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>







<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>

<script type="text/javascript">
function ow_name_ok(){
  opener.frm.ow_name.value="${ow_name}"; 
  opener.frm.re_ow_name.value="${ow_name}";
  self.close();
}
</script>
</head>



<body>
<div id="wrap">
  <h1>가게이름 중복확인</h1>
  <form method=post name=frm style="margin-right:0 "
  action="TimServlet?command=ow_name_check_form" >
  
    가게이름 <input type=text name="ow_name" value=""> 
            <input type=submit value="검색" class="submit"><br>     

    <div style="margin-top: 20px">   
     
      <c:if test="${message == 1}">
	        <script type="text/javascript">
	          opener.document.frm.ow_name.value="";
	        </script>
        ${ow_name} 이미 사용중인 가게이름 입니다.
      </c:if>
      
      <c:if test="${message==-1}">
        ${ow_name} 사용 가능한 가게이름 입니다.
        <input type="button" value="사용" class="cancel" onclick="ow_name_ok()">
      </c:if>
    
    </div>
  
  </form>
</div>  
</body>
</html>