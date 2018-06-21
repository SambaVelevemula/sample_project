function formvalidate(){
	
	 var q1 = document.getElementsByName("q1_ans_rbutton")
	 var c1 = -1

	 for(var i=0; i < q1.length; i++){
	    if(q1[i].checked) {
	       c1 = i; 
	    }
	 }
	 if (c1 == -1){ alert("please select query 1 feedback");
	 return false;
	 }
	 
	 var q2 = document.getElementsByName("q2_ans_rbutton")
	 var c2 = -1

	 for(var i=0; i < q2.length; i++){
	    if(q2[i].checked) {
	       c2 = i; 
	    }
	 }
	 if (c2 == -1){ alert("please select query 2 feedback");
	 return false;
	 }
	 
	 var q3 = document.getElementsByName("q3_ans_rbutton")
	 var c3 = -1

	 for(var i=0; i < q3.length; i++){
	    if(q3[i].checked) {
	       c3 = i; 
	    }
	 }
	 if (c3 == -1){ alert("please select query 3 feedback");
	 return false;
	 }
	 
	 var q4=document.getElementById("q4_ans_select").value;
	 if(q4=="none selected"){
		 alert("Please select query 4 feedback!");
		 document.getElementById("q4_ans_select").focus();
		 return false; 
	 }
	 
	// var captcha1=document.getElementById("captcha1").value;
	 var code1=document.getElementById("code").value;
	 var captcha = session.getAttribrute("captcha");
	// var code = session.getAttribrute("code");
	 
	// alert(" js captcha."+captcha1+"..code.."+code1);
     
	/* if(code1==null ||code1==""){
		 alert("Incorrect capture. please try again");
		// location.reload(true);
		// returnToPreviousPage();
		 return false;
	 }
	 if(!(captcha1==code1)){
		 alert("Incorrect capture. please try again");
		// location.reload(true);
		// returnToPreviousPage();
		// var n="Incorrect";
		// document.getElementById("demo").innerHTML = n;
		 return false;
	 }*/


	 
	 
	 
	 /* var t_id = document.getElementById("ticket_id").value;
	 alert("t_id.."+t_id);
	 var newStr = t_id.trim();
	 if(newStr==null) 
     {      
		  alert("you can not submit the servey!");
          return false;       
     }*/
	 
	
	/* else{
		 return true;
	 }*/
	
}
