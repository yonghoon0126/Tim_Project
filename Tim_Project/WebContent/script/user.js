function go_next() {
  if (document.frm.select[0].checked == true) {
    document.frm.action = "TimServlet?command=con_join_form";
    document.frm.submit();
      alert('회원으로 선택하셨습니다.');
  } else if (document.frm.select[1].checked == true) {
    document.frm.action = "TimServlet?command=ow_join_form";
    document.frm.submit();
      alert('사장님으로 선택하셨습니다.');
  }else{
      alert('둘 중 선택하셔야합니다.');
  }
}





function con_id_check() {
  if (document.frm.con_id.value == "" || document.frm.con_id.value.length < 0) {
    alert('아이디를 입력해주세요');
    document.frm.con_id.focus();
    return;
  }
  var url = "TimServlet?command=con_id_check_form&con_id=" 
+ document.frm.con_id.value;
  window.open( url, "_blank_1",
"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
}




function ow_id_check() {
  if (document.frm.ow_id.value == "" || document.frm.ow_id.value.length < 0) {
    alert('아이디를 입력해주세요.');
    document.frm.ow_id.focus();
    return;
  }
  var url = "TimServlet?command=ow_id_check_form&ow_id=" 
+ document.frm.ow_id.value;
  window.open( url, "_blank_1",
"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
}




function con_name_check() {
  if (document.frm.con_name.value == "") {
    alert('닉네임을 입력해주세요');
    document.frm.con_name.focus();
    return;
  }
  var url = "TimServlet?command=con_name_check_form&con_name=" 
+ document.frm.con_name.value;
  window.open( url, "_blank_1",
"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
}







function con_name_update_check() {
  if (document.frm.con_name.value == "") {
    alert('닉네임을 입력해주세요.');
    document.frm.con_name.focus();
    return;
  }
  var url = "TimServlet?command=con_name_check_form&con_name=" 
+ document.frm.con_name.value;
  window.open( url, "_blank_1",
"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
}



function ow_name_check() {
  if (document.frm.ow_name.value == "") {
    alert('가게이름을 입력해주세요.');
    document.frm.ow_name.focus();
    return;
  }
  var url = "TimServlet?command=ow_name_check_form&ow_name=" 
+ document.frm.ow_name.value;
  window.open( url, "_blank_1",
"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
}



function ow_name_update_check() {
  if (document.frm.ow_name.value == "") {
    alert('닉네임을 입력해주세요.');
    document.frm.ow_name.focus();
    return;
  }
  var url = "TimServlet?command=ow_name_check_form&ow_name=" 
+ document.frm.ow_name.value;
  window.open( url, "_blank_1",
"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
}




function go_save() {
  if (document.frm.con_id.value == "") {
    alert("아이디를 입력해주세요.");
    document.frm.con_id.focus();
    
  } else if (document.frm.con_id.value != document.frm.re_con_id.value) {
    alert("아이디 중복확인을 클릭 해주세요.");
    document.frm.con_id.focus();
 
  } else if (document.frm.con_name.value != document.frm.re_con_name.value) {
    alert("닉네임 중복확인을 클릭 해주세요..");
    document.frm.con_name.focus();
 
  } else if (document.frm.con_pwd.value == "") {
    alert("비밀번호를 입력 해주세요.");
    document.frm.con_pwd.focus();
  
  } else if ((document.frm.con_pwd.value != document.frm.con_pwd_ck.value)) {
    alert("비밀번호가 일치하지 않습니다.");
    document.frm.con_pwd.focus();
 
  } else if (document.frm.con_name.value == "") {
    alert("닉네임을 입력 해주세요.");
    document.frm.con_name.focus();

  } else if (document.frm.con_phon.value == "") {
    alert("전화번호를 입력 해주세요.");
    document.frm.con_phon.focus();
 
  } else {
    document.frm.action = "TimServlet?command=con_join";
    document.frm.submit();
    alert("회원가입 성공 메인으로 이동합니다.");
  }
}



function go_update() {
 if (document.frm.con_name.value == "") {
    alert("닉네임을 입력 해주세요.");
    document.frm.con_name.focus();
    return false;

  } else if (document.frm.con_name.value != document.frm.re_con_name.value) {
    alert("닉네임 중복확인을 클릭 해주세요.");
    document.frm.con_name.focus();
     return false;

  } else if (document.frm.con_pwd.value == "") {
    alert("비밀번호를 입력 해주세요.");
    document.frm.con_pwd.focus();
     return false;
  
  } else if ((document.frm.con_pwd.value != document.frm.con_pwd_ck.value)) {
    alert("비밀번호가 일치하지 않습니다.");
    document.frm.con_pwd.focus();
     return false;
 

  } else if (document.frm.con_phon.value == "") {
    alert("전화번호를 입력 해주세요.");
    document.frm.con_phon.focus();
     return false;
 
  } else {
    document.frm.action = "TimServlet?command=con_update";
    document.frm.submit();
    alert("개인 정보 수정 성공 회원님 메인으로 이동합니다.");
  }
}






function go_savee() {
  if (document.frm.ow_id.value == "") {
    alert("아이디를 입력 해주세요.");
    document.frm.ow_id.focus();
    
  } else if (document.frm.ow_id.value != document.frm.re_ow_id.value) {
    alert("아이디 중복확인을 클릭 해주세요.");
    document.frm.ow_id.focus();
 
  } else if (document.frm.ow_name.value != document.frm.re_ow_name.value) {
    alert("가게이름 중복확인을 클릭하여 주십시오.");
    document.frm.ow_name.focus();
 
  } else if (document.frm.ow_pwd.value == "") {
    alert("비밀번호를 입력 해주세요.");
    document.frm.ow_pwd.focus();
  
  } else if ((document.frm.ow_pwd.value != document.frm.ow_pwd_ck.value)) {
    alert("비밀번호가 일치하지 않습니다.");
    document.frm.ow_pwd.focus();
 
  } else if (document.frm.ow_phon.value == "") {
    alert("전화번호를 입력 해주세요.");
    document.frm.ow_phon.focus();

  } else if (document.frm.ow_addr.value == "") {
    alert("가게주소를 입력해주세요.");
    document.frm.ow_addr.focus();
 
  } else {
    document.frm.action = "TimServlet?command=ow_join";
    document.frm.submit();
    alert("사장님 회원가입 성공 메인으로 이동합니다.");
	}
}

function go_updatee() {
 if (document.frm.ow_name.value == "") {
    alert("가게 이름을 입력 해주세요.");
    document.frm.ow_name.focus();
    return false;

  } else if (document.frm.ow_name.value != document.frm.re_ow_name.value) {
    alert("가게이름 중복확인을 클릭 해주세요.");
    document.frm.ow_name.focus();
     return false;

  } else if (document.frm.ow_pwd.value == "") {
    alert("비밀번호를 입력 해주세요.");
    document.frm.ow_pwd.focus();
     return false;
  
  } else if ((document.frm.ow_pwd.value != document.frm.ow_pwd_ck.value)) {
    alert("비밀번호가 일치하지 않습니다.");
    document.frm.ow_pwd.focus();
     return false;
 

  } else if (document.frm.ow_phon.value == "") {
    alert("전화번호를 입력 해주세요.");
    document.frm.con_phon.focus();
     return false;
 
  } else if (document.frm.ow_addr.value == "") {
    alert("가게 주소를 입력 해주세요.");
    document.frm.ow_addr.focus();
     return false;
 
  } else {
    document.frm.action = "TimServlet?command=ow_update";
    document.frm.submit();
    alert("개인 정보 수정 성공 회원님 메인으로 이동합니다.");
  }
}







