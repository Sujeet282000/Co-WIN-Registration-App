package com.iist;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;


@WebServlet("/AServlet")
public class carry_table extends HttpServlet {
	

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 
		PrintWriter out=resp.getWriter();
		resp.setContentType("Text/html");
		
		
		String un=req.getParameter("un");
		String ps=req.getParameter("ps");
		
	try {
	  Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_111","root","sujeet@123");
	   Statement stmt=con.createStatement(); 
	   ResultSet rs=stmt.executeQuery("select * from sujeet where User_Id='"+un+"' and password='"+ps+"'");
	   HttpSession session=req.getSession();
	   
	   if(rs.next())
	   {  
		   String data=rs.getString(2);
		   session.setAttribute("udata", data);
		    resp.sendRedirect("home.jsp");
	   }
	   else
	   {
		   out.println(" you are not logged in page");
	   }
	   
	   
	  con.close();
	   
	   
	}
	catch(Exception e)
	{
		out.println(e);
	}
		
		
}
}
