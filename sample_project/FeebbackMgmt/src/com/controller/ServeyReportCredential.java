package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminDao;

/**
 * Servlet implementation class ServeyReportCredential
 */
@WebServlet("/ServeyReportCredential")
public class ServeyReportCredential extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
	String uname=request.getParameter("uname");
	String pwd=request.getParameter("password");
	
	AdminDao  ado=new AdminDao();
	try {
		 HttpSession session = request.getSession(true);
		 
		String result=ado.checkCredential(uname,pwd);
		
		 // redirect to jsp page
		
		if(result.equalsIgnoreCase("User Available")){
	       	        
	        getServletConfig().getServletContext().getRequestDispatcher("/custServeyReportForm.jsp").forward(request,response); // redirect to jsp page
	        
		}
		else{
			session.setAttribute("dologin",result);
			out.print(result);
			getServletConfig().getServletContext().getRequestDispatcher("/surveyReportLogin.jsp").forward(request,response);
			        
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
}
	
	
	
	}

