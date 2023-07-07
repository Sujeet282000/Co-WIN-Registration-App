<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@page import ="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String Vaccinated=request.getParameter("un");


try{


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_111","root","sujeet@123");
Statement stmt=con.createStatement();
stmt.executeUpdate("update  sujeet set 1st_dose='Vaccinated' where User_id='0818cs'");
out.println("you havesuccessfully vaccinated");

}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>