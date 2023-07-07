
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
<style>
body{
background: url("katsiaryna-endruszkiewicz-pvhotwukSww-unsplash.jpg");
background-size: cover;
}


.register-form{
width:500px;
height:130px;
position: absolute;
top: 7%;
left:30%;
transform:translaste(-50%,-50%);
color:white;
}
.register-form h1{
float:left;
font-size:30px;
border-bottom:6px solid #150e94;
margin-bottom: 50px;
padding: 1px 0;
}
.textbox{
  width: 100%;
  overflow: hidden;
  font-size: 20px;
  padding: 8px 0;
  margin: 8px 0;
  border-bottom: 1px solid #150e94;
}
textbox i{
  width: 26px;
  float: left;
  text-align: center;
}
.textbox input{
  border: none;
  outline: none;
  background: none;
  color: white;
  font-size: 18px;
  width: 80%;
  float: left;
  margin: 0 10px;
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

.date{
 width: 100%;
  overflow: hidden;
  font-size: 20px;
  padding: 8px 0;
  margin: 8px 0;
  border-bottom: 1px solid #150e94;
}
.date input{
;
  background: none;
  color: white;
  font-size: 18px;
  width: 35%;
  color:#607d8b
  
}
.D
{
 color:#607d8b
  
}


.formj
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

.insert
{
width:280px;
height:100px;
position: absolute;
top: 10%;
left:78%;
transform:translaste(-50%,-50%);
color:white
border:2px  solid #150e94;
}
</style>
</head>
<body>
<h1 style="color:#41af1d;" >welcome back dear: <%=session.getAttribute("udata") %></h1>


<div class="register-form">
<fieldset>
    <legend><h1>Book Slot for Vaccine 2nd Dose </h1></legend>
  <form  action="servlet_2.jsp" method="get">
  
<div class="textbox">
<!-- <i class="fa fa-user" aria-hidden="true"></i>-->
<input type="text" name="" placeholder="State" required><br>
</div>

<div class="textbox">
<!-- <i class="fa fa-user" aria-hidden="true"></i>-->
<input type="text" name="" placeholder="City" required><br>
</div>

<div class="textbox">
<!-- <i class="fa fa-user" aria-hidden="true"></i>-->
<input type="text" name="" placeholder="jone_no" required><br>
</div>
      
      
<div class="textbox">
<!-- <i class="fa fa-user" aria-hidden="true"></i>-->
<input type="text" name="" placeholder="place" required><br>
</div>

     
<div class="date">
<!-- <i class="fa fa-user" aria-hidden="true"></i>-->
 <label class="D" >Date</label> : <input type="Date" name="" placeholder="Date" required><br>
</div>
             
<div class="textbox">
<!-- <i class="fa fa-user" aria-hidden="true"></i>-->
<input type="text" name="" placeholder="User_id" required><br>
</div>
      
      
<input class="btn " type="submit"  onclick="myFunction()" name="" value="submit"><br>

  </form> 
</fieldset>
</div>



<div class="formj">
<form action="home.jsp">
<div >
<input class="btn" type="submit" name ="" value="<-Back">
</div>
</form>
</div>


<div class="Logout">
<form action="index.jsp">
<div >
<input class="btn" type="submit"  onclick="Function()" name ="" value="logout">
</div>
</form>
</div>
 
 
<div class="insert">
<form action="certificate_2.jsp">
<div >
<input class="btn" type="submit" name ="" value="Download Certificate of 2nd dose">
</div>
</form>
</div>
 
<script>
function Function() {
  alert("you have successfully successfully logout");
}
</script>
 

<script>
function myFunction() {
  alert("you have successfully Vaccinated 2nd dose");
}
</script>

</body>
</body>
</html>

<%
}
%>
