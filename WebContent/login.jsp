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

.login-form{
width:280px;
position: absolute;
top: 20%;
left:40%;
transform:translaste(-50%,-50%);
color:white;
}
.login-form h1{
float:left;
font-size:40px;
border-bottom:6px solid #150e94;
margin-bottom: 50px;
padding: 13px 0;
}
.textbox{
  width: 100%;
  overflow: hidden;
  font-size: 20px;
  padding: 8px 0;
  margin: 8px 0;
  border-bottom: 1px solid #150e94;
}
.textbox i{
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
  font-size: 25px;
  cursor: pointer;
  margin: 12px 0;
}

.formj
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




</style>
</head>



<body>
<div class="login-form">
<h1>login form</h1>


<form action="AServlet" method="post">

<div class="textbox">
<i class="fa fa-user" aria-hidden="true"></i>
<input type="text" name="un" placeholder="User name" required><br>
</div>

<div class="textbox">
<i class="fa fa-lock" aria-hidden="true"></i>
<input type="password" name="ps" placeholder="password" required><br>
</div>

<input class="btn" type="submit" onclick="myFunction()"  name="" value="sign in"><br>
</form>

</div>


<div class="formj">
<form action="index.jsp">
<div >
<input class="btn" type="submit"  name ="" value="<-Back">
</div>
</form>
</div>



<script>
function myFunction() {
  alert("you have successfully login");
}
</script>




</body>
</html>