function boardCheck(){
	if(document.frm.bo_title.value==""){
		alert("제목을 입력하세요.");
		document.frm.bo_title.focus();
		return false;
		
	}else if(document.frm.bo_content.value==""){
		alert("내용을 입력하세요.");
		document.frm.bo_content.focus();
		return false;
	
	}else if(document.frm.bo_pass.value==""){
		alert("비밀번호를 입력하세요.");
		document.frm.bo_pass.focus();
		return false;

	}else if(document.frm.bo_pass.value != document.frm.con_pwd.value){
		alert("비밀번호가 일치하지 않습니다 다시 입력하세요.");
		document.frm.bo_pass.focus();
		return false;
	
	}else{
	 document.frm.action = "TimServlet?command=board_write";
 	 document.frm.submit();
    alert("게시판으로 이동합니다.");
  }
}
	


function open_win(url,bo_name){
	window.open(url,bo_name,"width=500,height=300");
}

function passCheck(){
	if(document.frm.bo_pass.value.length==0){
		alert("비밀번호를 입력하세요.");
		document.frm.bo_pass.focus();
		return false;
	}
	return true;
}
