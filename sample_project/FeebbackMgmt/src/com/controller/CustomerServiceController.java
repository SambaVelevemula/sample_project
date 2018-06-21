package com.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CustomerServiceDao;



//@WebServlet("/CustomerServiceController")
public class CustomerServiceController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	String resMessage=null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SaveBean sb =new SaveBean();
		
		 String Ticket_id=request.getParameter("Ticket_id");
		 
		 sb.setTicket_id(request.getParameter("Ticket_id"));
		/* if(usercapache.equals(systemcaptcha))
		 {*/

		 sb.setQ1_hidden(request.getParameter("q1_hidden"));
		 sb.setQ2_hidden(request.getParameter("q2_hidden"));
		 sb.setQ3_hidden(request.getParameter("q3_hidden"));
		 sb.setQ4_hidden(request.getParameter("q4_hidden"));
		 sb.setQ5_hidden(request.getParameter("q5_hidden"));
		  
		 sb.setQ1_ans_rbutton(request.getParameter("q1_ans_rbutton"));
		 sb.setQ2_ans_rbutton(request.getParameter("q2_ans_rbutton"));
		 sb.setQ3_ans_rbutton(request.getParameter("q3_ans_rbutton"));
		 sb.setQ4_ans_rbutton(request.getParameter("q4_ans_rbutton"));
		 sb.setQ5_ans_rbutton(request.getParameter("q5_ans_txt"));
		 
		  
		 
		
		 
		CustomerServiceDao  csd=new CustomerServiceDao();
		try {
			 //HttpSession session = request.getSession(true);
			 
			//String result=csd.saveCustomerService(q1_hidden,q2_hidden,q3_hidden,q4_hidden,q5_hidden,q1_ans_rbutton,q2_ans_rbutton,q3_ans_rbutton,q4_ans_rbutton,q5_ans_rbutton,Ticket_id);
			String result = csd.saveCustomerService(sb);
         //session.setAttribute("result",result);
        //getServletConfig().getServletContext().getRequestDispatcher("/custServiceResult.jsp").forward(request,response); // redirect to jsp page
			 PrintWriter pw=response.getWriter();
			if("success".equalsIgnoreCase(result)){
				resMessage="Thank you for your valuable feedback";
				System.out.println("Thank you for your valuable FeedBack comming ...."+resMessage);
				 request.setAttribute("resMessage", resMessage);
				
				 //pw.print("Thank you for your valuable FeedBack");
		        RequestDispatcher rd=request.getRequestDispatcher("/custServiceResult.jsp");  
		        rd.forward(request, response);  
		        
			}
			else if("duplicate".equalsIgnoreCase(result)){
				String dupresMessage="Your feedback has already been submitted";
				System.out.println("Thank you for your valuable FeedBack comming ...."+dupresMessage);
				//pw.print("Already Submitted Your FeedBack");
				 request.setAttribute("resMessage", dupresMessage);
		        RequestDispatcher rd=request.getRequestDispatcher("/custServiceResult.jsp");  
		        rd.forward(request, response); 
			}
			else{
				resMessage="Problem is occurred Please try Again ";
				 request.setAttribute("resMessage", resMessage);
				 
				    RequestDispatcher rd=request.getRequestDispatcher("/customerServiceForm.jsp?Ticket_id="+Ticket_id+" ");  
			        rd.forward(request, response); 
			        
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
	/*}
		 else{
			 resMessage="Please Enter Correct Captcha Code";
			 request.setAttribute("resMessage", resMessage);
			 
			 System.out.print("this is miss match capache code");  
		       RequestDispatcher rd=request.getRequestDispatcher("/customerServiceForm.jsp?Ticket_id="+Ticket_id+" ");  
		        rd.forward(request, response); 
		 }*/
		 }
}
