function searchCheck(){
	if(document.search.searchText.value==""){
	alert("검색어를 입력하세요.");
		document.search.searchText.focus();
	 	document.search.action = "TimServlet?command=mn_res_list";
		return;
	}else{
	 document.search.action = "TimServlet?command=mn_search";
 	 document.search.submit();
  }
}

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

function revAddcheck(){
		var f = document.reserve;
		
		if(f.date.value=""){
			alert('날짜를 입력하여 주십시오.');
    		return;
		}
		if(f.time.value=""){
			alert('시간을 입력하여 주십시오.');
    		return;
		}
		
}