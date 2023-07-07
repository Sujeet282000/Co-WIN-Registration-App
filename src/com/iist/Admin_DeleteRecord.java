package com.iist;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteServlet")
public class Admin_DeleteRecord extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uname=req.getParameter("user_id");
		PrintWriter out=resp.getWriter();
		
		
		
		try {
			  Class.forName("com.mysql.jdbc.Driver");
			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_111","root","sujeet@123");
			      Statement stmt=con.createStatement();
			    stmt.execute("Delete from sujeet where user_id='"+uname+"'");
			
			   resp.sendRedirect("Admin_home.jsp");
			
		  
		  con.close();
		   
		  
		}
		catch(Exception e)
		{
			out.println(e);
		}
			
	}

}
