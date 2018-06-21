package com.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import com.mysql.jdbc.ResultSet;
import com.common.GetConnection;

public class AdminDao {
	
	public String checkCredential(String uname,String pwd) throws SQLException{
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String message="";

		String qry="SELECT USERNAME,PASSWORD FROM AdminLogin WHERE USERNAME='"+uname+"' AND PASSWORD='"+pwd+"'";
		
		System.out.println("qry.."+qry);
		try{
			 con = GetConnection.getConnection();
			 stmt=con.createStatement();
			 rs=(ResultSet) stmt.executeQuery(qry);
				
			 
			 if(rs.next()){
				 message="User Available";
			 }
			 else{
				 message="Please enter valid credential!";
			 }
		}catch(Exception e){
			 message="Please enter valid credential!";
			e.printStackTrace();
		}finally{
			con.close();
			stmt.close();
		}
		
		return message;
		}
		
	
}
