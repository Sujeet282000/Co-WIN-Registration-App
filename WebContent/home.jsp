
<%
if(session.getAttribute("udata")==null)
{
	response.sendRedirect("login.jsp");
}

else
{
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<style>
body{
background: url("katsiaryna-endruszkiewicz-pvhotwukSww-unsplash.jpg");
background-size: cover;
}
.back
{
width:120px;
height:100px;
position: absolute;
top: 1%;
left:80%;
transform:translaste(-50%,-50%);
color:white
border:2px  solid #150e94;
}

.Logout
{
width:120px;
height:100px;
position: absolute;
top: 1%;
left:90%;
transform:translaste(-50%,-50%);
color:white
border:2px  solid #150e94;
}
.btn{
  width: 100%;
  background: none;
  border: 2px solid #150e94;
  color: white;
  padding: 5px;
  font-size: 18px;
  cursor: pointer;
  margin: 12px 0;
}
</style>
</head>




<body>
<div class="container">
<h1 style="color:#41af1d;" >  welcome back dear: <%=session.getAttribute("udata") %></h1>
<hr>
<h1 style="color:white;border-bottom:6px solid #150e94;">Total Records of Vaccine Registration</h1>
<hr style="color:blue":>


<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_111","root","sujeet@123");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from sujeet order by sno ASC ");
%>



<table class="table table-hover ">
  <thead style="background-color:LightGray">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Id_Name</th>
      <th scope="col">Id_Number</th>
       <th scope="col">DOB</th>
      <th scope="col">gender</th>
       <th scope="col">Address</th>
      <th scope="col">Mobile_no</th>
      <th scope="col">1st_dose</th>
       <th scope="col">2nd_dose</th>
      <th scope="col">Slot_book</th>
    </tr>
  </thead>
  <tbody>
  
  
  
  <%
  while(rs.next())
  {
  
  %>
    <tr style="background-color:LightGray">
      <td scope="row"><%=rs.getInt(1) %></td>
      <td><%=rs.getString(2) %></td>
      <td><%=rs.getString(3) %></td>
      <td><%=rs.getString(4) %></td>
      <td><%=rs.getString(5) %></td>
       <td><%=rs.getString(6) %></td>
        <td><%=rs.getString(7) %></td>
         <td><%=rs.getString(8) %></td>
         <td><%=rs.getString(9) %></td>
           <td><%=rs.getString(10) %></td>
      <td><a href="1st_dose.jsp">1st_dose</a> | <a href="2nd_dose.jsp">2nd_dose</a> </td>
    </tr>
   <%
  }
   %>
  </tbody>
</table>
</div>


<div class="back">
<form action="login.jsp">
<div >
<input class="btn" type="submit" name ="" value="<-Back">
</div>
</form>
</div>
 

<div class="Logout">
<form action="index.jsp">
<div >
<input class="btn" type="submit"   onclick="Function()" name ="" value="logout">
</div>
</form>
</div>

<script>
function Function() {
  alert("you have successfully successfully logout");
}
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>

<%
}
%>
