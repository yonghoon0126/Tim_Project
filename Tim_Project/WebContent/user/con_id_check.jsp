<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<script type="text/javascript">
function con_id_ok(){
  opener.frm.con_id.value="${con_id}"; 
  opener.frm.re_con_id.value="${con_id}";
  self.close();
}
</script>
</head>
<body>
<div id="wrap">
  <h1>ID 중복확인</h1>
  <form method=post name=frm style="margin-right:0 "
 			 action="TimServlet?command=con_id_check_form" >
  
    아이디 <input type=text name="con_id" value=""> 
         <input type=submit value="검색" class="submit"><br>     
  
    
    
    <div style="margin-top: 20px">   

      <c:if test="${message == 1}">
        <script type="text/javascript">
          opener.document.frm.con_id.value="";
        </script>
        ${con_id}는 이미 사용중인 아이디 입니다.
      </c:if>
      
      <c:if test="${message==-1}">
        ${con_id}는 사용 가능한 아이디 입니다.
        <input type="button" value="사용" class="cancel" onclick="con_id_ok()">
      </c:if>

    </div>

  </form>
</div>  
</body>
</html>