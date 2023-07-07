<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

  
  <style type="text/css">
 
body{
background: url("katsiaryna-endruszkiewicz-pvhotwukSww-unsplash.jpg");
background-size: cover;
}

.login
{
font-size:30px;
color:white;
}
.login h1{
left:30%;
float:left;
font-size:50px;
border-bottom:6px solid #150e94;
margin-bottom: 50px;
padding: 1px 0;
}
.form
{
width:400px;
height:100px;
position: absolute;
top: 30%;
left:36%;
transform:translaste(-50%,-50%);
color:white
border:2px  solid #150e94;
}

.formj
{
width:400px;
height:100px;
position: absolute;
top: 70%;
left:36%;
transform:translaste(-50%,-50%);
color:white
border:2px  solid #150e94;
}

.formi
{
width:400px;
height:100px;
position: absolute;
top: 50%;
left:36%;
transform:translaste(-50%,-50%);
color:white
border:2px  solid #150e94;
}
.btn{
  width: 90%;
  background: none;
  border: 2px solid #150e94;
  color: white;
  padding: 5px;
  font-size: 20px;
  cursor: pointer;
  margin:  0;
  </style>
</head>


<body>

<div style="" class="login">
<h1>Welcome to Cowin Registration App</h1>
</div>

<div class="form">
<form action="login.jsp">
<div>
<input style = "border-radius:15px" class="btn" type="submit" name ="" value=" User Login" >
</div>
</form>
</div>


  <div class="formi">
<form action="Admin_login.jsp">
<div >
<input style="border-radius:15px" class="btn"  type="submit" name ="" value="Admin Login">
</div>
</form>
</div>
 
  <div class="formj">
<form action="register.jsp">
<div >
<input style = "border-radius:15px" class="btn" type="submit" name ="" value="New user - Register Now...">
</div>
</form>
</div>
  
</body>
</html>