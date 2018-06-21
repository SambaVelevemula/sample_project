<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/common/includes.jsp"%>
<link href="assets/global/css/components.css" rel="stylesheet" id="style_components" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report form</title>
  <script src="js/jquery-1.10.1.min.js"></script>
  <script src="js/jquery-1.10.2.js"></script>
  <script src="js/jquery-ui.js"></script>
   <link href="css/new.css" rel="stylesheet" type="text/css" /> 
   
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="css/components.css" rel="stylesheet" id="style_components" type="text/css" />
<!-- END THEME LAYOUT STYLES -->

  <script>
         $(function() {
            $( "#datepicker" ).datepicker({
            	 dateFormat: 'mm/dd/yy',
            	 maxDate: '0', 
            	 
            	 onSelect: function (selected) {
                     var dt = new Date(selected);
                     dt.setDate(dt.getDate() + 1);
                     $("#datepicker2").datepicker("option", "minDate", dt);
            	 }
            });
         });
  
  $(function() {
     $( "#datepicker2" ).datepicker({
    	 dateFormat: 'mm/dd/yy',
    	 maxDate: '0', 
    	 onSelect: function (selected) {
             var dt = new Date(selected);
             dt.setDate(dt.getDate() - 1);
             $("#datepicker").datepicker("option", "maxDate", dt);
    	 }
    	 
     });
  });
  
  </script>

<script>
function raise(){
	var date1= $("#datepicker").val();
	var date2= $("#datepicker2").val();
	
	if(date1=="" && date2=="")
	{
		alert("Please Choose Starting date and Ending date");
		return false;
	}
	if(date1=="" )
	{
		alert("Please Choose Starting date ");
		window.setTimeout(function ()
			    {
		document.getElementById('date1').focus();
			    }, 0);
		return false;
	}
	if(date2=="")
	{
	
		alert("Please Choose Ending date");
		window.setTimeout(function ()
			    {
		document.getElementById('date2').focus();
			    }, 0);
		return false;
	} else
	{
		return true;
	}
}
</script>

</head>
<body>
<div id="wrapper" style="width: 100%">

	
     <div id="header" class="headerBg">
			<div>
			<div align="right">
					<p	class="headerCustom1">Customer
						Service Feedback</p>
				</div>
				<div class="logo">
				<a href="http://globalcloudxchange.com/">
                                <img alt="" src="./images/logo1.png"> </a>
				</div>
				
			</div>
		
		 <div style="float:right;margin-right:18px;">
			<a href="logout.jsp" style="text-decoration:none;"><B style="color: white">Logout</B></a>
		</div>
		 	
		</div>


		
     
     <br><br>
	<form action="CustomerServeyReportController" method="post" onsubmit="return raise();">

		 <div class="portlet box blue">
		<!--	<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-cogs"></i>Customer Servey Report
				</div>
				<div class="tools">
					<a title="" data-original-title="" href="javascript:;"
						class="collapse"> </a>
				</div>
			</div> -->
				<div class="caption" align="center" style="color:white;font-size:20px;">
					<i class="fa fa-cogs"></i>Customer Servey Report
				</div>
				
			<div style="display: block;" class="portlet-body">
			<br><br>
				<div>
					
							<div class="form-horizontal">

								<div class="col-md-6">
									<div class="form-group">
										<label class="col-md-6 control-label"><b>From Date</b></label>
										<div class="col-md-6">
											<input type="text" name="fromdate" id="datepicker"
												placeholder="mm/dd/yyyy"
												class="form-control input-circle" readonly="readonly">
										</div>
									</div>
								</div>


								<div class="col-md-6">
									<div class="form-group">
										<label class="col-md-6 control-label"><b>To Date</b></label>
										<div class="col-md-6">
											<input type="text" name="todate" id="datepicker2"
												placeholder="mm/dd/yyyy"
												class="form-control input-circle" readonly="readonly">
										</div>
									</div>
								</div>

								<div class="form-actions">
									<div class="row">
										<div class="col-md-offset-6 col-md-6">
											<button type="submit" id="submit1" name="dwnld"
												class="btn btn-circle green">
												<span class="fa fa-download"></span>Download As EXCEL
											</button>
										</div>
									</div>
								</div>

							</div>
						</div>

				</div>
			</div>

	</form>
<div id="footer"><%@ include file="/common/footer.jsp"%>
		</div>
</body>
</html>