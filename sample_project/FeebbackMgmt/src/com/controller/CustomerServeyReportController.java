package com.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CustomerServeyReportController
 */
@WebServlet("/CustomerServeyReportController")
public class CustomerServeyReportController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String from_date =request.getParameter("fromdate");
		String to_date=request.getParameter("todate");
		
		
			SimpleDateFormat format1 = new SimpleDateFormat("MM/dd/yyyy");
		/* 	SimpleDateFormat format2 = new SimpleDateFormat("dd-MMM-yyyy"); */
			SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
			Date date11 = null;
			try {
				date11 = format1.parse(from_date);
			} catch (ParseException e1) {
				e1.printStackTrace();
			}
			Object startDate = format2.format(date11);
		
		
			SimpleDateFormat format11 = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat format22 = new SimpleDateFormat("yyyy-MM-dd");
			Date date22 = null;
			try {
				date22 = format11.parse(to_date);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			Object enddate = format22.format(date22);
		
		
			System.out.println("startDate.."+startDate+" enddate.."+enddate);
			
			
			 HttpSession session = request.getSession(true);
			session.setAttribute("startdate",startDate);
			session.setAttribute("enddate",enddate);
			getServletConfig().getServletContext().getRequestDispatcher("/custServeyReport.jsp").forward(request,response); // redirect to jsp page
			
	
		
	        
	        //Check if our session variable is set, if so, get the session variable value
	        //which is an Integer object, and add one to the value.
	        //If the value is not set, create an Integer object with the default value 1.
	        //Add the variable to the session overwriting any possible present values.
	       /* Integer param = (Integer) session.getAttribute("MySessionVariable");
	        if (param != null) {
	            
	            session.setAttribute("MySessionVariable", new Integer(param.intValue() + 1));
	            param = (Integer) session.getAttribute("MySessionVariable");
	            
	        } else {
	            
	            param = new Integer(1);
	            session.setAttribute("MySessionVariable", param);
	            
	        }*/
	
	
	}

}
