

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
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 style="color:#41af1d;" >  </h1>

<div style="width:800px; height:600px; padding:20px; text-align:center; border: 10px solid #787878">
<div style="width:750px; height:550px; padding:20px; text-align:center; border: 5px solid #787878">
       <span style="font-size:35px; font-weight:bold">Certificate for COVID-19 Vaccination-1st Dose</span>
       <br><br>
       <span style="font-size:25px"><i>This is to certify that</i></span>
       <br><br>
       <span style="font-size:30px"><b><%=session.getAttribute("udata") %></b></span><br/><br/>
       <span style="font-size:25px"><i>has successfully vaccinated by</i></span> <br/><br/>
       <span style="font-size:30px">First Dose of Vaccine</span> <br/><br/>
       <span style="font-size:20px">Vaccine Name : COVAXIN</b></span> <br/><br/><br/><br/><br/>
       <span style="font-size:25px"><i>Vaccination Center</i></span><br>
                        Career Academy,Indore,Madhya Pradesh
    <br><br>  <span style="font-size:30px">Stay Home / Stay Safe</span>
</div>
</div>
</body>
</html>


<%
}
%>