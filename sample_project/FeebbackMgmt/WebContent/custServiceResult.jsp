<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/includes.jsp"%>
<link href="assets/global/css/components.css" rel="stylesheet" id="style_components" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Service Feedback Status</title>
 <link rel="stylesheet" href="css/result_status.css"> 
 
 <SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
<script>
function loaded()
{
    //window.setTimeout(CloseMe, 500);
   		var myWindow	 window.open('','_parent','');
    	  //var myWindow = window.open("", "_self");
    	  myWindow.document.write("");
    	  setTimeout (function() {myWindow.close();},500);
}

function CloseMe() 
{
    window.close();
}
</script>
</head>
<body onLoad="loaded()">
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

<div align="center" style="margin-top:50px;">
		<div class="alert alert-info" align="center" style="width:400px;">
			<strong>
			<% out.println(request.getAttribute("resMessage"));  %>
			<!-- 	<c:if test="${not empty resMessage}">
				
				
    <h1> <c:out value="${resMessage}"/></h1>
</c:if> -->
<%-- <c:choose>
    <c:when test="${empty resMessage}">
           <c:out value="${resMessage}"/>
    </c:when>
    <c:otherwise>
        
        <c:out value="${resMessage}"/>
    </c:otherwise>
</c:choose> --%>
			</strong>
			
		</div>
		
	
	<!-- <img alt="" src="images/Thank-You.jpg" class="img-responsive" style="width:400px;">-->
</div>
<div id="footer"><%@ include file="/common/footer.jsp"%>
		</div>
</body>

</html>