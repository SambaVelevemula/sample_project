<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
<%@ include file="/common/includes.jsp"%>
<link href="assets/global/css/components.css" rel="stylesheet" id="style_components" type="text/css" />

 <link rel="stylesheet" href="css/result_status.css"> 
  <script src="js/adminlogin_validation.js"></script> 

<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward(); 
		}
	</SCRIPT>

	<script>
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
window.onhashchange=function(){window.location.hash="no-back-button";}
</script>

</head>
<body onload="noBack();" 	onpageshow="if (event.persisted) noBack();"  onUnload="">

<div id="wrapper" style="width: 100%">


		
		<div id="header" class="headerBg">
			<div>
				<div align="right">
					<h3
						style="color: white; margin-top: -60px; margin-right: 20px; font-family: sans-serif;">Customer
						Service Feedback </h3>
				</div>
				<div class="logo">
				<a href="http://globalcloudxchange.com/">
                                <img alt="" src="./images/logo1.png"> </a>
				</div>
				
			</div>
		</div>
		<!-- ending -->


<% session.invalidate(); %>
<p align ="center" style="font-size: 16px;">You have been successfully logout</p>
<p align ="center">Click Here to <a href="surveyReportLogin.jsp"><B>Login</B></a></p>
<div id="footer"><%@ include file="/common/footer.jsp"%>
		</div>
</body>
</html>