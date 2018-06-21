<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Random"%>
    <%@ page errorPage="ShowError.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<%@ include file="/common/includes.jsp"%>
<link href="assets/global/css/components.css" rel="stylesheet" id="style_components" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Service Feedback</title>

<link href="assets/global/css/components.css" rel="stylesheet" id="style_components" type="text/css" />
<link rel="stylesheet" href="css/style.css">


<script>

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
	 
	 var q4 = document.getElementsByName("q4_ans_rbutton")
	 var c4 = -1

	 for(var i=0; i < q4.length; i++){
	    if(q4[i].checked) {
	       c4 = i; 
	    }
	 }
	 if (c4 == -1){ alert("please select query 4 feedback");
	 return false;
	 }
	 
	 var a = document.getElementById('q5_ans_txt').value;
	 if(a=="")
	 {
	 alert("Please Enter Your Query 5 Feedback Here");
	return false;
	 }
	 
	 
          
	 
	 
	
	var string1 = removeSpaces(document.getElementById('mainCaptcha').value);
    	var string2 = removeSpaces(document.getElementById('txtInput').value);
		
	if (string1 == string2){
   	   return true;
        }
        else{        
        alert("Enter Valid Captcha");
		return false;
        }
	return true;
	 
}

window.history.forward();
function noBack() {
	window.history.forward(); 
	}



</script>

<!--<script type="text/javascript">

 function Captcha(){
 var alpha = new Array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O'
,'P','Q','R','S','T','U','V','W','X','Y','Z','1','2','3','4','5','6','7','8','9');
                     var i;
                     for (i=0;i<4;i++){
                       var a = alpha[Math.floor(Math.random() * alpha.length)];
                       var b = alpha[Math.floor(Math.random() * alpha.length)];
                       var c = alpha[Math.floor(Math.random() * alpha.length)];
                       var d = alpha[Math.floor(Math.random() * alpha.length)];
                       var e = alpha[Math.floor(Math.random() * alpha.length)];
                       }
                    var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e;
                    
                    document.getElementById("mainCaptcha").value = code
                  }
		
function removeSpaces(string){
		return string.split(' ').join('');
}
</script>-->





</head>
<body onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">

<%
String ticNumber=request.getParameter("Ticket_id");
System.out.println("entering error block:"+ticNumber);
   if (ticNumber==null)
   {
	   throw new RuntimeException("Error condition!!!");
   } 
  
%>


<div id="wrapper" style="width: 100%">
		<div id="header" class="headerBg"
			style="padding-top: 8px; padding-bottom: 8px">
			<div>
			<div class="logo">
				
			</div>
			</div>
		</div>



<!--  CustomerServiceController -->
<form action="CustomerServiceController"  method="post" onsubmit="return formvalidate();">

<div align="center" style="background-color:#3598dc;color:white;font-size: 20px; height: 35px;">
<b>Customer Service Feedback Form</b>
</div>
<div align="center" style="margin-top:50px;">
		<div class="alert alert-info" align="center" style="width:400px;">
			<strong>
				<c:if test="${not empty resMessage}">
    <h1>${resMessage}</h1>
</c:if>
			</strong>
			
		</div>
