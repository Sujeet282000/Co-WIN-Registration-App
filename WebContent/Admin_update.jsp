
<%
if(session.getAttribute("udata")==null)
{
	response.sendRedirect("Admin_login.jsp");
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
<title>Update Record</title>
<style type="text/css">

@import "https://use.fontawesome.com/releases/v5.5.0/css/all.css";
body{
background: url("katsiaryna-endruszkiewicz-pvhotwukSww-unsplash.jpg");
background-size: cover;
}

.register-form{
width:470px;
height:130px;
position: absolute;
left:34%;
transform:translaste(-50%,-50%);
color:white;
}
.register-form h3{
border-bottom:6px solid #150e94;

}
  
}
textbox i{
  width: 26px;
  float: left;
  text-align: center;
}

.btn{
  width: 100%;
  background: none;
  border: 2px solid #150e94;
  color: white;
  padding: 3px;
  font-size: 16px;
  cursor: pointer;
  margin: 12px 0;
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

.text{
 width: 100%;
  overflow: hidden;
  font-size: 16px;
  padding: 6px 0;
  margin: 6px 0 ;
  border-bottom: 1px solid #150e94;
  
}
.text input{
; border: none;
  outline: none;
  background: none;
  color: white;
  font-size: 18px;
  width: 50%;
  color:#25ec0d;
   
  }
  

</style>
</head>
<body>


<%
session.setMaxInactiveInterval(10); 
%>

<p style="color:#41af1d;font-size:20px;" >welcome back dear: <%=session.getAttribute("udata") %></p>

<%
String user=request.getParameter("user_id");

Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_111","root","sujeet@123");
    Statement stmt=con.createStatement();
   ResultSet rs= stmt.executeQuery("select * from sujeet where user_id='"+user+"' ");
rs.next();
%>



<div class="register-form">
<fieldset>
<legend><h3>Update Record</h3></legend>
<form action="Admin_UpdateRecord" method="Post">

<div class="text">
User_id :      <input type="text" name="u"  value="<%=rs.getString(11)%>" readonly>
</div>

<div class="text">
Name :       <input type="text" name="n" value="<%=rs.getString(2)%>"><br>
</div>

<div class="text">
id_name :       <input type="text" name="in"  value="<%=rs.getString(3)%>"><br>
</div>

<div class="text">
id_no :       <input type="text" name="ino"  value="<%=rs.getString(4)%>"><br>
</div>

<div class="text">
DOB :       <input type="text" name="dob"  value="<%=rs.getString(5)%>"><br>
</div>

<div class="text">
gender :       <input type="text" name="g"  value="<%=rs.getString(6)%>"><br>
</div>

<div class="text">
address :       <input type="text" name="a"  value="<%=rs.getString(7)%>"><br>
</div>

<div class="text">
mobile_no :       <input type="text" name="mbno"  value="<%=rs.getString(8)%>"><br>
</div>

<div class="text">
Ist_dose :       <input type="text" name="1"  value="<%=rs.getString(9)%>"  readonly><br>
</div>

<div class="text">
IInd_dose :       <input type="text" name="2"  value="<%=rs.getString(10)%>"  readonly><br>
</div>

<div class="text">
password :       <input type="text" name="pass"  value="<%=rs.getString(12)%>"  readonly><br>
</div>

<br><input class="btn" type="submit" onclick="myFunction()" value="Update"><br>


</form>
</fieldset>
</div>


<div class="back">
<form action="Admin_home.jsp">
<div >
<input class="btn" type="submit" name ="" value="<-Back">
</div>
</form>
</div>
 

<div class="Logout">
<form action="index.jsp">
<div >
<input class="btn" type="submit" onclick="Function() name ="" value="logout">
</div>
</form>
</div>


<script>
function myFunction() {
  alert("you have successfully Updated");
}
</script>


<script>
function Function() {
  alert("you have successfully successfully logout");
}
</script>


</body>
</body>
</html>

<%
}
%>
