<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

left:30%;
transform:translaste(-50%,-50%);
color:white;
}
.register-form h1{
float:left;
font-size:40px;
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

.radio{

width: 100%;
  overflow: hidden;
  font-size: 14px;
  padding: 8px 0;
  margin: 8px 0;
  border-bottom: 1px solid #150e94;
}
.radio label{
  
  color: #8a8d8e;
  font-size: 18px;
  width: 10%;
   margin: 0 10px;

}


.back
{
width:120px;
height:100px;
position: absolute;
top: 1%;
left:3%;
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

.date{
 width: 100%;
  overflow: hidden;
  font-size: 16px;
  padding: 8px 0;
  margin: 8px 0;
  border-bottom: 1px solid #150e94;
  margin: 0 10px;
}
.date input{
;
  background: none;
  color: white;
  font-size: 18px;
  width: 35%;
  color:#7a8084;
  
}
.D
{
 color:#607d8b
  
}
</style>
</head>



<body>
<div class="register-form">
<fieldset>
<legend ><h1>Registration-Form</h1></legend>
<form action="Insert" method="post">

<div class="textbox">
 <!--  <i class="fa fa-user" aria-hidden="true"></i>-->
<input type="text" name="name" placeholder="Full Name" required><br>
</div>

<div class="textbox">
<!-- <i class="fa fa-user" aria-hidden="true"></i>-->
<input type="text" name="id_name" placeholder="Id Name" required><br>
</div>

 
<div class="textbox">
<!-- <i class="fa fa-user" aria-hidden="true"></i>-->
<input type="text" name="id_no" placeholder="Id Number" required><br>
</div>

<div class="date">
<!-- <i class="fa fa-user" aria-hidden="true"></i>-->
<label class="D" >DOB : </label> : <input type="Date" name="dob" placeholder="DOB" required><br>
</div>

<div class="radio">
 <label>gender : </label>
 <label>Male</label> <input type="radio" name="gender" value="Male">      
  <label>Female;</label> <input type="radio" name="gender" value="Female"><br>     
</div>

<div class="textbox">
<!-- <i class="fa fa-user" aria-hidden="true"></i>-->
<input type="text" name="address" placeholder="Address" required><br>
</div>

<div class="textbox">
<!-- <i class="fa fa-user" aria-hidden="true"></i>-->
<input type="text" name="mobile_no" placeholder="Mobile_No" required><br>
</div>

<div class="textbox">
<i class="fa fa-user" aria-hidden="true"></i>
<input type="text" name="user_id" placeholder="User Id" required><br>
</div>

<div class="textbox">
 <i class="fa fa-lock" aria-hidden="true"></i>
<input type="text" name="password" placeholder="password" required><br>
</div>

<input class="btn " type="submit" name="" value="sign in"><br>

</form>
</fieldset>
</div>


<div class="back">
<form action="login.jsp">
<div >
<input class="btn" type="submit" name ="" value="<-Back">
</div>
</form>
</div>
 

<div class="Logout">
<form action="login.jsp">
<div >
<input class="btn" type="submit" name ="" value="logout">
</div>
</form>
</div>
 
 
<script>
function myFunction() {
  alert("you have successfully Registered");
}
</script>

</body>
</body>
</html>