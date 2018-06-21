package com.scheduler;

import java.io.*;
import java.sql.*;
import java.util.TimerTask;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.hssf.usermodel.*;



public class Scheduler extends TimerTask{
	@Override
	public void run(){
		System.out.println("Calling..");
		// create a small spreadsheet
		HSSFWorkbook hwb = new HSSFWorkbook();
		HSSFSheet sheet = hwb.createSheet("Customer_Survey_Weekly_Data");
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


		header.createCell( 14).setCellValue("");
		header.getCell( 14).setCellStyle(style);


		//String sql = "SELECT * from feedbackdb.customerservice WHERE DATE(SUBMITTED_DATE) = CURRENT_DATE";
    	 String sql = "SELECT * from feedbackdb.customerservice WHERE SUBMITTED_DATE >= curdate() - INTERVAL DAYOFWEEK(curdate()) + 6 DAY AND SUBMITTED_DATE <= curdate()";
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackdb", "root", "root");
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs1 = st.executeQuery();

			int i = 1;
			HSSFRow row;

			while (rs1.next()) {

				HSSFRow row1 = sheet.createRow( i);
				row = sheet.createRow(i);

				cell = row.createCell(1);

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

				i++;

				//FileOutputStream fileOut = new FileOutputStream("d:/test/Feedback.xls");
				
				FileOutputStream fileOut = new FileOutputStream("\\\\10.8.124.19/GSOC India/Chunsu Daily TTR Staffing/Other Reports/Customer_Survey_Weekly_Data.xls");
				hwb.write(fileOut);
				fileOut.close();
				System.out.println("Data is saved in excel file.");

			}
		}catch(Exception e){
			e.printStackTrace();

		}

	}

	


}
