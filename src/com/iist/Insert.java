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


@WebServlet("/Insert")
public class Insert extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		String idname=req.getParameter("id_name");
		String idno=req.getParameter("id_no");
		String dob=req.getParameter("dob");
		String gender=req.getParameter("gender");
		String address=req.getParameter("address");
		String mobileno=req.getParameter("mobile_no");
		String userid=req.getParameter("user_id");
		String password=req.getParameter("password");
		
		PrintWriter out=resp.getWriter();
		                                                                                                                                                      
		try
		{

			  Class.forName("com.mysql.jdbc.Driver");
			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_111","root","sujeet@123");
			      Statement stmt=con.createStatement();
              String query="insert into sujeet(Name,Id_Name,Id_Number,DOB,gender,Address,Mobile_no,user_id,password) values('"+name+"','"+idname+"','"+idno+"','"+dob+"','"+gender+"','"+address+"','"+mobileno+"','"+userid+"','"+password+"')";
			stmt.executeUpdate(query);
			   resp.sendRedirect("home.jsp");
			   

				  con.close();
		}
		catch(Exception e)
		{
			
			 out.println(e);
			
		}
		
}

}