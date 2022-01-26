function delOwRev(){
		var f = document.listRev;
		var count = 0;

  		/*if (f.num.length == undefined) {
   			if (f.num.checked == true) {
     			count++;
   			}
 		}*/
	
		for ( var i = 0; i < f.num.length; i++) {
    			if (f.num[i].checked == true) {
      				count++;
    			}
  		}
		
		 if (count == 0) {
   			 alert("삭제할 항목을 선택해 주세요.");
			return;
  		} else {
  			f.action="TimServlet?command=reserve_ow_delete";
			f.submit();
  		}		
}
function delConRev(){
		var f = document.listRev;
		var count = 0;

  		/*if (f.num.length == undefined) {
   			if (f.num.checked == true) {
     			count++;
   			}
 		}*/
	
		for ( var i = 0; i < f.num.length; i++) {
    			if (f.num[i].checked == true) {
      				count++;
    			}
  		}
		
		 if (count == 0) {
   			 alert("삭제할 항목을 선택해 주세요.");
			return;
  		} else {
  			f.action="TimServlet?command=reserve_con_delete";
			f.submit();
  		}		
}
	
function upRev(){
		var f = document.listRev;
		f.action="TimServlet?command=reserve_update";
		f.submit()
}

function goConMain(){
		var f = document.listRev;
		f.action="TimServlet?command=con_main";
		f.submit()
}
function goOwMain(){
		var f = document.listRev;
		f.action="TimServlet?command=ow_main";
		f.submit()
}


function revAdd(){

	  var url = "TimServlet?command=reserve_add_form";
  window.open( url, "_blank_1",
"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
	
}

function revAdd2(){
	
	if (document.form.date.value == "undefined" || document.form.date.value == "") { 
		alert('날짜를 입력하여 주십시오.');
		return false;
	}
	if (document.form.time.value == "undefined" || document.form.time.value == "") { 
		alert('시간을 입력하여 주십시오.');
		return false;
		
	} else {
    document.form.action = "TimServlet?command=reserve_add";
    document.form.submit();
  }
}