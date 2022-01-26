<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>닉네임 중복 체크</title>

<script type="text/javascript">
function con_name_ok(){			// 중복 검사 후 사용버튼 눌렀을 때
  opener.frm.con_name.value="${con_name}"; 
  opener.frm.re_con_name.value="${con_name}";
  self.close();
}
</script>
</head>



<body>
<div id="wrap">
  <h1>닉네임 중복확인</h1>
	  <form method=post name=frm style="margin-right:0 "
	 			 action="TimServlet?command=con_name_check_form" >
	  
	    닉네임 <input type=text name="con_name" value=""> 
	         <input type=submit value="검색" class="submit"><br>     
	    
	    <div style="margin-top: 20px">   
	     
	      <c:if test="${message == 1}">
	        <script type="text/javascript">
	          opener.document.frm.con_name.value="";
	        </script>
	        ${con_name} 이미 사용중인 닉네임 입니다.
	      </c:if>
	      
	      <c:if test="${message==-1}">
	        ${con_name} 사용 가능한 닉네임 입니다.
	        <input type="button" value="사용" class="cancel" onclick="con_name_ok()">
	      </c:if>

	    </div>
	  </form>
</div>  
</body>
</html>