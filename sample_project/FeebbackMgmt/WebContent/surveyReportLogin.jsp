<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Survey Report Login</title>
<%@ include file="/common/includes.jsp"%>
<link href="assets/global/css/components.css" rel="stylesheet" id="style_components" type="text/css" />

 <link rel="stylesheet" href="css/result_status.css"> 
  <script src="js/adminlogin_validation.js"></script> 

</head>
<body>
<div id="wrapper" style="width: 100%">
			
		<!-- by veerababu -->
		
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
		
		<div id="content" style="width: 100%; padding: 12px">
			<div style="width: 40%; float: left; height: 200px;margin-left: 300px;margin-top: 100px;"	class="borderGrey">
				<div class="relianceBlue padding5 font14px Bold whiteFont">GCX
					Managed Services Login   
					</div>



<form action="ServeyReportCredential" method="post" onsubmit="return loginformvalidate();">
<table style="margin-left:70px;margin-top:50px;" >
<tr><td>User Name : <input type="text"  name="uname" id="uname"></td></tr>
<tr><td>Password     : &nbsp;&nbsp;&nbsp;<input type="password"  name="password" id="password"></td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td></td></tr>
<tr>
<td align="center"><input type="submit" value="Login"></td>
</tr>

</table>
 <%
String result = (String) session.getAttribute("dologin");
System.out.println("result.."+result);
if(!(result==null) ||result==""){
	%>

<div  style="margin-top:5px;">
		<div class="alert alert-info" align="center" style="width:400px;">
			<strong>
				<%
					out.println(result);
				%>
			</strong>
			
		</div>
</div>
<% } %> 


</form>

</div>
</div>
</div>
<div id="footer"><%@ include file="/common/footer.jsp"%>
		</div>
</body>
</html>