</div>

	<div class="portlet box blue">
                                <div style="display: block;" class="portlet-body">

                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="exp_with_cmpny" style="margin-left: 50px;">
                                            <thead>
                                                </thead>
			<tbody>
			<tr>
			<td style="padding:10px 0px 10px 0px;color:blue;font-size: 15px;">
			<b>Thank you for taking the time to complete the following questionnaire.
			<br><br>
			Global Cloud Xchange (GCX) is committed to delivering excellent customer service and your feedback is very important to us.
			</b>
			</td>
			</tr>
						<tr>
				<td style="padding:10px 0px 10px 0px;"><b>1. If you had to engage with GCXs technical teams, how would you rate their performance?</b></td>
							</tr>
							<tr>
							<td>
						    <input type="radio" id="q1_ans_rbutton"  name="q1_ans_rbutton" value="Very Good" class="form-control input-circle" style="margin-left: 46px;"/>Very Good<br>
							<input type="radio" id="q1_ans_rbutton"  name="q1_ans_rbutton" value="Good" class="form-control input-circle" style="margin-left: 46px;"/>Good<br>
							<input type="radio" id="q1_ans_rbutton"  name="q1_ans_rbutton" value="Satisfactory" class="form-control input-circle" style="margin-left: 46px;"/>Satisfactory<br>
							<input type="radio" id="q1_ans_rbutton"  name="q1_ans_rbutton" value="Unsatisfactory" class="form-control input-circle" style="margin-left: 46px;"/>Unsatisfactory<br>
							<input type="radio" id="q1_ans_rbutton"  name="q1_ans_rbutton" value="N/A" class="form-control input-circle" style="margin-left: 46px;"/>N/A<br>
							
							</td>
							</tr>
				<tr>
				<td style="padding:10px 0px 10px 0px;"><b>2. How would you rate the frequency of communication throughout this incident?</b></td>
				</tr>
							<tr>
								<td>
								<input type="radio" id="q2_ans_rbutton"  name="q2_ans_rbutton" value="Very Good" class="form-control input-circle" style="margin-left: 46px;"/>Very Good<br>
								<input type="radio" id="q2_ans_rbutton"  name="q2_ans_rbutton" value="Good" class="form-control input-circle" style="margin-left: 46px;"/>Good<br>
								<input type="radio" id="q2_ans_rbutton"  name="q2_ans_rbutton" value="Satisfactory" class="form-control input-circle" style="margin-left: 46px;"/>Satisfactory<br>
								<input type="radio" id="q2_ans_rbutton"  name="q2_ans_rbutton" value="Unsatisfactory" class="form-control input-circle" style="margin-left: 46px;"/>Unsatisfactory<br>

								</td>
							</tr>
				<tr >
				<td style="padding:10px 0px 10px 0px"><b>3. How would you rate the quality of the communication throughout this incident?</b></td>
				</tr>
							<tr>
							<td>
							<input type="radio" id="q3_ans_rbutton"  name="q3_ans_rbutton" value="Very Good" class="form-control input-circle" style="margin-left: 46px;line-height: 2px;"/>Very Good<br>
							<input type="radio" id="q3_ans_rbutton"  name="q3_ans_rbutton" value="Good" class="form-control input-circle" style="margin-left: 46px;"/>Good<br>
							<input type="radio" id="q3_ans_rbutton"  name="q3_ans_rbutton" value="Satisfactory" class="form-control input-circle" style="margin-left: 46px;"/>Satisfactory<br>
							<input type="radio" id="q3_ans_rbutton"  name="q3_ans_rbutton" value="Unsatisfactory" class="form-control input-circle" style="margin-left: 46px;"/>Unsatisfactory<br>

							</td>
							</tr>
				<tr >
				<td style="padding:10px 0px 10px 0px"><b>4. How would you rate your overall experience throughout this incident?</b></td>
				</tr>
							<tr >
							<td >
							<input type="radio" id="q4_ans_rbutton"  name="q4_ans_rbutton" value="Much shorter than expected" class="form-control input-circle" style="margin-left: 46px;line-height: 2px;"/>Very Good<br>
							<input type="radio" id="q4_ans_rbutton"  name="q4_ans_rbutton" value="Good" class="form-control input-circle" style="margin-left: 46px;"/>Good<br>
							<input type="radio" id="q4_ans_rbutton"  name="q4_ans_rbutton" value="Satisfactory" class="form-control input-circle" style="margin-left: 46px;"/>Satisfactory<br>
							<input type="radio" id="q4_ans_rbutton"  name="q4_ans_rbutton" value="Unsatisfactory" class="form-control input-circle" style="margin-left: 46px;"/>Unsatisfactory<br>
							</td>
							</tr>
				<tr >
				<td style="padding:10px 0px 10px 0px"><b>5. Do you have any other comments, questions, or concerns?</b></td>
				</tr>
							<tr>
								<td>
								<textarea   rows="4" cols="45"  maxlength="250" name="q5_ans_txt" id="q5_ans_txt" class="form-control write-message margin_top10 margin_bottom25 col-xs-12 ng-valid ng-dirty" placeholder="Enter your message here"  spellcheck="false" data-gramm="true" data-txt_gramm_id="fc55f108-8636-f7d1-9ec9-0fc64e5fcfb1" data-gramm_id="fc55f108-8636-f7d1-9ec9-0fc64e5fcfb1" data-gramm_editor="true" style="z-index: auto; position: relative; line-height: 20px; font-size: 14px; transition: none; background: transparent !important;margin-left: 46px;"></textarea>
								</td>
							</tr>
							
 <!--<tr>
<td style="padding:10px 0px 10px 0px;" >
Enter Captcha Code <input type="text" id="txtInput"/>
<input type="text" style="background-color:#5DADE2;text-align:center; border:none; font-weight:bold; font-family:Modern" readonly="readonly"  id="mainCaptcha"/>
<img src="./images/refresh.png" id="refresh"  onclick="Captcha();" style="margin-top:5px;"/>	
</td>
</tr> -->

<tr>
<td style="padding:10px 0px 10px 0px">

</td>
</tr>  

</tbody>
</table>

 
<input type="hidden" value="<%= request.getParameter("Ticket_id")%>" name="Ticket_id" id="ticket_id"> 

<br>
<div style="margin-left:150px;" >
<input type="submit" value="Submit" class="btn ssbtn-circle blue">
<!-- <input type="reset" value="Reset" class="btn ssbtn-circle blue">  -->
 </div>
		        <div>
				<br>
				<br>
				</div>			
</div>
</div></div>

<input type="hidden" name="q1_hidden"  value="1.If you had to engage with GCXs technical teams, how would you rate their performance?" class="form-control input-circle"/>
<input type="hidden" name="q2_hidden"  value="2.How would you rate the frequency of communication throughout this incident?" class="form-control input-circle"/>
<input type="hidden" name="q3_hidden"  value="3.How would you rate the quality of the communication throughout this incident?" class="form-control input-circle"/>
<input type="hidden" name="q4_hidden"  value="4.How would you rate your overall experience throughout this incident?" class="form-control input-circle"/>
<input type="hidden" name="q5_hidden"  value="5.Do you have any other comments, questions, or concerns?" class="form-control input-circle"/>

</form>

<div id="footer"><%@ include file="/common/footer.jsp"%>
		</div>

</body>

</html>