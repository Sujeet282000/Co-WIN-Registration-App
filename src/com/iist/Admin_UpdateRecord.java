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

@WebServlet("/Admin_UpdateRecord")
public class Admin_UpdateRecord extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
		String Name=req.getParameter("n");
		String Id_Name=req.getParameter("in");
		String Id_Number=req.getParameter("ino");
		String DOB=req.getParameter("dob");
		String gender=req.getParameter("g");
		String Address=req.getParameter("a");
		String Mobile_no=req.getParameter("mbno");
		String I_dose=req.getParameter("1");
		String II_dose=req.getParameter("2");
		String user_id=req.getParameter("u");
		String Password=req.getParameter("p");
		
		PrintWriter out=resp.getWriter();
		
		try
		{

			  Class.forName("com.mysql.jdbc.Driver");
			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_111","root","sujeet@123");
			      Statement stmt=con.createStatement();
String qry="update sujeet set Name='"+Name+"',Id_Name='"+Id_Name+"',Id_Number='"+Id_Number+"',DOB='"+DOB+"',gender='"+gender+"',Address='"+Address+"', Mobile_no='"+Mobile_no+"',1st_dose='"+I_dose+"',2nd_dose='"+II_dose+"',Password='"+Password+"' where user_id='"+user_id+"'";
			      
          stmt.executeUpdate(qry);
			      
			   resp.sendRedirect("Admin_home.jsp");
			   

				  con.close();

			
		}
		catch(Exception e)
		{
			out.println(e);
		}
			
	
		
		
		}

}
