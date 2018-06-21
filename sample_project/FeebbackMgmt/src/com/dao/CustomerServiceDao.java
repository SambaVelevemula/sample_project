package com.dao;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;

import com.common.GetConnection;
import com.controller.SaveBean;
import com.mysql.jdbc.PreparedStatement;

public class CustomerServiceDao {
	public static final int MYSQL_DUPLICATE_PK = 1062;

	
	public String saveCustomerService(SaveBean sb1) throws SQLException, UnknownHostException{
	
		String ticket_id=sb1.getTicket_id();
		
		String q1_hidden= sb1.getQ1_hidden();
		String q2_hidden= sb1.getQ2_hidden();
		String q3_hidden= sb1.getQ3_hidden();
		String q4_hidden= sb1.getQ4_hidden();
		String q5_hidden= sb1.getQ5_hidden();
		
		
		String q1_ans_rbutton = sb1.getQ1_ans_rbutton();
		String q2_ans_rbutton = sb1.getQ2_ans_rbutton();
		String q3_ans_rbutton = sb1.getQ3_ans_rbutton();
		String q4_ans_rbutton = sb1.getQ4_ans_rbutton();
		String q5_ans_txt = sb1.getQ5_ans_rbutton();
		
		 String result_status="error";
		Connection con=null;
	//Statement stmt=null;
		PreparedStatement stmt = null;
	String status="success";
	System.out.println("inside..CustomerServiceDao....");
	
	 Calendar calendar = Calendar.getInstance();
	    java.sql.Date JavaDateObject = new java.sql.Date(calendar.getTime().getTime());
	    java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
	    System.out.println("Time stamp format....."+JavaDateObject+"datedatedate...."+date);


	    System.out.println("IP ADDRESS.."+InetAddress.getLocalHost());/*InetAddress.getLocalHost();*/
	    
	//String qry="INSERT INTO CUSTOMERSERVICE(TICKET_ID,QUESTION_1,ANS_1,QUESTION_2,ANS_2,QUESTION_3,ANS_3,QUESTION_4,ANS_4,"
	//		+ "QUESTION_5,ANS_5,SUBMITTED_DATE,CREATION_DATE,STATUS,IP_ADDR) values('"+ticket_id+"','"+q1_hidden+"','"+q1_ans_rbutton+"','"+q2_hidden+"','"+q2_ans_rbutton+"',"
	//		+ "'"+q3_hidden+"','"+q3_ans_rbutton+"','"+q4_hidden+"','"+q4_ans_rbutton+"','"+q5_hidden+"','"+q5_ans_txt+"','"+JavaDateObject+"','"+JavaDateObject+"','"+status+"','"+InetAddress.getLocalHost()+"')";
	
	    //'"+JavaDateObject+"','"+JavaDateObject+"','"+status+"','"+InetAddress.getLocalHost()+"';
	    
	    String qry = "INSERT INTO CUSTOMERSERVICE(TICKET_ID,QUESTION_1,ANS_1,QUESTION_2,ANS_2,QUESTION_3,ANS_3,QUESTION_4,ANS_4,"
			+ "QUESTION_5,ANS_5,SUBMITTED_DATE,CREATION_DATE,STATUS,IP_ADDR) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	System.out.println("qry.."+qry);
	try{
		 con = GetConnection.getConnection();
		 stmt=(PreparedStatement)con.prepareStatement(qry);
		 stmt.setString(1, sb1.getTicket_id());
		 System.out.println(sb1.getTicket_id());
		 stmt.setString(2, sb1.getQ1_hidden());
		 System.out.println(sb1.getQ1_hidden());
		 stmt.setString(3, sb1.getQ1_ans_rbutton());
		 stmt.setString(4, sb1.getQ2_hidden());
		 stmt.setString(5, sb1.getQ2_ans_rbutton());
		 stmt.setString(6, sb1.getQ3_hidden());
		 stmt.setString(7, sb1.getQ3_ans_rbutton());
		 stmt.setString(8, sb1.getQ4_hidden());
		 stmt.setString(9, sb1.getQ4_ans_rbutton());
		 stmt.setString(10, sb1.getQ5_hidden());
		 stmt.setString(11, sb1.getQ5_ans_rbutton());
		 stmt.setDate(12,JavaDateObject );
		 stmt.setDate(13,JavaDateObject );
		 stmt.setString(14, status);
		 
		 InetAddress address = InetAddress.getLocalHost(); 
		 String hostIP = address.getHostAddress() ;
		 stmt.setString(15,hostIP);
		 
		 
		 int rs=stmt.executeUpdate();
			
		 if(rs>0){
			 result_status="success";
		 }
		 else{
			 result_status="error";
		 }
	}
		 catch(SQLException e){
			    if(e.getErrorCode() == MYSQL_DUPLICATE_PK ){
			    	 result_status="duplicate";
			    }
	}catch(Exception e){
		 result_status="error";
		e.printStackTrace();
	}finally{
		con.close();
		stmt.close();
	}
	
	return result_status;
	}


	
	
	   
}

