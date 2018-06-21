<%@page import="org.apache.poi.hssf.usermodel.*"%>
<%@page import="java.io.*"%>
<%@ page import="com.common.GetConnection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="org.apache.poi.hssf.util.HSSFColor"%>


<%
	String date1 = (String) session.getAttribute("startdate");
	String date2 = (String) session.getAttribute("enddate");

	// create a small spreadsheet
	HSSFWorkbook hwb = new HSSFWorkbook();
	HSSFSheet sheet = hwb.createSheet("Feedback Report");
	HSSFCellStyle style = hwb.createCellStyle();
	sheet.setDefaultColumnWidth(25);

	HSSFRow rowhead = sheet.createRow(1);
	HSSFCell cell;
	HSSFFont font = hwb.createFont();
	cell = rowhead.createCell(1);

	font.setFontName("Arial");
	style.setFillForegroundColor(HSSFColor.BLUE.index);
	style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
	font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
	font.setColor(HSSFColor.WHITE.index);
	style.setFont(font);
	cell.setCellStyle(style);
	style.setFont(font);

	HSSFRow header = sheet.createRow(0);


	header.createCell(1).setCellValue("TICKET ID");
	header.getCell(1).setCellStyle(style);

	header.createCell( 2).setCellValue("QUESTION_1");
	header.getCell( 2).setCellStyle(style);

	header.createCell( 3).setCellValue("ANS_1");
	header.getCell( 3).setCellStyle(style);

	header.createCell( 4).setCellValue("QUESTION_2");
	header.getCell( 4).setCellStyle(style);

	header.createCell( 5).setCellValue("ANS_2");
	header.getCell( 5).setCellStyle(style);
	
	header.createCell( 6).setCellValue("QUESTION_3");
	header.getCell( 6).setCellStyle(style);

	header.createCell( 7).setCellValue("ANS_3");
	header.getCell( 7).setCellStyle(style);

	header.createCell( 8).setCellValue("QUESTION_4");
	header.getCell( 8).setCellStyle(style);

	header.createCell( 9).setCellValue("ANS_4");
	header.getCell( 9).setCellStyle(style);
	
	header.createCell( 10).setCellValue("QUESTION_5");
	header.getCell( 10).setCellStyle(style);

	header.createCell( 11).setCellValue("ANS_5");
	header.getCell( 11).setCellStyle(style);
	
	header.createCell( 12).setCellValue("SUBMITION DATE");
	header.getCell( 12).setCellStyle(style);
	
	/*header.createCell( 13).setCellValue("IP ADDRESS");
	header.getCell( 13).setCellStyle(style);*/
	
	header.createCell( 14).setCellValue("");
	header.getCell( 14).setCellStyle(style);
	
	Connection con = GetConnection.getConnection();

	String sql = "Select * from CUSTOMERSERVICE where SUBMITTED_DATE>=? and SUBMITTED_DATE<=?  order by SUBMITTED_DATE";

	try{
	PreparedStatement st = con.prepareStatement(sql);
	st.setObject(1, date1);
	st.setObject(2, date2);
	ResultSet rs1 = st.executeQuery();
	int i = 1;
	HSSFRow row;
	
	while (rs1.next()) {

		HSSFRow row1 = sheet.createRow( i);
		/* row1.setRowStyle(style); */

		row = sheet.createRow(i);

		/* row.setHeight( 800); */

	/* 	cell = row.createCell(1);

		String monthonly_first = rs1.getString("SERIAL_NO");
		String[] monthonly = monthonly_first.split(" ");
		cell.setCellValue(monthonly[0]); */

		//cell.setCellValue(rs1.getString("DB_DATE"));
		cell = row.createCell(1);

		//cell.setCellStyle(style);

		cell.setCellValue(rs1.getString("TICKET_ID"));
		cell = row.createCell(2);
		//cell.setCellStyle(style);

		cell.setCellValue(rs1.getString("QUESTION_1"));
		cell = row.createCell(3);
		//cell.setCellStyle(style);

		cell.setCellValue(rs1.getString("ANS_1"));
		cell = row.createCell(4);
		//cell.setCellStyle(style);

		cell.setCellValue(rs1.getString("QUESTION_2"));
		cell = row.createCell(5);

		cell.setCellValue(rs1.getString("ANS_2"));
		cell = row.createCell(6);
		
		cell.setCellValue(rs1.getString("QUESTION_3"));
		cell = row.createCell(7);
		
		
		cell.setCellValue(rs1.getString("ANS_3"));
		cell = row.createCell(8);
		//cell.setCellStyle(style);

		cell.setCellValue(rs1.getString("QUESTION_4"));
		cell = row.createCell( 9);

		cell.setCellValue(rs1.getString("ANS_4"));
		cell = row.createCell(10);
		
		cell.setCellValue(rs1.getString("QUESTION_5"));
		cell = row.createCell(11);
		
		cell.setCellValue(rs1.getString("ANS_5"));
		cell = row.createCell( 12);
		
		cell.setCellValue(rs1.getString("SUBMITTED_DATE"));
		cell = row.createCell( 13);
		
		//cell.setCellValue(rs1.getString("IP_ADDR"));
		//cell = row.createCell( 14);
		
		i++;
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	// write it as an excel attachment
	ByteArrayOutputStream outByteStream = new ByteArrayOutputStream();
	hwb.write(outByteStream);
	byte[] outArray = outByteStream.toByteArray();
	response.setContentType("application/ms-excel");
	response.setContentLength(outArray.length);
	response.setHeader("Expires:", "0"); // eliminates browser caching
	/* response.setHeader("Content-Disposition", "attachment; filename=testxls.xls"); */
	response.setHeader("Content-Disposition","attachment; filename=Customer Servey Report.xls");

	OutputStream outStream = response.getOutputStream();
	outStream.write(outArray);
	outStream.flush();
	/* hwb.close(); */
%>