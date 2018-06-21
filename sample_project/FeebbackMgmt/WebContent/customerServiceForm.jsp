<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Random"%>
    <%@ page errorPage="ShowError.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<%@ include file="/common/includes.jsp"%>  
<link href="css/fontfaces.css" rel="stylesheet" id="style_components" type="text/css"/>


 
<!-- <link href="assets/global/css/components.css" rel="stylesheet" id="style_components" type="text/css" /> -->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Service Feedback</title>
<link rel="stylesheet" href="css/style.css">
<script>


function formvalidate(){
	 
	 
	 	 
	 var empid=document.getElementsByName("q1_ans_rbutton")
	 var empidtest= /^\\d+$/;
	 if ((!empidtest.test(empid.value)) && (empid.length>=10) ){
			alert("enter valid emp id");
			return false;
		}
	 
	 var fn = document.getElementsByName("q2_ans_rbutton")
	 var fntest= /^[a-zA-Z]+$/;
	 if ((!fntest.test(fn.value)) && (fn.length>=25) ){
			alert("Enter charecter names only size lessthan 25");
			return false;
		}
	 var mail= document.getElementsByName("q3_ans_rbutton")
	 var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	 if ((!filter.test(mail.value)) && (mail.endsWith('@gmail.com') || mail.endsWith('@yahoo.com'))) {
			alert('Please enter a valid email address');
			return false;
		}
			
	 
	 
	 var q4 = document.getElementsByName("q4_ans_rbutton")
	 /* var c4 = -1

	 for(var i=0; i < q4.length; i++){
	    if(q4[i].checked) {
	       c4 = i; 
	    }
	 }
	 if (c4 == -1){ alert("please select query 4 feedback");
	 return false;
	 } */
	 
	 var a = document.getElementById('q5_ans_txt').value;
	 /* if(a=="")
	 {
	 alert("Please Enter Your Feedback Here");
	   document.getElementById('q5_ans_txt').focus();
	 return false;
	 } */
	 
	  
	
		/* 	var string1 = removeSpaces(document.getElementById('mainCaptcha').value);
		 var string2 = removeSpaces(document.getElementById('txtInput').value);
		
		 if (string1 == string2){
		 return true;
		 }
		 else{        
		 alert("Enter Valid Captcha");
		 return false;
		 }
		 return true;
		 */
	}

	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>

<script type="text/javascript">

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
</script>


</head>
<body onload="Captcha();noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">

	<div id="wrapper" style="width: 100%">
		<div id="header" class="headerBg">
			<div>
				<div align="right">
					<p	class="headerCustom1">Customer
						Satisfaction</p>
				</div>
				<div class="logo">
				                              <a href="http://globalcloudxchange.com/">
                                <img alt="" src="./images/logo1.png"> </a>
				
				</div>
				<div style="color: white; margin-left: 85px">
					<p style="font-family: 'Roboto Condensed', sans-serif;font-weight: 300; font-size:20px;margin-top:-20px; word-spacing: 1px"><br>
						Thank you for taking the time to complete the following
						questionnaire.<br>
						<br> Global Cloud Xchange (GCX) is committed to delivering
						excellent customer<br> service and your feedback is very important to
						us.
					</p>
				</div>
			</div>
		</div>



		<!--  CustomerServiceController -->
		<form action="CustomerServiceController" method="post" onsubmit="return formvalidate();">

			<div align="center" style="margin-top: 50px;">
				<div class="alert alert-info" align="center" style="width: 400px;">
					<strong> <c:if test="${not empty resMessage}">
							<h1>${resMessage}</h1>
						</c:if> </strong>

				</div>
			</div>

			<div class="portlet box blue">
				<div style="display: block;" class="portlet-body">

					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover"
							id="exp_with_cmpny" style="margin-left: 50px;margin-top:-25px">
							<thead>
							</thead>
							<tbody>
							
								<tr>
									<td style="padding: 10px 0px 10px 0px; font-weight: 400"><b>1.Enter Employee id: </b>
									</td>
								<td style="font-weight: 300">
										<input type="text" id="q1_ans_rbutton"
										name="q1_ans_rbutton" value=""
										class="form-control input-circle" style="margin-left: 46px;" /></td>
								</tr>
								<tr>
									<td style="padding: 10px 0px 10px 0px; font-weight: 400"><b>2.Enter Full Name : </b>
									</td>
								<td style="font-weight: 300">
									  <input type="text" id="q2_ans_rbutton"
										name="q2_ans_rbutton" value=""
										class="form-control input-circle" style="margin-left: 46px;" /></td>
								</tr>
								<tr>
									<td style="padding: 10px 0px 10px 0px;font-weight: 400"><b>3.Enter Email id :</b>
									</td>
								     <td style="font-weight: 300">
									    <input type="text" id="q3_ans_rbutton"
										name="q3_ans_rbutton" value=""
										class="form-control input-circle"
										style="margin-left: 46px; line-height: 2px;" /><br>
										</td>
									</tr>
								<tr>
									<td style="padding: 10px 0px 10px 0px;font-weight: 400"><b>4.Please select type of ID Proff and Upload.</b>
									</td>
									</tr>
									<tr>
									<td style="font-weight: 300">
									  <select id = "menu" name = "idProffFiled">     
									  	<option value="level1">Select </option>
                						<option value="EMP_ID">EMP ID</option>
                						<option value="PAN_CARD">PAN CARD</option>
                						<option value="PASSPORT">PASSPORT</option>
                					  </select> Upload Id Proof<input type="text" id="idproof" required autofocus name="idproof" title="Enter ID number " placeholder="enter ID number" style="margin-left: 46px; line-height: 2px;" />
									</td>
								<td>
											<input type="file" id="fileUpload" accept=".jpg,.png,.gif,.jpeg" size="1000000" >Max file size 1MB</input>
								</td>
									</tr>
								<tr>
									<td style="padding: 10px 0px 10px 0px;font-weight: 400"><b>5.Please select type of Address Proof and Upload.</b>
									</td>
									</tr>
									<tr>
									<td style="font-weight: 300">
									  <select id = "menu" name = "idProffFiled">
									   <option value="level1">Select </option>        
                						<option value="DrivingL">DrivingLicense</option>
                						<option value="PASSPORT1">PASSPORT</option>
                						<option value="PASSPORT1">Other</option>
                					  </select>
									    Upload Address Proof
					<input type="text" id="idproof" required autofocus name="idproof" title="Enter ID number " placeholder="enter ID number" style="margin-left: 46px; line-height: 2px;" />
				</td>
				<td>
					<input type="file" id="fileUpload" accept=".jpg,.png,.gif,.jpeg" size="1000000" >Max file size 1MB</input>
				</td>

								</tr>
								<tr>
									<td style="padding: 10px 0px 10px 0px;font-weight: 400"><b>5. Do you
											have any other comments, questions, or concerns?</b>
									</td>
								</tr>
								<tr>
									<td style="font-weight: 300;font-family: Roboto Condensed, sans-serif;">
									    <textarea rows="4" cols="45" name="q5_ans_txt"
											id="q5_ans_txt"
											class="form-control write-message margin_top10 margin_bottom25 col-xs-12 ng-valid ng-dirty"
											placeholder="Enter your message here" spellcheck="false"
											data-gramm="true"
											data-txt_gramm_id="fc55f108-8636-f7d1-9ec9-0fc64e5fcfb1"
											data-gramm_id="fc55f108-8636-f7d1-9ec9-0fc64e5fcfb1"
											data-gramm_editor="true"
											style="z-index: auto; position: relative; line-height: 20px; font-size: 14px;font-family: Roboto Condensed, sans-serif;transition: none; background: transparent !important; margin-left: 46px;"></textarea>
									</td>
								</tr>

								<tr>
<td style="padding:10px 0px 10px 0px;" >
Enter Captcha Code <input type="text" id="txtInput"/>
<input type="text" style="background-color:#5DADE2;text-align:center; border:none; font-weight:bold; font-family:Modern" readonly="readonly"  id="mainCaptcha"/>
<img src="./images/refresh.png" id="refresh"  onclick="Captcha();" style="margin-top:5px;"/>	
</td>
</tr>

								<tr>
									<td style="padding: 10px 0px 10px 0px"></td>
								</tr>

							</tbody>
						</table>

						
						<div style="margin-left:220px; ">
						
							<input class="btn" type="submit" value="Submit" >
							<!--<input type="reset" value="Reset" class="btn ssbtn-circle blue">  -->
						</div>
						<div>
							 <br>
						</div>
					</div>
				</div>
			</div>

			<input type="hidden" name="q1_hidden"
				value="1.If you had to engage with GCX’s technical teams, how would you rate their performance?"
				class="form-control input-circle" /> <input type="hidden"
				name="q2_hidden"
				value="2.How would you rate the frequency of communication throughout this incident?"
				class="form-control input-circle" /> <input type="hidden"
				name="q3_hidden"
				value="3.How would you rate the quality of the communication throughout this incident?"
				class="form-control input-circle" /> <input type="hidden"
				name="q4_hidden"
				value="4.How would you rate your overall experience throughout this incident?"
				class="form-control input-circle" /> <input type="hidden"
				name="q5_hidden"
				value="5.Do you have any other comments, questions, or concerns?"
				class="form-control input-circle" />

		</form>

		<div id="footer"><%@ include file="/common/footer.jsp"%>
			
		</div></body>

</html>